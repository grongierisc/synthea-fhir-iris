/// Oral diet components.
Class HS.FHIR.vR4.Model.Element.NutritionOrder.oralDiet Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of oral diet or diet restrictions that describe what can be consumed orally.
/// <p>
/// any FHIR4 code may be used; 
/// diet-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// Scheduled frequency of diet.
Property schedule As List Of HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "schedule", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Required  nutrient modifications.
Property nutrient As List Of HS.FHIR.vR4.Model.Element.NutritionOrder.oralDiet.nutrient(XMLNAME = "nutrient", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Required  texture modifications.
Property texture As List Of HS.FHIR.vR4.Model.Element.NutritionOrder.oralDiet.texture(XMLNAME = "texture", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The required consistency of fluids and liquids provided to the patient.
/// <p>
/// any FHIR4 code may be used; 
/// consistency-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property fluidConsistencyType As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "fluidConsistencyType", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Instructions or additional information about the oral diet.
Property instruction As %String(MAXLEN = 1000000, XMLNAME = "instruction", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NutritionOrder.oralDiet";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NutritionOrder.oralDiet";

}
