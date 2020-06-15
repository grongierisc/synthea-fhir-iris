/// Contact information.
Class HS.FHIR.vR4.Model.Datatype.ContactDetail Extends (%Persistent, HS.FHIR.vR4.Model.Base.Element) [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Name of an individual to contact.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// ContactPoint
/// <p>
/// Contact details for individual or organization.
Property telecom As List Of HS.FHIR.vR4.Model.Datatype.ContactPoint(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ContactDetail";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ContactDetail";

Storage Default
{
<Data name="ContactDetailDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>id</Value>
</Value>
<Value name="3">
<Value>newResource</Value>
</Value>
<Value name="4">
<Value>newResourceReference</Value>
</Value>
<Value name="5">
<Value>name</Value>
</Value>
</Data>
<Data name="extension">
<Attribute>extension</Attribute>
<Structure>subnode</Structure>
<Subscript>"extension"</Subscript>
</Data>
<Data name="primitiveExtension">
<Attribute>primitiveExtension</Attribute>
<Structure>subnode</Structure>
<Subscript>"primitiveExtension"</Subscript>
</Data>
<Data name="telecom">
<Attribute>telecom</Attribute>
<Structure>subnode</Structure>
<Subscript>"telecom"</Subscript>
</Data>
<DataLocation>^HS.FHIR.vR48164.ContactDetailD</DataLocation>
<DefaultData>ContactDetailDefaultData</DefaultData>
<IdLocation>^HS.FHIR.vR48164.ContactDetailD</IdLocation>
<IndexLocation>^HS.FHIR.vR48164.ContactDetailI</IndexLocation>
<StreamLocation>^HS.FHIR.vR48164.ContactDetailS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
