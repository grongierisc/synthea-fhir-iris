/// Strength expressed in terms of a reference substance.
Class HS.FHIR.Storage.vR4.Model.Element.MedicinalProductIngredient.specifiedSubstance.strength.referenceStrength Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Relevant reference substance.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property substance As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "substance", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// Strength expressed in terms of a reference substance.
Property strength As HS.FHIR.Storage.vR4.Model.Datatype.Ratio(XMLNAME = "strength", XMLPROJECTION = "ELEMENT") [ Required ];

/// Ratio
/// <p>
/// Strength expressed in terms of a reference substance.
Property strengthLowLimit As HS.FHIR.Storage.vR4.Model.Datatype.Ratio(XMLNAME = "strengthLowLimit", XMLPROJECTION = "ELEMENT");

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

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductIngredient.specifiedSubstance.strength.referenceStrength";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductIngredient.specifiedSubstance.strength.referenceStrength";

Storage Default
{
<Data name="country">
<Attribute>country</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicinalProductIngredient.specifiedSubstance.strength.referenceStrength.country"</Subscript>
</Data>
<Data name="referenceStrengthDefaultData">
<Subscript>"referenceStrength"</Subscript>
<Value name="1">
<Value>substance</Value>
</Value>
<Value name="2">
<Value>strength</Value>
</Value>
<Value name="3">
<Value>strengthLowLimit</Value>
</Value>
<Value name="4">
<Value>measurementPoint</Value>
</Value>
</Data>
<DefaultData>referenceStrengthDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
