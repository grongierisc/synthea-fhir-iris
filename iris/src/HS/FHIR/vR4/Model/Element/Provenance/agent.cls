/// Actor involved.
Class HS.FHIR.vR4.Model.Element.Provenance.agent Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// How the agent participated.
/// <p>
/// provenance-agent-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in provenance-agent-type, 
/// you may formally EXTEND provenance-agent-type to add codes to it.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// What the agents role was.
/// <p>
/// any FHIR4 code may be used; 
/// security-role-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property role As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "role", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who participated.
/// <p>
/// Practitioner | PractitionerRole | RelatedPerson | Patient | Device | Organization
Property who As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "who", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Who the agent is representing.
/// <p>
/// Practitioner | PractitionerRole | RelatedPerson | Patient | Device | Organization
Property onBehalfOf As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "onBehalfOf", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Provenance.agent";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Provenance.agent";

}
