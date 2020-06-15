/// Entity of the action.
Class HS.FHIR.vR4.Model.Element.Contract.term.action.subject Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Entity of the action.
/// <p>
/// Patient | RelatedPerson | Practitioner | PractitionerRole | Device | Group | Organization
Property reference As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reference", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Role type of the agent.
/// <p>
/// any FHIR4 code may be used; 
/// contract-actorrole shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property role As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term.action.subject";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term.action.subject";

}
