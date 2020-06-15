/// Care Team members.
Class HS.FHIR.vR4.Model.Element.ExplanationOfBenefit.careTeam Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Order of care team.
Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Practitioner or organization.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property provider As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "provider", XMLPROJECTION = "ELEMENT") [ Required ];

/// boolean
/// <p>
/// Indicator of the lead practitioner.
Property responsible As %Boolean(XMLNAME = "responsible", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Function within the team.
/// <p>
/// any FHIR4 code may be used; 
/// claim-careteamrole shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property role As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Practitioner credential or specialization.
/// <p>
/// any FHIR4 code may be used; 
/// provider-qualification shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property qualification As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "qualification", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExplanationOfBenefit.careTeam";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExplanationOfBenefit.careTeam";

}
