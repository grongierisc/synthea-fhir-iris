/// The ingredient substance.
Class HS.FHIR.Storage.vR4.Model.Element.MedicinalProductIngredient.substance Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The ingredient substance.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// MedicinalProductIngredient:specifiedSubstance[n].strength
/// <p>
/// Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product.
Property strength As array Of HS.FHIR.Storage.vR4.Model.Element.MedicinalProductIngredient.specifiedSubstance.strength(XMLNAME = "strength", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductIngredient.substance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductIngredient.substance";

Storage Default
{
<Data name="strength">
<Attribute>strength</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicinalProductIngredient.substance.strength"</Subscript>
</Data>
<Data name="substanceDefaultData">
<Subscript>"substance"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
</Data>
<DefaultData>substanceDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
