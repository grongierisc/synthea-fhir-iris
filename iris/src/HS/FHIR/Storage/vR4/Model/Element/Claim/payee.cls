/// Recipient of benefits payable.
Class HS.FHIR.Storage.vR4.Model.Element.Claim.payee Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Category of recipient.
/// <p>
/// any FHIR4 code may be used; 
/// payeetype shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Recipient reference.
/// <p>
/// Practitioner | PractitionerRole | Organization | Patient | RelatedPerson
Property party As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "party", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Claim.payee";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Claim.payee";

Storage Default
{
<Data name="payeeDefaultData">
<Subscript>"payee"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>party</Value>
</Value>
</Data>
<DefaultData>payeeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
