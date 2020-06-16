/// An ingredient of a manufactured item or pharmaceutical product.
Class HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductIngredient Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Identifier for the ingredient.
Property identifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Ingredient role e.g. 
/// Active ingredient, 
/// excipient.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property role As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT") [ Required ];

/// boolean
/// <p>
/// If the ingredient is a known or suspected allergen.
Property allergenicIndicator As %Boolean(XMLNAME = "allergenicIndicator", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Manufacturer of this Ingredient.
/// <p>
/// Organization
Property manufacturer As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "manufacturer", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A specified substance that comprises this ingredient.
Property specifiedSubstance As array Of HS.FHIR.Storage.vR4.Model.Element.MedicinalProductIngredient.specifiedSubstance(XMLNAME = "specifiedSubstance", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The ingredient substance.
Property substance As HS.FHIR.Storage.vR4.Model.Element.MedicinalProductIngredient.substance(XMLNAME = "substance", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductIngredient";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductIngredient";

Storage Default
{
<Data name="MedicinalProductIngredientDefaultData">
<Subscript>"MedicinalProductIngredient"</Subscript>
<Value name="1">
<Value>identifier</Value>
</Value>
<Value name="2">
<Value>role</Value>
</Value>
<Value name="3">
<Value>allergenicIndicator</Value>
</Value>
<Value name="4">
<Value>substance</Value>
</Value>
</Data>
<Data name="manufacturer">
<Attribute>manufacturer</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductIngredient.manufacturer"</Subscript>
</Data>
<Data name="specifiedSubstance">
<Attribute>specifiedSubstance</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductIngredient.specifiedSubstance"</Subscript>
</Data>
<DefaultData>MedicinalProductIngredientDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
