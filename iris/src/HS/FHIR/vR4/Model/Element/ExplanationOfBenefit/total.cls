/// Adjudication totals.
Class HS.FHIR.vR4.Model.Element.ExplanationOfBenefit.total Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of adjudication information.
/// <p>
/// any FHIR4 code may be used; 
/// adjudication shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT") [ Required ];

/// Money
/// <p>
/// Financial total for the category.
Property amount As HS.FHIR.vR4.Model.Datatype.Money(XMLNAME = "amount", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExplanationOfBenefit.total";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExplanationOfBenefit.total";

}
