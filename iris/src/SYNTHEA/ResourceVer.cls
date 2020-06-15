Class HS.FHIRServer.Storage.Json.ResourceVer Extends %Persistent [ Abstract, NoExtent ]
{

Property Key As %String(COLLATION = "EXACT", MAXLEN = 100) [ Required ];

Property ResourceType As %String(COLLATION = "EXACT") [ Required ];

Property ResourceId As %String(MAXLEN = 64) [ Required ];

Property VersionId As %String [ Required ];

/// The time that this version of the resource was saved, in UTC.
/// ie, YYYY-MM-DDThh:mm:ssZ. This gets set in <method>SaveStreamlet</method>.
/// No other code should set it.
Property LastModified As %String;

/// The HTTP verb used in the interaction that created this version of this resource.
/// Needed because the history interaction requires this to be known, and because the
/// first version of a resource can be created with either a POST/create or PUT/update,
/// with no other indication which verb was used.
Property Verb As %String(VALUELIST = ",POST,PUT,DELETE");

Property Format As %String(VALUELIST = ",XML,JSON");

/// Set to 1 (true) if this resource is deleted.  The value 1 will only appear
/// on the current version if it was deleted.
Property Deleted As %Boolean [ InitialExpression = 0 ];

Property ResourceStream As %Stream.GlobalCharacter;

Property ResourceString As %String(MAXLEN = "");

Property ResourceObject As %DynamicObject [ Calculated, Transient ];

Property %CachedResourceObject As %DynamicObject [ Private, Transient ];

Method ResourceObjectGet() As %DynamicObject
{
	// ..%CachedResourceObject can be already be populated, or
	// it can be uninstantiated, or instantiated and empty.
	If ( (..%CachedResourceObject="") || ('..%CachedResourceObject.%GetIterator().%GetNext()) ) {
		// Determine how the text was stored
		If ('$IsObject(..ResourceStream))||(..ResourceStream.Size=0) {
			Set tStreamOrString = ..ResourceString
		} Else {
			Set tStreamOrString = ..ResourceStream
		}
		Set ..%CachedResourceObject = ##class(%DynamicObject).%FromJSON(tStreamOrString)
	}
	return ..%CachedResourceObject
}

}
