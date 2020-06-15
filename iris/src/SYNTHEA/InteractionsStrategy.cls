Class SYNTHEA.InteractionsStrategy Extends HS.FHIRServer.Storage.SqlStrategy
{

Parameter StrategyKey As %String = "CustomJson";

Parameter StrategyDesc As %String = "Resources stored in tables as Json text";

Parameter InteractionsClass As %String = "SYNTHEA.Interactions";

Parameter DefaultResourcesTypeName = "Default";

Parameter HasRepo As %Integer = 1;

Parameter ResourceSuperclass As %String = "HS.FHIRServer.Storage.Json.Resource";

Parameter ResourceVersionSuperclass As %String = "HS.FHIRServer.Storage.Json.ResourceVer";

/// A %DynamicObject that contains configuration properties for this instance 
/// (which is both Strategy-Type and MetadataSet specific)
/// The Json strategy configures 4 names for instance-private persistent storage:
/// <br> searchClassesPackage = The package name into which search classes will be generated
/// <br> resourceClassesPackage = The package name into which resource classes will be generated
/// <br> globalRoot = The $name of a global node to be used for instance-private configuration
/// <br> globalTempRoot = The $name of a temporary global node to be used for instance-private configuration.  The
/// data in this node will be reset when the instance is stopped.
Property config As %DynamicObject [ Private ];

/// @API<br>
/// Return a CapabilityStatement metadata resource. The returned content is derived from
/// a strategy-specific means of formulating a CapabilityStatement. An example use of the
/// output might be to store the CapabilityStatement for a given Service.<br>
/// This method should not be confused with the Interactions class LoadMetadata() method,
/// which retrieves the stored CapabilityStatement for the current Service.
Method GetMetadataResource() As %DynamicObject
{
	Return ##class(HS.FHIRServer.Tools.CapabilityTemplate).BuildFull(..InstanceKey)
}

/// @API
/// Returns the table name that stores resources for the specified type
Method GetResourceTable(pResourceType As %String) As %String
{
	Set type = $Select(pResourceType="":..#DefaultResourcesTypeName, 1:pResourceType)
	Set package = ..GetResourceClassesPackage()
 	return $TR(package,".","_")_"."_$S($system.SQL.IsReservedWord(type):$C(34)_type_$C(34), 1:type)
}

/// @API
/// Returns field metadata for a field corresponding to a search parameter, returns $listbuild(fieldName, isCollection,...)
Method GetFieldMetdata(pSearchParam As HS.FHIRServer.SearchParam) As %CacheString
{
	//
	set fieldName = ##class(HS.FHIRServer.Util.FHIRQueryUtils).NormalizeParamName(pSearchParam.name)
	quit $listbuild(fieldName, pSearchParam.isMultiValue)
}

/// @API
/// Returns the table name for the specified type (and optional child table name).  Note, it may be the
/// same as the ResourceTable
Method GetSearchTable(pResourceType As %String, pChildName As %String = "") As %String
{
	Set type = $Select(pResourceType="":..#DefaultResourcesTypeName, 1:pResourceType)
	Set package = ..GetSearchClassesPackage()
	Set base = $TR(package,".","_")
	if pChildName'="" {
		Set base = base _ "_" _ type
		Set type = pChildName 
	}
	set type = $S($system.SQL.IsReservedWord(type):$C(34)_type_$C(34), 1:type)
	return base _ "." _ type
}

/// @API
/// Returns the classname of the persistent object used store resources for the specified type
Method GetResourceClass(pResourceType As %String) As %String [ CodeMode = expression ]
{
..GetResourceClassesPackage() _ "." _ $Select(pResourceType="":..#DefaultResourcesTypeName, 1:pResourceType)
}

/// @API
/// Returns the classname of the persistent object used to index the specified type.  Note, it may be the
/// same as the ResourceClass
Method GetSearchClass(pResourceType As %String) As %String [ CodeMode = expression ]
{
..GetSearchClassesPackage() _ "." _ $Select(pResourceType="":..#DefaultResourcesTypeName, 1:pResourceType)
}

/// @API Creates an instance of the Interactions handler object
Method NewInteractionsInstance() As HS.FHIRServer.API.Interactions
{
	return $classmethod(..#InteractionsClass,"%New", $this)
}

/// Returns the classname of the persistent object used store resources for the specified type
Method GetResourceVersionClass(pResourceType As %String = "") As %String [ CodeMode = expression ]
{
..GetResourceClassesPackage() _ "." _ $Select(pResourceType="":..#DefaultResourcesTypeName, 1:pResourceType)_"Ver"
}

/// Returns the classname of the persistent object used store resources for the specified type
Method GetResourceVersionTable(pResourceType As %String = "") As %String
{
	Set type = $Select(pResourceType="":..#DefaultResourcesTypeName, 1:pResourceType)_"Ver"
	Set package = ..GetResourceClassesPackage()
 	return $TR(package,".","_") _ "." _ type
}

/// Create the schema objects for this Strategy
Method Create(ByRef options)
{
	#dim builder as SYNTHEA.SearchTableBuilder = ##class(SYNTHEA.SearchTableBuilder).%New($this)
	if $G(options("createIndexOnly")) '= 1 {
		Do builder.GenResourceTables()
	}
	Do builder.GenSearchTablesFromSchema()
	// Add permissions to the new tables
	do ##class(HS.HC.Util.Installer).SetupPermissions($namespace, "")
	w !,"Tables built",!
	
	Do ##class(HS.FHIRServer.ServiceAdmin).SetInstanceEnabled(..InstanceKey, 1)
	if $Get(options("restURL")) '= "" {
		// Remove admin data for the endpoint being removed
		Do ##class(HS.FHIRServer.ServiceAdmin).SetInstanceIdForEndpoint(options("restURL"), ..InstanceKey)
	}
}

/// @API Decommission the service.  This method detaches a service from any REST endpoints, making it inaccessiable for
/// client operations.  The default for the JSON Respository is to delete all data when the service is decommissioned.
Method Decommission(ByRef options)
{
	Do ##class(HS.FHIRServer.ServiceAdmin).DecommissionInstance(..InstanceKey)
	Set options = 0
	Do ..Delete(options)
}

/// Delete the schema (was ResetFHIRData)
/// options("deleteDataOnly") = 0/1
/// options("verbose") = 0/1
Method Delete(ByRef options)
{
	Set verbose = $Get(options("verbose"), 0)
	try {
		TSTART
		// Clear all tables in the Index package
		// flag "e" = Delete Extent
		set tFlags = "e"
		
		if $G(options("deleteDataOnly")) {
			for packageName = ..GetResourceClassesPackage(), ..GetSearchClassesPackage() {
				Set tQuery = "SELECT ID FROM %Dictionary.CompiledClass where ID %StartsWith ?"
				Set tStatement = ##class(%SQL.Statement).%New()
				Set tSC = tStatement.%Prepare(tQuery)
				If $$$ISERR(tSC) {
					Set tText = "%Prepare failed for SQL query for search table reset: "_$System.Status.GetErrorText(tSC)
					If verbose {
						Write !,tText
					}
					$$$ThrowFHIR($$$GeneralError, tText)
				}
				Set tResultSet = tStatement.%Execute(packageName _ ".")
				
				While tResultSet.%Next() {
					Set tClassName = tResultSet.ID
					Set tSC = $ClassMethod(tClassName, "%DeleteExtent")
					If $$$ISERR(tSC) {
						Set tText = "Error in "_tClassName_".%DeleteExtent(): "_$System.Status.GetErrorText(tSC)
						If verbose {
							Write !,tText
						}
						$$$ThrowFHIR($$$GeneralError, tText)
					}
					
				}
			}
			//If ('tKilled)&&(pVerbose) Write !,"No search table data to clean up"
			
		} else {
			/// We delete all classes and data
			// We are deleting the search classes as well as all data
			set tSC = $system.OBJ.DeletePackage(..GetSearchClassesPackage(), tFlags)
			$$$ThrowOnError(tSC)
				
			if $G(options("deleteIndexOnly")) '= 1 {
				// Delete the Resource Data
				set tSC = $system.OBJ.DeletePackage(..GetResourceClassesPackage(), tFlags)
				
				// Remove any data stored in globals
				kill @..GetGlobalRoot()
				kill @..GetGlobalTempRoot()
			}
		}		
		Do ##class(HS.FHIRServer.Service).InvalidateInstances(..InstanceKey)
		
		// Delete all of our data
		TCOMMIT
		
	}
	catch (ex) { 
		// Finally
		TROLLBACK 1
		w ex.AsStatus(),!
		throw ex
	}
}

/// Handle changes to the schema structure 
/// 	options("searchRebuildChanged") = 0/1
/// 	options("searchRebuildAll") = 0/1
/// 	options("searchReindexAll") = 0/1
/// 	options("verbose") = 0/1
/// 	options("changed") - Multidimensional variable containing any updates that need to be applied to the schema
Method Update(ByRef options)
{
	set options("verbose")=1
	Set repo = ..NewInteractionsInstance()
	try {
		Set reindex = 0
		set reindexClause = ""
		TSTART
		if $G(options("searchRebuildChanged")) = 1 {
			//Only update search tables that have changed
			merge changed = options("changed")
			#dim builder as HS.FHIRServer.Storage.SearchTableBuilder = ##class(HS.FHIRServer.Storage.SearchTableBuilder).%New($this)
			set resourceTypes = builder.UpdateSearchTablesFromSchema(.changed)
			
			//Delete existing index data for the relevant resource types
			for i=1:1:$listlength(resourceTypes) {
				set resourceType = $listget(resourceTypes, i)
				
				Set classname = ..GetSearchClass($Select(resourceType="Resource":"", 1:resourceType))
				$$$ThrowOnError( $classmethod(classname, "%DeleteExtent", , .deletecount, .instancecount, , .errorLog) )
				if instancecount>0 {
					w deletecount," of ",instancecount," resources deleted from ", classname,!
				}
			}
			
			//Format the reindexer to only reindex tables we've just emptied
			Set reindexClause = "AND ResourceType %inlist ?"
			Set tSQLParams = 0
			set tSQLParams($i(tSQLParams)) = resourceTypes
			set reindex = 1
		} elseif $G(options("searchRebuildAll"))= 1 {
			// Delete any previous Index Classes and Data
			Set delOptions("deleteIndexOnly") = 1
			Do ..Delete(.delOptions)
			
			// Create a new set
			set createOptions("createIndexOnly") = 1
			Do ..Create(.createOptions)
			set reindex = 1
		} elseif $G(options("searchReindexAll")) = 1 {
			// This is a request to JUST remove index data but leave the structure.
			// It is used for re-indexing
			Set schema = ..schema
			Set tResourceType = ""
			for {
				Set tResourceType = $Order(schema.searchParams(tResourceType) )
				Quit:tResourceType=""
				
				Set classname = ..GetSearchClass($Select(tResourceType="Resource":"", 1:tResourceType))
				$$$ThrowOnError( $classmethod(classname, "%DeleteExtent", , .deletecount, .instancecount, , .errorLog) )
				if instancecount>0 {
					w deletecount," of ",instancecount," resources deleted from ", classname,!
				}
			}
			set reindex = 1
		}
		if reindex {
			// Now loop through all resources and index each one
			Set rsrcTableName = ..GetResourceTable()
			
			//Allow optional where clause to narrow the query
			Set tSQL = "SELECT Key FROM " _ rsrcTableName _ " Where Deleted=0 " _ reindexClause
			if '$data(tSQLParams) {
				Set tSQLParams = 0
			}
			
			#dim tResult as %SQL.StatementResult = repo.runQuery(tSQL, .tSQLParams)
			
			set count = 0
			w "verbose: ",options("verbose"),!
			while tResult.%Next() {
				Set key = tResult.%GetData(1)
				Set obj = $classmethod(..GetResourceClass(""), "KeyIdxOpen", key)
				w:options("verbose") "Got obj from key: ", key, " -> ", obj,!
				if obj="" {
					w "No object found!", !
					Continue
				}
				Set json = obj.ResourceObject
				Do repo.IndexResource(obj)
				set count = count+1
			}
			w "Visited ",count," resources",!
		}
		TCOMMIT
	} catch (ex) { 
		// Finally
		TROLLBACK 1
		w ex.AsStatus(),!
		throw ex
	}
}

Method isBitmap(pSearchParam As HS.FHIRServer.SearchParam)
{
	#dim tAllowedElementTypes = ",CodeableConcept,Coding,code,boolean,"
 	#dim tNumConceptsMax = 117 //??

	if $ll(pSearchParam.datatypes)>1 quit 0
	if (pSearchParam.name="address-state")||(pSearchParam.name="address-country") quit 1
	if (pSearchParam.type'="token") quit 0
	set dt=$lg(pSearchParam.datatypes)
	if (tAllowedElementTypes '[ (","_dt_",")) quit 0
	if ..schema.GetValueSetCardinality(pSearchParam.resourceType,pSearchParam.expression)=-1 quit 0
	if ..schema.GetValueSetCardinality(pSearchParam.resourceType,pSearchParam.expression)>tNumConceptsMax quit 0
	quit 1
}

Method MigrateFromPre2020(ByRef options) As %Integer
{
	Set interactions = ..NewInteractionsInstance()
	Set fromStorageClass = $Get(options("storageClass"), "HS.FHIR.vSTU3.Repository.Resource.Abstract")

	Set fromTableName = $translate($piece(fromStorageClass, ".", 1, *-1), ".", "_") _ "." _ $piece(fromStorageClass,".",*)
	Set toTableName = ..GetResourceTable("")
	Set rsrcClassname = ..GetResourceClass("")
	Set versionClassname = ..GetResourceVersionClass("")
	#dim toObj as HS.FHRServer.Storage.Json.ResourceVer
	
	Set queryString = "SELECT * FROM "_fromTableName _ " order by ResourceType asc, ResourceId asc, VersionId desc"
	w "Cloning from Table: ",fromTableName,!
	#dim tResult as %SQL.StatementResult = ##class(%SQL.Statement).%ExecDirect(,queryString)
	try {
		Set prevKey = ""
			TSTART
		while tResult.%Next() {
			Set resourceType = tResult.%Get("ResourceType")
			Set resourceId = tResult.%Get("ResourceId")
			Set key = $$$BuildRsrcKey(resourceType, resourceId)
			
			if key = prevKey {
				// A lower version of the same resource, include version # in the key
				Set toObj = $classmethod(versionClassname, "%New")
				// w "ver: ",key,!
			} else {
				Set toObj = $classmethod(rsrcClassname, "%New")
				// Only the current resources maintain compartment associations
				Set list = tResult.%Get("Compartments")
				for cix=1:1:$LL(list) {
					Do toObj.Compartments.Insert($LG(list, cix))	
				}
				// w "cur: ",key,!
			}
			Set toObj.Key = key
			Set toObj.ResourceType = resourceType
			Set toObj.ResourceId = resourceId
			
			for name = "VersionId", "Deleted", "LastModified", "Verb", "Format", "ResourceString" {
				Set $Property(toObj, name) = tResult.%Get(name)
			}
			Set inStream = tResult.%Get("ResourceStream")
			if inStream '= "" {
				Set $Property(toObj, name) = inStream
			}
			try {
				$$$ThrowOnError( toObj.%Save()) 
				if key '= prevKey {
					// Index current versions only
					Do interactions.IndexResource(toObj)
				}
				w "Saved: ", key, " | ", toObj.Key, !
			} catch exx {
				w "Save Failed: ", key, " | ", toObj.Key, $system.Status.DisplayError(exx.AsStatus()), !			
			}
			Set prevKey = key
			
		}
		TCOMMIT
	} catch ex {
		TROLLBACK 1
		throw ex
	}
	w "Converted ",tResult.%ROWCOUNT," objects",!
	
	return tResult.%ROWCOUNT
}

}
