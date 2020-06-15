/// The specific medication, 
/// food or laboratory test that interacts.
Class HS.FHIR.vR4.Model.Element.MedicinalProductInteraction.interactant Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The specific medication, 
/// food or laboratory test that interacts.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property itemCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "itemCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// The specific medication, 
/// food or laboratory test that interacts.
/// <p>
/// MedicinalProduct | Medication | Substance | ObservationDefinition
Property itemReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "itemReference", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductInteraction.interactant";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductInteraction.interactant";

}
