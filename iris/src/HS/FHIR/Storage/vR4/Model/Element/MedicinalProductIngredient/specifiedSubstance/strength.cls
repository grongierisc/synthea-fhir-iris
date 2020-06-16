/// Quantity of the substance or specified substance present in the manufactured item or pharmaceutical product.
Class HS.FHIR.Storage.vR4.Model.Element.MedicinalProductIngredient.specifiedSubstance.strength Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Ratio
/// <p>
/// The quantity of substance in the unit of presentation, 
/// or in the volume (or mass) of the single pharmaceutical product or manufactured item.
Property presentation As HS.FHIR.Storage.vR4.Model.Datatype.Ratio(XMLNAME = "presentation", XMLPROJECTION = "ELEMENT") [ Required ];

/// Ratio
/// <p>
/// A lower limit for the quantity of substance in the unit of presentation. 
/// For use when there is a range of strengths, 
/// this is the lower limit, 
/// with the presentation attribute becoming the upper limit.
Property presentationLowLimit As HS.FHIR.Storage.vR4.Model.Datatype.Ratio(XMLNAME = "presentationLowLimit", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// The strength per unitary volume (or mass)
Property concentration As HS.FHIR.Storage.vR4.Model.Datatype.Ratio(XMLNAME = "concentration", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// A lower limit for the strength per unitary volume (or mass), 
/// for when there is a range. 
/// The concentration attribute then becomes the upper limit.
Property concentrationLowLimit As HS.FHIR.Storage.vR4.Model.Datatype.Ratio(XMLNAME = "concentrationLowLimit", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// For when strength is measured at a particular point or distance.
Property measurementPoint As %String(MAXLEN = 1000000, XMLNAME = "measurementPoint", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// The country or countries for which the strength range applies.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property country As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "country", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Strength expressed in terms of a reference substance.
Property referenceStrength As array Of HS.FHIR.Storage.vR4.Model.Element.MedicinalProductIngredient.specifiedSubstance.strength.referenceStrength(XMLNAME = "referenceStrength", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductIngredient.specifiedSubstance.strength";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductIngredient.specifiedSubstance.strength";

Storage Default
{
<Data name="country">
<Attribute>country</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicinalProductIngredient.specifiedSubstance.strength.country"</Subscript>
</Data>
<Data name="referenceStrength">
<Attribute>referenceStrength</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicinalProductIngredient.specifiedSubstance.strength.referenceStrength"</Subscript>
</Data>
<Data name="strengthDefaultData">
<Subscript>"strength"</Subscript>
<Value name="1">
<Value>presentation</Value>
</Value>
<Value name="2">
<Value>presentationLowLimit</Value>
</Value>
<Value name="3">
<Value>concentration</Value>
</Value>
<Value name="4">
<Value>concentrationLowLimit</Value>
</Value>
<Value name="5">
<Value>measurementPoint</Value>
</Value>
</Data>
<DefaultData>strengthDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
