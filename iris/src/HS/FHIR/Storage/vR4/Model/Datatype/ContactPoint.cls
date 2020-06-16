/// Details of a Technology mediated contact point (phone, 
/// fax, 
/// email, 
/// etc.)
Class HS.FHIR.Storage.vR4.Model.Datatype.ContactPoint Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// code
/// <p>
/// phone | fax | email | pager | url | sms | other
/// <p>
/// contact-point-system|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend contact-point-system|4.0.1 and you may NOT use codes from other ValueSets.
Property system As %String(MAXLEN = 1000000, XMLNAME = "system", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// The actual contact point details.
Property value As %String(MAXLEN = 1000000, XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// home | work | temp | old | mobile - purpose of this contact point
/// <p>
/// contact-point-use|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend contact-point-use|4.0.1 and you may NOT use codes from other ValueSets.
Property use As %String(MAXLEN = 1000000, XMLNAME = "use", XMLPROJECTION = "ATTRIBUTE");

/// positiveInt
/// <p>
/// Specify preferred order of use (1 = highest)
Property rank As %Integer(XMLNAME = "rank", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Time period when the contact point was/is in use.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ContactPoint";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ContactPoint";

Storage Default
{
<Data name="ContactPointDefaultData">
<Subscript>"ContactPoint"</Subscript>
<Value name="1">
<Value>system</Value>
</Value>
<Value name="2">
<Value>value</Value>
</Value>
<Value name="3">
<Value>use</Value>
</Value>
<Value name="4">
<Value>rank</Value>
</Value>
<Value name="5">
<Value>period</Value>
</Value>
</Data>
<DefaultData>ContactPointDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
