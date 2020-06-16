/// Required  texture modifications.
Class HS.FHIR.Storage.vR4.Model.Element.NutritionOrder.oralDiet.texture Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Code to indicate how to alter the texture of the foods, 
/// e.g. 
/// pureed.
/// <p>
/// any FHIR4 code may be used; 
/// texture-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property modifier As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "modifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Concepts that are used to identify an entity that is ingested for nutritional purposes.
/// <p>
/// any FHIR4 code may be used; 
/// modified-foodtype shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property foodType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "foodType", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NutritionOrder.oralDiet.texture";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NutritionOrder.oralDiet.texture";

Storage Default
{
<Data name="textureDefaultData">
<Subscript>"texture"</Subscript>
<Value name="1">
<Value>modifier</Value>
</Value>
<Value name="2">
<Value>foodType</Value>
</Value>
</Data>
<DefaultData>textureDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
