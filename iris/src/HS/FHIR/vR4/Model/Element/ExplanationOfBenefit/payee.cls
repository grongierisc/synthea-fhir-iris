/// Recipient of benefits payable.
Class HS.FHIR.vR4.Model.Element.ExplanationOfBenefit.payee Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Category of recipient.
/// <p>
/// any FHIR4 code may be used; 
/// payeetype shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Recipient reference.
/// <p>
/// Practitioner | PractitionerRole | Organization | Patient | RelatedPerson
Property party As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "party", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExplanationOfBenefit.payee";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExplanationOfBenefit.payee";

}
