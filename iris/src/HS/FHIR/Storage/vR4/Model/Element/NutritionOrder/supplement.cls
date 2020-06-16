/// Supplement components.
Class HS.FHIR.Storage.vR4.Model.Element.NutritionOrder.supplement Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of supplement product requested.
/// <p>
/// any FHIR4 code may be used; 
/// supplement-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Product or brand name of the nutritional supplement.
Property productName As %String(MAXLEN = 1000000, XMLNAME = "productName", XMLPROJECTION = "ATTRIBUTE");

/// Timing
/// <p>
/// Scheduled frequency of supplement.
Property schedule As array Of HS.FHIR.Storage.vR4.Model.Datatype.Timing(XMLNAME = "schedule", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Amount of the nutritional supplement.
Property quantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Instructions or additional information about the oral supplement.
Property instruction As %String(MAXLEN = 1000000, XMLNAME = "instruction", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NutritionOrder.supplement";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NutritionOrder.supplement";

Storage Default
{
<Data name="schedule">
<Attribute>schedule</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.NutritionOrder.supplement.schedule"</Subscript>
</Data>
<Data name="supplementDefaultData">
<Subscript>"supplement"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>productName</Value>
</Value>
<Value name="3">
<Value>quantity</Value>
</Value>
<Value name="4">
<Value>instruction</Value>
</Value>
</Data>
<DefaultData>supplementDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
