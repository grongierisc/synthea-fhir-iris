/// Contact information.
Class HS.FHIR.Storage.vR4.Model.Datatype.ContactDetail Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Name of an individual to contact.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// ContactPoint
/// <p>
/// Contact details for individual or organization.
Property telecom As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactPoint(XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ContactDetail";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ContactDetail";

Storage Default
{
<Data name="ContactDetailDefaultData">
<Subscript>"ContactDetail"</Subscript>
<Value name="1">
<Value>name</Value>
</Value>
</Data>
<Data name="telecom">
<Attribute>telecom</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Datatype.ContactDetail.telecom"</Subscript>
</Data>
<DefaultData>ContactDetailDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
