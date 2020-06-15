/// Members of the team.
Class HS.FHIR.vR4.Model.Element.CareTeam.participant Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of involvement.
/// <p>
/// any FHIR4 code may be used; 
/// participant-role shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property role As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "role", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who is involved.
/// <p>
/// Practitioner | PractitionerRole | RelatedPerson | Patient | Organization | CareTeam
Property member As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "member", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization of the practitioner.
/// <p>
/// Organization
Property onBehalfOf As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "onBehalfOf", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Time period of participant.
Property period As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CareTeam.participant";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CareTeam.participant";

}
