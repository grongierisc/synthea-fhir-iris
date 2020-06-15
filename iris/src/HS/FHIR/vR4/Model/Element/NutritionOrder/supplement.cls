/// Supplement components.
Class HS.FHIR.vR4.Model.Element.NutritionOrder.supplement Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of supplement product requested.
/// <p>
/// any FHIR4 code may be used; 
/// supplement-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Product or brand name of the nutritional supplement.
Property productName As %String(MAXLEN = 1000000, XMLNAME = "productName", XMLPROJECTION = "ATTRIBUTE");

/// Timing
/// <p>
/// Scheduled frequency of supplement.
Property schedule As List Of HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "schedule", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Amount of the nutritional supplement.
Property quantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Instructions or additional information about the oral supplement.
Property instruction As %String(MAXLEN = 1000000, XMLNAME = "instruction", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NutritionOrder.supplement";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NutritionOrder.supplement";

}
