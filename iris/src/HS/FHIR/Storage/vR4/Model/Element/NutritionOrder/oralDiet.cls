/// Oral diet components.
Class HS.FHIR.Storage.vR4.Model.Element.NutritionOrder.oralDiet Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of oral diet or diet restrictions that describe what can be consumed orally.
/// <p>
/// any FHIR4 code may be used; 
/// diet-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// Scheduled frequency of diet.
Property schedule As array Of HS.FHIR.Storage.vR4.Model.Datatype.Timing(XMLNAME = "schedule", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Required  nutrient modifications.
Property nutrient As array Of HS.FHIR.Storage.vR4.Model.Element.NutritionOrder.oralDiet.nutrient(XMLNAME = "nutrient", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Required  texture modifications.
Property texture As array Of HS.FHIR.Storage.vR4.Model.Element.NutritionOrder.oralDiet.texture(XMLNAME = "texture", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The required consistency of fluids and liquids provided to the patient.
/// <p>
/// any FHIR4 code may be used; 
/// consistency-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property fluidConsistencyType As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "fluidConsistencyType", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Instructions or additional information about the oral diet.
Property instruction As %String(MAXLEN = 1000000, XMLNAME = "instruction", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NutritionOrder.oralDiet";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NutritionOrder.oralDiet";

Storage Default
{
<Data name="fluidConsistencyType">
<Attribute>fluidConsistencyType</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.NutritionOrder.oralDiet.fluidConsistencyType"</Subscript>
</Data>
<Data name="nutrient">
<Attribute>nutrient</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.NutritionOrder.oralDiet.nutrient"</Subscript>
</Data>
<Data name="oralDietDefaultData">
<Subscript>"oralDiet"</Subscript>
<Value name="1">
<Value>instruction</Value>
</Value>
</Data>
<Data name="schedule">
<Attribute>schedule</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.NutritionOrder.oralDiet.schedule"</Subscript>
</Data>
<Data name="texture">
<Attribute>texture</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.NutritionOrder.oralDiet.texture"</Subscript>
</Data>
<Data name="type">
<Attribute>type</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.NutritionOrder.oralDiet.type"</Subscript>
</Data>
<DefaultData>oralDietDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
