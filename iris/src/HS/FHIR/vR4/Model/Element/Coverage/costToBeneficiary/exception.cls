/// Exceptions for patient payments.
Class HS.FHIR.vR4.Model.Element.Coverage.costToBeneficiary.exception Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Exception category.
/// <p>
/// any FHIR4 code may be used; 
/// coverage-financial-exception shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// Period
/// <p>
/// The effective period of the exception.
Property period As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Coverage.costToBeneficiary.exception";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Coverage.costToBeneficiary.exception";

}
