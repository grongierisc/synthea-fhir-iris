/// Information on the possible cause of the event.
Class HS.FHIR.vR4.Model.Element.AdverseEvent.suspectEntity.causality Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Assessment of if the entity caused the event.
/// <p>
/// any FHIR4 code may be used; 
/// adverse-event-causality-assess shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property assessment As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "assessment", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// AdverseEvent.suspectEntity.causalityProductRelatedness.
Property productRelatedness As %String(MAXLEN = 1000000, XMLNAME = "productRelatedness", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// AdverseEvent.suspectEntity.causalityAuthor.
/// <p>
/// Practitioner | PractitionerRole
Property author As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// ProbabilityScale | Bayesian | Checklist
/// <p>
/// any FHIR4 code may be used; 
/// adverse-event-causality-method shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property method As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "method", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AdverseEvent.suspectEntity.causality";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AdverseEvent.suspectEntity.causality";

}
