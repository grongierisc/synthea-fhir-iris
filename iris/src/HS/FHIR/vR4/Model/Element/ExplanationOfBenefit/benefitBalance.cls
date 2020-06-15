/// Balance by Benefit Category.
Class HS.FHIR.vR4.Model.Element.ExplanationOfBenefit.benefitBalance Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Benefit classification.
/// <p>
/// any FHIR4 code may be used; 
/// ex-benefitcategory shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT") [ Required ];

/// boolean
/// <p>
/// Excluded from the plan.
Property excluded As %Boolean(XMLNAME = "excluded", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Short name for the benefit.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Description of the benefit or services covered.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// In or out of network.
/// <p>
/// any FHIR4 code may be used; 
/// benefit-network shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property network As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "network", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Individual or family.
/// <p>
/// any FHIR4 code may be used; 
/// benefit-unit shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property unit As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "unit", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Annual or lifetime.
/// <p>
/// any FHIR4 code may be used; 
/// benefit-term shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property term As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "term", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Benefit Summary.
Property financial As List Of HS.FHIR.vR4.Model.Element.ExplanationOfBenefit.benefitBalance.financial(XMLNAME = "financial", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExplanationOfBenefit.benefitBalance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExplanationOfBenefit.benefitBalance";

}
