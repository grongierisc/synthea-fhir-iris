/// Diet, 
/// formula or nutritional supplement request.
Class HS.FHIR.Storage.vR4.Model.Resource.NutritionOrder Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Identifiers assigned to this order.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Instantiates FHIR protocol or definition.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property instantiatesCanonical As array Of %String(MAXLEN = 1000000, XMLNAME = "instantiatesCanonical", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Instantiates external protocol or definition.
Property instantiatesUri As array Of %String(MAXLEN = 1000000, XMLNAME = "instantiatesUri", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Instantiates protocol or definition.
Property instantiates As array Of %String(MAXLEN = 1000000, XMLNAME = "instantiates", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// draft | active | on-hold | revoked | completed | entered-in-error | unknown
/// <p>
/// request-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option
/// <p>
/// request-intent|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-intent|4.0.1 and you may NOT use codes from other ValueSets.
Property intent As %String(MAXLEN = 1000000, XMLNAME = "intent", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// The person who requires the diet, 
/// formula or nutritional supplement.
/// <p>
/// Patient
Property patient As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// The encounter associated with this nutrition order.
/// <p>
/// Encounter
Property encounter As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Date and time the nutrition order was requested.
Property dateTime As %String(MAXLEN = 1000000, XMLNAME = "dateTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Who ordered the diet, 
/// formula or nutritional supplement.
/// <p>
/// Practitioner | PractitionerRole
Property orderer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "orderer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// List of the patient's food and nutrition-related allergies and intolerances.
/// <p>
/// AllergyIntolerance
Property allergyIntolerance As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "allergyIntolerance", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Order-specific modifier about the type of food that should be given.
/// <p>
/// any FHIR4 code may be used; 
/// encounter-diet shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property foodPreferenceModifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "foodPreferenceModifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Order-specific modifier about the type of food that should not be given.
/// <p>
/// any FHIR4 code may be used; 
/// food-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property excludeFoodModifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "excludeFoodModifier", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Oral diet components.
Property oralDiet As HS.FHIR.Storage.vR4.Model.Element.NutritionOrder.oralDiet(XMLNAME = "oralDiet", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Supplement components.
Property supplement As array Of HS.FHIR.Storage.vR4.Model.Element.NutritionOrder.supplement(XMLNAME = "supplement", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Enteral formula components.
Property enteralFormula As HS.FHIR.Storage.vR4.Model.Element.NutritionOrder.enteralFormula(XMLNAME = "enteralFormula", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NutritionOrder";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NutritionOrder";

Storage Default
{
<Data name="NutritionOrderDefaultData">
<Subscript>"NutritionOrder"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>intent</Value>
</Value>
<Value name="3">
<Value>patient</Value>
</Value>
<Value name="4">
<Value>encounter</Value>
</Value>
<Value name="5">
<Value>dateTime</Value>
</Value>
<Value name="6">
<Value>orderer</Value>
</Value>
<Value name="7">
<Value>oralDiet</Value>
</Value>
<Value name="8">
<Value>enteralFormula</Value>
</Value>
</Data>
<Data name="allergyIntolerance">
<Attribute>allergyIntolerance</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.NutritionOrder.allergyIntolerance"</Subscript>
</Data>
<Data name="excludeFoodModifier">
<Attribute>excludeFoodModifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.NutritionOrder.excludeFoodModifier"</Subscript>
</Data>
<Data name="foodPreferenceModifier">
<Attribute>foodPreferenceModifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.NutritionOrder.foodPreferenceModifier"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.NutritionOrder.identifier"</Subscript>
</Data>
<Data name="instantiates">
<Attribute>instantiates</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.NutritionOrder.instantiates"</Subscript>
</Data>
<Data name="instantiatesCanonical">
<Attribute>instantiatesCanonical</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.NutritionOrder.instantiatesCanonical"</Subscript>
</Data>
<Data name="instantiatesUri">
<Attribute>instantiatesUri</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.NutritionOrder.instantiatesUri"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.NutritionOrder.note"</Subscript>
</Data>
<Data name="supplement">
<Attribute>supplement</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.NutritionOrder.supplement"</Subscript>
</Data>
<DefaultData>NutritionOrderDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
