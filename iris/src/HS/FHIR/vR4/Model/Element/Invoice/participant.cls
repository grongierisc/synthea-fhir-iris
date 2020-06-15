/// Participant in creation of this Invoice.
Class HS.FHIR.vR4.Model.Element.Invoice.participant Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of involvement in creation of this Invoice.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property role As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Individual who was involved.
/// <p>
/// Practitioner | Organization | Patient | PractitionerRole | Device | RelatedPerson
Property actor As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "actor", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Invoice.participant";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Invoice.participant";

}
