/// Metadata about a resource.
Class HS.FHIR.Storage.vR4.Model.Base.Meta Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// id
/// <p>
/// Version specific identifier.
Property versionId As %String(MAXLEN = 1000000, XMLNAME = "versionId", XMLPROJECTION = "ATTRIBUTE");

/// instant
/// <p>
/// When the resource version last changed.
Property lastUpdated As %String(MAXLEN = 1000000, XMLNAME = "lastUpdated", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Identifies where the resource comes from.
Property source As %String(MAXLEN = 1000000, XMLNAME = "source", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Profiles this resource claims to conform to.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property profile As array Of %String(MAXLEN = 1000000, XMLNAME = "profile", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Security Labels applied to this resource.
/// <p>
/// security-labels is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in security-labels, 
/// you may formally EXTEND security-labels to add codes to it.
Property security As array Of HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "security", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Tags applied to this resource.
/// <p>
/// any FHIR4 code may be used; 
/// common-tags shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property tag As array Of HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "tag", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Meta";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Meta";

Storage Default
{
<Data name="MetaDefaultData">
<Subscript>"Meta"</Subscript>
<Value name="1">
<Value>versionId</Value>
</Value>
<Value name="2">
<Value>lastUpdated</Value>
</Value>
<Value name="3">
<Value>source</Value>
</Value>
</Data>
<Data name="profile">
<Attribute>profile</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Base.Meta.profile"</Subscript>
</Data>
<Data name="security">
<Attribute>security</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Base.Meta.security"</Subscript>
</Data>
<Data name="tag">
<Attribute>tag</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Base.Meta.tag"</Subscript>
</Data>
<DefaultData>MetaDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
