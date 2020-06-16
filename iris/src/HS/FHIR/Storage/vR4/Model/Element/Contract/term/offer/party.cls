/// Offer Recipient.
Class HS.FHIR.Storage.vR4.Model.Element.Contract.term.offer.party Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Referenced entity.
/// <p>
/// Patient | RelatedPerson | Practitioner | PractitionerRole | Device | Group | Organization
Property reference As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "reference", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Participant engagement type.
/// <p>
/// any FHIR4 code may be used; 
/// contract-party-role shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property role As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term.offer.party";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term.offer.party";

Storage Default
{
<Data name="partyDefaultData">
<Subscript>"party"</Subscript>
<Value name="1">
<Value>role</Value>
</Value>
</Data>
<Data name="reference">
<Attribute>reference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.offer.party.reference"</Subscript>
</Data>
<DefaultData>partyDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
