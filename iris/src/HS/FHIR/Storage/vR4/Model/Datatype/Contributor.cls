/// Contributor information.
Class HS.FHIR.Storage.vR4.Model.Datatype.Contributor Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// code
/// <p>
/// author | editor | reviewer | endorser
/// <p>
/// contributor-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend contributor-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Who contributed the content.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// ContactDetail
/// <p>
/// Contact details of the contributor.
Property contact As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactDetail(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contributor";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contributor";

Storage Default
{
<Data name="ContributorDefaultData">
<Subscript>"Contributor"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>name</Value>
</Value>
</Data>
<Data name="contact">
<Attribute>contact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Datatype.Contributor.contact"</Subscript>
</Data>
<DefaultData>ContributorDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
