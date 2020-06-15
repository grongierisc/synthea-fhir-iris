Include HS.FHIRServer

Class SYNTHEA.Interactions Extends HS.FHIRServer.Storage.Search
{

Parameter OperationHandlerClass As %String = "HS.FHIRServer.Storage.BuiltInOperations";

Property metadata As %DynamicObject;

Property metadataTime As %String;

Property strategy As HS.FHIRServer.Storage.SqlStrategy;

Method %OnNew(pStrategy As HS.FHIRServer.Storage.SqlStrategy) As %Status
{
	Set ..strategy = pStrategy
	return $$$OK
}

/// Factory method for instantiating an Indexer.  This method may be overridden by the concrete Resource class
/// if it requires a version-specific implementation
Method IndexResource(pStorageObject As HS.FHIRServer.Storage.Json.Resource) As HS.FHIRServer.Storage.Indexer [ Internal ]
{
	#dim indexer as HS.FHIRServer.Storage.Indexer = ##class(HS.FHIRServer.Storage.Indexer).%New(pStorageObject, ..strategy)
	Do indexer.IndexValues()
}

Method SetMetadata(metadata As %DynamicObject)
{
	// First Validate the metadata
	// Validate the bundle and throw on error
	Set schema = ..strategy.schema
	set validator = $classmethod(..#ResourceValidatorClass, "%New", schema)
	Do validator.ValidateResource(metadata)
	
	
	
	// Update the resource's 'meta' object
	Set GLOBAL = ..strategy.GetGlobalRoot()
	Set newVersion = 1
	if $D(	@GLOBAL@("capability"), oldMetadata) {
		set newVersion = 1 + ##class(%DynamicObject).%FromJSON(oldMetadata).meta.versionId	
	}

	// Update the 'meta' property of the CapabilityStatement
	set metaObj = $$$NewJSONObject
	Set metaObj.lastUpdated = $ZDT($H,3,7)
	Set metaObj.versionId = newVersion
	Set metadata.meta = metaObj
	
	// Now store it under our assigned Global node
	Set GLOBAL = ..strategy.GetGlobalRoot()
	Set @GLOBAL@("capability") = metadata.%ToJSON()
	Set @GLOBAL@("capability", "time") = metaObj.lastUpdated
	
	// Invalidate Instances cached by %ZHSLIB.Context.Manager.  This causes the change
	// to take immediate effect
	Do ##class(HS.FHIRServer.Service).InvalidateInstances(..strategy.InstanceKey)
}

Method LoadMetadata() As %DynamicObject
{
	Set GLOBAL = ..strategy.GetGlobalRoot()
	if $D(@GLOBAL@("capability"), metadata) < 10 {
		$$$ThrowFHIR($$$HSFHIRErrMetadataNotConfigured,$$$OutcomeIs(503, "fatal", "transient"))
	}
	if @GLOBAL@("capability", "time") '= ..metadataTime {
		Set ..metadata = ##class(%DynamicObject).%FromJSON(metadata)
		Set ..metadataTime = @GLOBAL@("capability", "time")
	}
	return ..metadata
}

Method FindResourceMeta(pResourceType As %String, pResourceId As %String, pVersionId As %String = "") As %List
{
	Set metaList = ""
	Set rsrcKey = $$$BuildRsrcKey(pResourceType, pResourceId)
	// If pVersionId is null, use the version ID of the current version
	Set tSQL = "Select VersionId, Deleted, LastModified, Verb from " _ ..strategy.GetResourceTable(pResourceType) _ " where Key=?"
	Set tSQLParams = 0
	Set tSQLParams($I(tSQLParams)) = rsrcKey
	Set result = ..runQuery(tSQL, .tSQLParams)
	Set isCurrentVersion = 1
	Set found = 0
	if result.%Next() {
		// We have at least one version of the resource, assume we've found the requested version (or current if no Version specified)
		Set found = 1
		if (pVersionId '= "") && (result.%Get("VersionId") '= pVersionId) {
			Set tSQL = "Select VersionId, Deleted, LastModified, Verb from " _ ..strategy.GetResourceVersionTable(pResourceType)
			Set tSQL = tSQL _ " where ResourceType=? AND ResourceId=? AND VersionId=?"
			Set tSQLParams = 0
			Set tSQLParams($I(tSQLParams)) = pResourceType
			Set tSQLParams($I(tSQLParams)) = pResourceId
			Set tSQLParams($I(tSQLParams)) = pVersionId
			
			Set result = ..runQuery(tSQL, .tSQLParams)
			Set isCurrentVersion = 0
			Set found = result.%Next()
		}
		
	}
	if found {
		Set metaList = $LB(rsrcKey, result.%Get("VersionId"), result.%Get("Deleted"), isCurrentVersion, result.%Get("LastModified"), result.%Get("Verb"))
	}
	return metaList
}

Method FindStorageObject(pResourceType As %String, pResourceId As %String, pVersionId As %String = "", Output tSC As %Status = "") As HS.FHIRServer.Storage.Json.Resource
{
#def1arg callStorageMethod(%arglist) $classmethod(storageClass,%arglist)
	Set resourceClass = ..strategy.GetResourceClass(pResourceType)
	Set resourceVerClass = ..strategy.GetResourceVersionClass(pResourceType)
	Set rsrcKey = $$$BuildRsrcKey(pResourceType, pResourceId)
	Set obj = ""
	if $classmethod(resourceClass, "KeyIdxExists", rsrcKey) {
		// We have at least one version.  Get it first ..
		Set obj = $classmethod(resourceClass, "KeyIdxOpen", $$$BuildRsrcKey(pResourceType, pResourceId), , .tSC )
		// There is a current object, is this the one that was asked for?
		if (pVersionId '= "") && (obj.VersionId '= pVersionId) {
			// If not, go get the requested version
			Set obj = $classmethod(resourceVerClass, "TypeIdVerIdxOpen", pResourceType, pResourceId, pVersionId)
		}
	}
	return obj
}

Method GetStorageObject(pResourceType As %String, pResourceId As %String, pVersionId As %String = "") As HS.FHIRServer.Storage.Json.Resource [ Internal ]
{
	#dim storageObject As HS.FHIRServer.Storage.Json.Resource = ..FindStorageObject(pResourceType, pResourceId, pVersionId, .tSC)
	if (storageObject = "") {
		if (pVersionId = "") {
			$$$ThrowFHIR($$$HSFHIRErrResourceNotFound, pResourceType, pResourceId,$$$OutcomeNotFound)
		} else {
			$$$ThrowFHIR($$$HSFHIRErrResourceVersionNotFound, pResourceType , pResourceId , pVersionId, $$$HttpOnlyResponse(404))
		}
	}
	return storageObject
}

Method FindResourceObject(pResourceType As %String, pResourceId As %String, pVersionId As %String = "") As %DynamicObject
{
	#dim storageObject As HS.FHIRServer.Storage.Json.Resource = ..FindStorageObject(pResourceType, pResourceId, pVersionId)
	return $Select(storageObject="":storageObject, 1:storageObject.ResourceObject)
}

Method GetVersionList(pResourceType As %String, pResourceId As %String, Output pCurrentVersionId) As %List
{
	Set list = ""
	Set pCurrentVersionId = ""
	#dim currentObj as HS.FHIRServer.Storage.Json.Resource = ..FindStorageObject(pResourceType, pResourceId) 
	if currentObj {
		Set pCurrentVersionId = currentObj.VersionId
		Set list = $LB(pCurrentVersionId)
	}
	// Now get entries in the RsrcVersion table
	Set metaList = ""
	Set rsrcKey = $$$BuildRsrcKey(pResourceType, pResourceId)
	// If pVersionId is null, use the version ID of the current version
	Set tSQL = "Select VersionId from " _ ..strategy.GetResourceVersionTable(pResourceType) _ " where ResourceType=? and ResourceId=? order by VersionId DESC"
	Set tSQLParams = 0
	Set tSQLParams($I(tSQLParams)) = pResourceType
	Set tSQLParams($I(tSQLParams)) = pResourceId
	Set result = ..runQuery(tSQL, .tSQLParams)

	Set isCurrentVersion = 1
	Set found = 0
	while result.%Next() {
		Set $List(list,*+1) = result.%GetData(1)
	}
	return list
}

Method RawRead(pResourceType As %String, pResourceId As %String, pVersionId As %String = "") As %DynamicObject
{
	#dim storageObject As HS.FHIRServer.Storage.Json.Resource = ..GetStorageObject(pResourceType, pResourceId, pVersionId)
	if (storageObject.Deleted) {
		$$$ThrowFHIR($$$HSFHIRErrResourceWasDeleted, pResourceType , pResourceId , pVersionId, $$$HttpOnlyResponse(410))
	}
	return storageObject.ResourceObject
}

Method Read(pResourceType As %String, pResourceId As %String, pVersionId As %String = "") As %DynamicObject
{
	
	
	return ..RawRead(pResourceType , pResourceId , pVersionId )
}

Method Add(pResourceObj As %DynamicObject, pResourceIdToAssign As %String = "", pHttpMethod = "POST") As %String
{
	// Set the id into the resource.  It may be empty in which case, AddVersion will assign one.
	set pResourceObj.id = pResourceIdToAssign
	
	try {

		Set pStorageObject = ..AddVersion("", pHttpMethod, pResourceObj)
		Do ..AddToSql(pResourceObj)
		Do ..IndexResource(pStorageObject)
		kill pStorageObject
		
	} catch ex {
		
		throw ex
		
	}
	return pResourceObj.id
}

ClassMethod AddToSql(pResourceObj As HS.FHIRServer.Storage.Json.Resource) As %Status
{
	set version = "vR4"
	set basePkg = "HS.FHIR."_version_".Model.Resource"
	set ^TEST = $Increment(^TEST,1)
	set ^TEST(^TEST) = basePkg
	set class = basePkg_"."_pResourceObj.resourceType
	set ^TEST(^TEST) = class
	set ^TEST(class,"obj") = pResourceObj.%ToJSON()
	set sql = $classmethod(class, "FromJSONHelper", pResourceObj,version)

	set sc = sql.%Save()

	set ^TEST(class,"sc") = sc

	Return $$$OK
}

/// Returns VersionId for the "deleted" version
Method Delete(pResourceType As %String, pResourceId As %String) As %String
{
#def1arg callStorageMethod(%arglist) $classmethod(storageClass,%arglist)
	#dim storageToDelete as HS.FHIRServer.Storage.Json.Resource = ..FindStorageObject(pResourceType, pResourceId)
	if (storageToDelete = "") {
		Return ""
	}
	
	// If the resource is already marked as deleted, do nothing (silently).
	If (storageToDelete.Deleted) {
		Return ""
	}
	
	// Deprecate the last version of the resource and save the new, "deleted" version.
	// Do this in a transaction so an error in either step does not leave the database in some
	// unpredictable state.
	
	try {
		Set pStorageObject = ..AddVersion(storageToDelete, "DELETE", "")
		kill pStorageObject
		
	} catch tEx {
		
		throw tEx
	}
	return storageToDelete.VersionId
}

/// @API
/// This method will remove the resource and all versions from the database
/// @Input pResourceType  The 'resourceType' of the resource to be deleted.
/// @Input pResourceId The ID of the resource to be deleted.
/// @Input pVersions Specification of which versions to delete as follows:
/// <br> "" - The current version only
/// <br> "*" - All Versions
/// <br> $LB(vid, ...) - A list of version Id's to delete
/// @Throws The implementation must report errors via $$$ThrowStatus.
Method HardDelete(pResourceType As %String, pResourceId As %String, pVersions As %String)
{
	Set currentOnly = pVersions = ""
	Set deleteAll = pVersions = "*"
	Set deleteList = $ListValid(pVersions)
	if '(currentOnly || deleteAll || deleteList ) {
		$$$ThrowFHIR($$$HSFHIRErrAPIContractViolation, "pVersions must be """""", "*", or a valid %List")	
	}
	
	try {
		Set rsrcKey = $$$BuildRsrcKey(pResourceType, pResourceId)
		// If pVersionId is null, use the version ID of the current version
		Set tSQLParams = 0
		Set tSQL = "Delete from " _ ..strategy.GetResourceTable(pResourceType) _ " where Key=?"
		Set tSQLParams($I(tSQLParams)) = rsrcKey
		if deleteList {
			// Delete the current unconditionally UNLESS a list of versions is specified.
			// In this case, we add the matching criterion
			Set tSQL = tSQL _ " AND VersionId %INLIST ?"	
			Set tSQLParams($I(tSQLParams)) = pVersions
		}
		Set result = ..runQuery(tSQL, .tSQLParams)
		
		
		if 'currentOnly {
			// Don't touch version table if just deleting the current version
			Set tSQL = "Delete from " _ ..strategy.GetResourceVersionTable(pResourceType)
			Set tSQLParams = 0
			Set tSQL = tSQL _ " where ResourceType=? AND ResourceId=?"
			Set tSQLParams($I(tSQLParams)) = pResourceType
			Set tSQLParams($I(tSQLParams)) = pResourceId
			if deleteList {
				// Specify the specific versions to delete
				Set tSQL = tSQL _ " AND VersionId %INLIST ?"	
				Set tSQLParams($I(tSQLParams)) = pVersions
			}
			Set result = ..runQuery(tSQL, .tSQLParams)
		}
		
	} catch ex {
		
		throw ex	
	}
}

Method Update(pResourceObj As %DynamicObject) As %String
{
#def1arg callStorageMethod(%arglist) $classmethod(storageClass,%arglist)

	Set storageClass = ..strategy.GetResourceClass(pResourceObj.resourceType)
	#dim currentStorage as HS.FHIRServer.Storage.Json.Resource = ..GetStorageObject(pResourceObj.resourceType, pResourceObj.id)

	#dim updatedStorage As HS.FHIRServer.Storage.Json.Resource = $$$callStorageMethod("%New")
	set updatedStorage.Verb = "PUT"


	// TODO: Is this ever used ... and what is it for?
	// $$$ThrowOnError( tRepoResource.OnBeforeMatch() )
	
	// Check if the resource already exists, and if so, deprecate the current version.
	// The deprecation of the existing resource and the save of the new one need to
	//  happen inside a transaction so that an error while saving the new one does not
	//  leave the original resource as deprecated.
	// The initial transaction level might not be 0, if this is part of a TRANSACTION interaction
	
	try {
		Set pStorageObject = ..AddVersion(currentStorage, "PUT", pResourceObj)
		Do ..IndexResource(pStorageObject)
		kill pStorageObject
		
	} catch tEx {
		
		throw tEx
	}
	return pResourceObj.id
}

Method History(pResourceType As %String, pResourceId As %String, pSince As %String, pAt As %String) As HS.FHIRServer.Util.SearchResult
{
	Set resourceVerClass = ..strategy.GetResourceVersionClass(pResourceType)

	#dim tResultSet as HS.FHIRServer.Util.SearchResult = ##class(HS.FHIRServer.Util.SearchResult).Create()
	// if the resource doesn't exist (not even deleted), return status 404 Not Found
	#dim storageObj as HS.FHIRServer.Storage.Json.ResourceVer

	Set storageObj = ..GetStorageObject(pResourceType, pResourceId)
	Set versionId = storageObj.VersionId
	
	while versionId >= 1  {
		// Handle "_since" parameter
		// We are processing the versions in reverse chronological order, so once we find one with
		//  LastModified earlier than "_since", quit.
		// Note this correctly handles the case where pSince="".
		If (pSince ] storageObj.LastModified) { 
			Quit 
		}
		
		Do tResultSet.AddRow(storageObj.Key, storageObj.ResourceType, storageObj.ResourceId, storageObj.VersionId, "match", storageObj.Verb)
		
		// Get Info on the next version present in the Version table
		for {
			Set versionId = versionId - 1
			Quit:(versionId<1)
			Set storageObj = $classmethod(resourceVerClass, "TypeIdVerIdxOpen", pResourceType, pResourceId, versionId)
			Quit:$IsObject(storageObj)
		}
	}
	Do tResultSet.%SetIterator(0)
	return tResultSet
}

/// Adds a new version to the repository 
/// if pCurrentStorageObj is empty, this is a new resource to be added
/// if pNewResource is empty, this is a delete of pCurrentStorageObj
/// Otherwise it is an update
Method AddVersion(pCurrentStorageObj As HS.FHIRServer.Storage.Json.Resource, pChangeVerb As %String, pNewResource As %DynamicObject) As HS.FHIRServer.Storage.Json.Resource [ Internal ]
{
	Set currentStorage = pCurrentStorageObj
	Set tLastVersion = 0
	if (currentStorage = "" ) {
		// This is a new resource
		Set currentStorage = $classmethod(..strategy.GetResourceClass(pNewResource.resourceType), "%New")
		Set currentStorage.VersionId = 0
		Set currentStorage.ResourceType = pNewResource.resourceType
		Set currentStorage.Format = $$$FHIRContentCodeJSON
		if pNewResource.id = "" {
			// We have to assign an ID to the resource
			// First assign a transient id so that the key field is non-null
			Set currentStorage.ResourceId = "Adding"_$J
			Set currentStorage.Key = $$$BuildRsrcKey(pNewResource.resourceType, currentStorage.ResourceId)
			$$$ThrowOnError( currentStorage.%Save()) 
			Set pNewResource.id = currentStorage.%Id()
			$$$FSLog("Assigned new ResourceId = "_pNewResource.id)
		}
		Set currentStorage.ResourceId = pNewResource.id
		Set currentStorage.Key = $$$BuildRsrcKey(pNewResource.resourceType, currentStorage.ResourceId)

	} else {
		Set versionStorage = $classmethod(..strategy.GetResourceVersionClass(currentStorage.ResourceType), "%New")

		// Populate the new Storage object's key fields
		Set versionStorage.Key = currentStorage.Key
		Set versionStorage.ResourceType = currentStorage.ResourceType
		Set versionStorage.ResourceId = currentStorage.ResourceId
		Set versionStorage.VersionId = currentStorage.VersionId
		Set versionStorage.LastModified = currentStorage.LastModified
		Set versionStorage.Verb = currentStorage.Verb
		Set versionStorage.Format = currentStorage.Format
		If ('$IsObject(currentStorage.ResourceStream))||(currentStorage.ResourceStream.Size=0) {
			Set versionStorage.ResourceString = currentStorage.ResourceString
		} Else {
			Do versionStorage.ResourceStream.CopyFrom(currentStorage.ResourceStream)			
		}
		$$$ThrowOnError( versionStorage.%Save()) 

		
		// Remove entries from search tables.
		// First check for the existence of the search table, then a row corresponding to this resource in that table
		Set searchClass = ..strategy.GetSearchClass(currentStorage.ResourceType)
		Set allSearchClass = ..strategy.GetSearchClass("")
		
		for tClassname = searchClass,allSearchClass {
			if ($$$comClassDefined(tClassname)) && ($CLASSMETHOD(tClassname, "KeyIdxExists", currentStorage.Key, .rowObjectId)) {
				$$$ThrowOnError( $CLASSMETHOD(tClassname, "%DeleteId", rowObjectId)) 
			}
		}
	}
	
		// Bump the Version Number
	Set currentStorage.VersionId = currentStorage.VersionId+1
	Set currentStorage.LastModified =  $ZDT($H,3,7) // $ZDT($ZTS,3,7,2)
	Set currentStorage.Verb = pChangeVerb
	if (pNewResource = "") {
		// No JSON means the new storage object is flagged as deleted
		Set currentStorage.Deleted = 1
	} else {
		// This could be a new resource or an update of a deleted resource
		Set currentStorage.Deleted = 0
		
		// Get the JSON rendering, we will need to update it
		if (pNewResource.meta = "") {
			Set pNewResource.meta = $$$NewJSONObject
		}
		Set pNewResource.meta.lastUpdated = currentStorage.LastModified
		Do pNewResource.meta.%Set("versionId", currentStorage.VersionId, "string")
		Set compartmentList = ..strategy.schema.BuildCompartmentList(pNewResource)
		// Add Compartment metadata
		// Manually clear Compartments and CompartmentsIdx
		do currentStorage.Compartments.Clear()
		for cix=1:1:$LL(compartmentList) {
			Do currentStorage.Compartments.Insert($LG(compartmentList, cix))	
		}
		
		set tTempStream = ##class(%Stream.TmpCharacter).%New()
		// Write the JSON to a stream (so we can see its size)
		Do pNewResource.%ToJSON(tTempStream)
		Do tTempStream.Rewind()

		set %maxlocallength = $Get(%maxlocallength,$$$MaxLocalLength)
		set currentStorage.ResourceString = ""
		do currentStorage.ResourceStream.Clear()
		if tTempStream.Size'>%maxlocallength {
			while 'tTempStream.AtEnd {
				// Reading the stream in 32767 chunks (which is the default) is faster
				// than reading it all at once, when dealing with very long streams.
				Set currentStorage.ResourceString = currentStorage.ResourceString _ tTempStream.Read()
			}
		} else {
			$$$ThrowOnError( currentStorage.ResourceStream.CopyFrom(tTempStream)) 
		}
	}
	$$$ThrowOnError( currentStorage.%Save())
	
	return currentStorage
}

}
