Include HS.FHIRServer

Class HS.FHIRServer.DefaultBundleProcessor Extends HS.FHIRServer.Util.Bundle
{

/// Class that provides the FHIR Bundle resource validation logic for this Bundle processing
/// class. The class is intended to handle Bundle-specific validation, i.e., the rules
/// applying to transaction, batch, document, and message Bundles.
Parameter BundleValidatorClass As %String = "HS.FHIRServer.Util.BundleValidator";

/// Context layout
/// ctx("entry")                   : Count of entries
/// ctx("entry", n)                : The n-th input bundle entry
/// ctx("entry", n, "response")    : The response bundle entry for the n-th input bundle entry
/// ctx("entry", n, "RefKey")      : The temporary id (used only for POST entries) to allow references from other
///                                :  resources in the bundle. Used only for transaction interactions
/// ctx("ByRefKey", refkey)        : The actual id associated with the refkey.  Used to resolve refernces to this resource.
/// ctx("ByRefKey", refkey, "entry") : The entry Index associated with the refkey.
///                                :  resources in the bundle. Used only for transaction interactions
/// ctx("ByRefKey", refkey, "ref", targetRefKey) : The Reference object (%DynamicObject) referring to the target Key
///                                :  Used only for transaction interactions to resolve dependencies
/// ctx("ByMethod", method)        : The count of operations to execute for the specified method
/// ctx("ByMethod", method, n)     : The entry Index of the n-th operation to execute for the specified method
ClassMethod ProcessBundle(pService As HS.FHIRServer.API.Service, pRequest As HS.FHIRServer.API.Data.Request, pResponse As HS.FHIRServer.API.Data.Response)
{
	// Transaction Processing:
	//	1. Map 'fullUrl' -> entry# for each POST entry
	//	2. Visit all references, capture:
	//		References that are "search urls"
	//		References the target one of the 'POST' entry fullUrl values
	//	3. Resolve the search urls to resource references
	//  4. Resolve references for each POST result
	//	5. execute other operations and return result.
	Set tSC = $$$OK

	#dim bundle as %DynamicObject = pRequest.Json
	
	if bundle="" {
		$$$ThrowFHIR($$$HSFHIRErrAPIContractViolation, "request.Json")
	}
	
	// Validate the bundle and throw on error
	Do $classmethod(..#BundleValidatorClass, "ValidateBundle", bundle, pService.Schema.FHIRVersion)
	
	// Extract the bundle type
	Set tBundleType = bundle.type
	If (tBundleType="transaction") {
		Set isTransaction = 1
	} elseif (tBundleType="batch") {
		Set isTransaction = 0
	} else {
		$$$ThrowFHIR($$$HSFHIRErrInvalidBundleTypeForTransaction, tBundleType, $$$OutcomeIs(400, "error", "invalid"))
	}


	// Populate the Context object with the entries
	Set visitContext("entry") = 0
	Set iter = bundle.entry.%GetIterator()
	while iter.%GetNext(.subscr, .entryObj) {
		// Append to the Entry List
		Set iEntry = $I(visitContext("entry"))
		Set visitContext("entry", iEntry) = entryObj
		Set reqObj = entryObj.request
		Set rsrcObj = entryObj.resource
		
		// Append to the ByMethod list
		Set methodIndex = $I(visitContext("ByMethod", reqObj.method))
		Set visitContext("ByMethod", reqObj.method, methodIndex) = iEntry

		// If the entry is a POST and has a fullUrl, capture it for reference resolution
		// after the entry is created, we will replace the fullUrl value with the actual resource ID
		if isTransaction {
			if (reqObj.method  = "POST") {
				// Grab the UUID if the fullUrl is specified
				Set referenceKey = ..ExtractUUID(entryObj.fullUrl)
				if referenceKey '= "" {
					// Save the reference Key with the entry, so we can resolve during POST
					Set visitContext("entry", iEntry, "RefKey") = referenceKey
					// This will become the resolved id when the POST is executed
					Set visitContext("ByRefKey", referenceKey) = ""
					// Save which entry the referenceKey refers to
					Set visitContext("ByRefKey", referenceKey, "entry") = iEntry
				} else {
					// DEVNOTE: Is this a validation error for the bundle?
				}
				//w "Key for ",iEntry,": ",entryObj.fullUrl," is ",referenceKey,!
			}
		}
	}
	
	// Now for each POST'd resource, collect the internal references and ensure they are present
	// Prepare Visit Context for reference walking
	Set visitContext("schema") = pService.Schema
	Set visitContext("callbackClass") = $classname()
	Set visitContext("callbackMethod") = "BuildDependencyCallback"
	set refKey = ""
	for {
		Set refKey = $Order(visitContext("ByRefKey", refKey))
		Quit:(refKey="")

		Set entryId = visitContext("ByRefKey", refKey, "entry")
		Set entryObj = visitContext("entry", entryId)
		Set visitContext("visiting") = $LB(entryId, refKey)

				
		Do ##class(HS.FHIRServer.Util.ReferenceVisitor).VisitAll(entryObj.resource, .visitContext)
	}

	// Now build the POST order based on the dependencies .... Error if circular references exist
	set refKey = ""
	Set postContext("list") = 0
	Set count = 0
	for {
		Set refKey = $Order(visitContext("ByRefKey", refKey))
		Quit:(refKey="")
		
		Do ..AddToPostOrder(refKey, .visitContext, .postContext)
		Set count = count + 1
	}
	// Update the POST requests to follow the order derived based on dependencies
	kill visitContext("ByMethod", "POST")
	Merge visitContext("ByMethod", "POST") = postContext("list")
	kill postContext

	// More to do
	If (tBundleType="transaction") || (tBundleType="batch") {
		Do ..ExecuteBundle(pService, pRequest, pResponse, tBundleType, .visitContext)
	} else {
		$$$ThrowFHIR($$$HSFHIRErrInvalidBundleTypeForTransaction, tBundleType, $$$OutcomeIs(400, "error", "invalid"))
	}
}

ClassMethod BuildDependencyCallback(ByRef visitContext, pRefObj As %DynamicObject)
{
	// This is called for each reference FROM a resource to be POST'ed.
	Set infoList = visitContext("visiting")
	Set sourceRefKey =  $LG(infoList,2)
	// Get the reference and check to see if it is a UUID
	Set tRefReference = pRefObj.reference
	Set uuid = ..ExtractUUID(tRefReference)
	if (uuid '= "") {
		if '$D(visitContext("ByRefKey", uuid)) {
			$$$ThrowFHIR($$$HSFHIRErrUnresolvedBundlePlaceholder, uuid, $LG(infoList,1),sourceRefKey, $$$OutcomeInvalid(400))
		}
		// This is a reference to another resource in this bundle
		Set visitContext("ByRefKey", sourceRefKey, "ref", uuid) = pRefObj
	}
}

ClassMethod AddToPostOrder(refKey As %String, ByRef visitContext, ByRef postContext, path As %CacheString = "")
{
	if $ListFind(path, refKey) {
		$$$ThrowFHIR($$$GeneralError, "Circular reference chain found in bundle: " _ $LTS(path))	
	}
	if $D(postContext("ordered", refKey)) {
		return 
	}
	
	Set targetRefKey = ""
	Set nextPath = path _ $LB(refKey)
	for {
		// First make sure any resources referenced from this resource have been POSTed
		Set targetRefKey = $Order(visitContext("ByRefKey", refKey, "ref", targetRefKey))
		Quit:(targetRefKey="")
		Do ..AddToPostOrder(targetRefKey, .visitContext, .postContext, nextPath)		
	}
	
	// Add to the list and flag as already ordered
	Set postContext("list", $I(postContext("list"))) = visitContext("ByRefKey", refKey, "entry")
	Set postContext("ordered", refKey) = visitContext("ByRefKey", refKey, "entry")
}

/// Given the RefKey (uuid) for a resource in the bundle, return a resolved reference string
/// in the form of <resourceType>/<resourceId>.
/// If the uuid has not been resolved (Previously Posted), then it is an error
ClassMethod ResolveReferenceKey(ByRef visitContext, pRefKey As %String) [ Private ]
{
	Set entryId = visitContext("ByRefKey", pRefKey, "entry")
	Set targetEntry = visitContext("entry", entryId)
	if $D(visitContext("ByRefKey", pRefKey), resolvedId) {
		return targetEntry.resource.resourceType _ "/" _ resolvedId	
	} 
	// The key was not resolved. But since we know there was a POST'd entry in the bundle for this
	// key, this is an internal error of some sort
	$$$ThrowFHIR($$$GeneralError, "Expected a resolved resource id for entry "_entryId_", uuid="_pRefKey, $$$OutcomeInvalid(500))
}

/// GetReferenceToUpdate checks the Bundle entry fullUrl, resource id, and entry request url
/// to see if any indicate a UUID, which implies that the url or id is a placeholder, and
/// needs to be updated to a resource id managed by this repository server. The default
/// logic is to use the first found of:
/// 1. fullUrl that is a UUID with the "urn:uuid:" prefix (e.g., "urn:uuid:e12edae2-8892-11e8-bce1-7831c1b7edac").
/// 2. fullUrl that is the resource type plus a UUID without the prefix (e.g., "Encounter/e12edae2-8892-11e8-bce1-7831c1b7edac").
/// 3. resource id that is a UUID without the prefix (e.g., "e12edae2-8892-11e8-bce1-7831c1b7edac").
/// 4. entry request url that is a UUID with the prefix (e.g., "urn:uuid:e12edae2-8892-11e8-bce1-7831c1b7edac").
/// 5. entry request url that is the resource type plus a UUID without the prefix (e.g., "Encounter/e12edae2-8892-11e8-bce1-7831c1b7edac").
ClassMethod GetReferenceToUpdate(pResourceType As %String, pResourceId As %String, pFullUrl As %String, pEntryMethod As %String, pEntryUrl As %String) As %String
{
	Set tReferenceToUpdate = ""
	
	//w "rt: ",pResourceType,", rid: ",pResourceId,", fu: ",pFullUrl, ", eu: ", pEntryUrl,!
	
	If (pFullUrl'="")&&($Length(pFullUrl,"/")=1)&&(##class(HS.HC.Util).IsUUID(pFullUrl,1)) {
		Set tReferenceToUpdate = pFullUrl
	} ElseIf ($Length(pFullUrl,"/")=2)&&($Piece(pFullUrl,"/",1)=pResourceType)&&(##class(HS.HC.Util).IsUUID($Piece(pFullUrl,"/",2),0)) {
		Set tReferenceToUpdate = pFullUrl
	} ElseIf (pResourceId'="")&&(##class(HS.HC.Util).IsUUID(pResourceId,0)) {
		Set tReferenceToUpdate = pResourceType_"/"_pResourceId
	} ElseIf (pEntryUrl'="")&&($Length(pEntryUrl,"/")=1)&&(##class(HS.HC.Util).IsUUID(pEntryUrl,1)) {
		Set tReferenceToUpdate = pEntryUrl
	} ElseIf ($Length(pEntryUrl,"/")=2)&&($Piece(pEntryUrl,"/",1)=pResourceType)&&(##class(HS.HC.Util).IsUUID($Piece(pEntryUrl,"/",2),0)) {
		Set tReferenceToUpdate = pEntryUrl
	}
	
	Quit tReferenceToUpdate
}

/// API
/// IsUUID returns the UUID-portion of the input string if the specified string is a UUID, returns 0 if not. 
/// Requirement for the presence of the "urn:uuid:" prefix is determined by the pPrefixRequired input parameter.
/// Once prefix is verified per the requirement, the remainder of validation takes place
/// with the prefix stripped.
ClassMethod ExtractUUID(pString As %String, pPrefixRequired As %Boolean = 0) As %String
{
	Set tString = pString
	If $Extract(tString,1,9)="urn:uuid:" {
		Set tString = $Extract(tString,10,*)
	} Else {
		If pPrefixRequired=1 {
			Return 0
		}
	}
	// If we get here, tString is unprefixed.  Now check its form
	if $Match(tString,"[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}") {
		Return tString
	}
	Return ""
}

/// ExecuteBundle processes a batch or transaction Bundle according to the FHIR specification at:<br>
/// http://hl7.org/fhir/DSTU2/http.html#transaction<br>
/// http://hl7.org/fhir/STU3/http.html#transaction<br>
/// <br>Inputs:<br>
/// <li>pService              : The FHIR Service instance that invoked this processor
/// <li>pRequest              : FHIR request message.
/// <li>pResponse             : FHIR response object to receive the result
/// <li>pBundleType           : String specifying the bundle type ("batch" or "transaction")
/// <li>visitContext          : The context object that is controlling this operation
ClassMethod ExecuteBundle(pService As HS.FHIRServer.API.Service, pRequest As HS.FHIRServer.API.Data.Request, pResponse As HS.FHIRServer.API.Data.Response, pBundleType As %String, ByRef visitContext)
{
	
	#dim tRequest As HS.FHIRServer.API.Data.Request
	#dim tFHIRResponse As HS.FHIRServer.API.Data.Response

	If pBundleType="transaction" {
		
	}
	
	// Create the transaction-response or batch-response Bundle
	// No Total property for response bundles
	Set bundleTotal = ""
	Set bundle = ..CreateBundle("", pBundleType_"-response", bundleTotal, .bundleUrls, pService.Schema)


	// For transaction, if an interaction fails then quit, perform TROLLBACK,
	// and return a single return status and OperationOutcome.  Otherwise if
	// successful then return a Bundle of response entries.
	For tMethod = "DELETE", "POST", "PUT", "GET" {
		Set methodIndex = ""
		For {
			Set methodIndex = $Order(visitContext("ByMethod", tMethod, methodIndex), 1, tEntryNum)
			Quit:methodIndex=""
			Set entryObj = visitContext("entry", tEntryNum)
			Set reqObj = entryObj.request

			// Resolve any intra-bundle references for POST payloads before invoking the interaction
			// (Note: POST's are now in order, so all references will be resolved -- circular references are not supported
			if (pBundleType="transaction") && (tMethod="POST") {
				//
				Set refKey = visitContext("entry", tEntryNum, "RefKey")
				Set targetRefKey = ""
				for {
					Set targetRefKey = $Order(visitContext("ByRefKey", refKey, "ref", targetRefKey), 1, refObj)
					Quit:(targetRefKey = "")
					
					Set refObj.reference = ..ResolveReferenceKey(.visitContext, targetRefKey)
				}
			}			
			
			Set tRequest = ..prepareRequest(pService, pRequest, .visitContext, entryObj)
			Do pService.DispatchRequest( tRequest, .tFHIRResponse )
			//w "status: ",tFHIRResponse.Status," for ",reqObj.url,", loc: ",tFHIRResponse.Location,!
			
			Set httpStatus = +tFHIRResponse.Status
			
			Set tHTTPSuccess = (httpStatus >=200) && (httpStatus <= 299)
			if (pBundleType = "transaction") {
				if 'tHTTPSuccess {
					// Abort the transaction and return an Operation Outcome
					Set pResponse.Json = tFHIRResponse.Json
					Set pResponse.Status = httpStatus
					TROLLBACK
					Return
				} else {
					// TODO:  
					if tMethod = "POST" {
						// A successful interaction POST either grab the new id, or resolve pointer
						Set refKey = $Get( visitContext("entry", tEntryNum, "RefKey") )
						Set rsrcId = tFHIRResponse.Id
						if refKey '= "" {
							Set visitContext("ByRefKey", refKey) = rsrcId
						}
					}
				}
			}
			
			// Build the Bundle Entry for the response			
			#dim returnedEntry = ..AddBundleEntry(bundle, entryObj.fullUrl)
			#dim respObj as %DynamicObject = $$$NewJSONObject
			Set returnedEntry.response = respObj
			// Return the resource if present
			if tFHIRResponse.Json '= "" {
				Set returnedEntry.resource = tFHIRResponse.Json
			}
			Set respObj.status = tFHIRResponse.Status
			Set visitContext("entry", tEntryNum, "response") = returnedEntry

			// If success, set the response property of the response entry to
			// include the interaction status, and add any FHIR payload that
			// may have been returned from the interaction.
			If (tHTTPSuccess)||(((tRequest.Interaction="read")||(tRequest.Interaction="vread"))&&(+tFHIRResponse.Status=404)) {
				Set tLocation = tFHIRResponse.Location
				If tLocation'="" {
					//w tLocation,!
					If tLocation["/_history/" {
						Set tLocation = $Piece(tLocation,"/_history/",1)
					}
					Set pathCount = $Length(tLocation, "/")
					Set rsrcId = $Select(pathCount<2:"", 1:$piece(tLocation, "/", pathCount-1, pathCount))
					Set respObj.location = tLocation
					//w "rid: ",rsrcId,", loc: ",tLocation,!
				}
				
				Set etag = tFHIRResponse.ETag
				If etag '= "" {
					Set respObj.etag = etag
				}
				If tFHIRResponse.LastModified '= "" {
					// Last-Modified is in format "Fri, 13 Jul 2018 01:28:55 GMT".
					// Convert it back to format "2018-07-13T01:28:55Z".
					Set tLastModified = $Piece(tFHIRResponse.LastModified,",",2)
					Set tLastModified = $ZStrip(tLastModified,"<>W")
					Set tLastModified = $Extract(tLastModified,1,*-4)
					Set tLastModified = $ZDateTimeH(tLastModified,2)
					Set tLastModified = $ZDateTime(tLastModified,3)
					Set tLastModified = $Translate(tLastModified," ","T")_"Z"
					Set respObj.lastModified = tLastModified
				}
			} 
		}
	}
	
	// Now re-order the responses in the result bundle
	Set entryCount = visitContext("entry")
	Set bundle.entry = $$$NewJSONArray
	For tEntryNum=1:1:entryCount {
		#dim entryObj As %DynamicObject = visitContext("entry", tEntryNum, "response")
		Do bundle.entry.%Push(entryObj)
	}
	
	
	// Processing all succeeded, go ahead and TCOMMIT now.
	If pBundleType="transaction" {
		
	}
	Set pResponse.Json = ..FinalizeBundle(bundle)
	Set pResponse.Status = 200
}

ClassMethod prepareRequest(pService As HS.FHIRServer.API.Service, pTransRequest As HS.FHIRServer.API.Data.Request, ByRef visitContext, entryObj As %DynamicObject)
{
	#dim tRequest As HS.FHIRServer.API.Data.Request = ##class(HS.FHIRServer.API.Data.Request).%New()
	// Indicate that this is a recursive request back into the service
	Set tRequest.IsRecursive = 1

	Set reqObj = entryObj.request
	
	Set tUrl = reqObj.url
	Set tQuery = $Piece(tUrl,"?",2,*)
	Set tUrl = $Piece(tUrl,"?",1)
	// Translate if the request URL is a placeholder
	Set uuid = ..ExtractUUID(tUrl)
	if (uuid '= "") && $D(visitContext("ByRefKey", uuid), resolvedId) '= 0 {
		Set entryId = visitContext("ByRefKey", uuid, "entry")
		Set targetEntry = visitContext("entry", entryId)
		Set tUrl = targetEntry.resource.resourceType _ "/" _ resolvedId	
	}
	
	if 0 {
		// TODO: Should this NOT be an error??
		// The request url should not include the base url.
		// Compensate in case it is included.
		Set tBaseUrl = pTransRequest.BaseURL
		If (tFullBaseUrl'="")&&($Extract(tUrl,1,$Length(tFullBaseUrl))=tFullBaseUrl) Set tUrl = $Extract(tUrl,$Length(tFullBaseUrl)+2,*)
		If (tBaseUrl'="")&&($Extract(tUrl,1,$Length(tBaseUrl))=tBaseUrl) Set tUrl = $Extract(tUrl,$Length(tBaseUrl)+2,*)
	}
	
	//
	Set tRequest.RequestPath = tUrl
	Set tRequest.QueryString = tQuery
	Set tRequest.RequestMethod = reqObj.method
	Set tRequest.IfMatch = reqObj.IfMatch
	Set tRequest.IfModifiedSince = reqObj.IfModifiedSince
	Set tRequest.IfNoneExist = reqObj.IfNoneExist
	Set tRequest.IfNoneMatch = reqObj.IfNoneMatch
	if entryObj.resource '= "" {
		Set tRequest.Json = entryObj.resource
		Set tRequest.RequestFormatCode = $$$FHIRContentCodeJSON
	}

	Set tRequest.ResponseFormatCode = pTransRequest.ResponseFormatCode
	Set tRequest.BaseURL = pTransRequest.BaseURL
	Set tRequest.SessionApplication = pTransRequest.SessionApplication
	Set tRequest.Prefer = pTransRequest.Prefer

	return tRequest
}

}
