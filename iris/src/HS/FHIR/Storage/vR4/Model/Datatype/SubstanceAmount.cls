/// Chemical substances are a single substance type whose primary defining element is the molecular structure. 
/// Chemical substances shall be defined on the basis of their complete covalent molecular structure; 
/// the presence of a salt (counter-ion) and/or solvates (water, 
/// alcohols) is also captured. 
/// Purity, 
/// grade, 
/// physical form or particle size are not taken into account in the definition of a chemical substance or in the assignment of a Substance ID.
Class HS.FHIR.Storage.vR4.Model.Datatype.SubstanceAmount Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Quantity
/// <p>
/// Used to capture quantitative values for a variety of elements. 
/// If only limits are given, 
/// the arithmetic mean would be the average. 
/// If only a single definite value for a given element is given, 
/// it would be captured in this field.
Property amountQuantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "amountQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Used to capture quantitative values for a variety of elements. 
/// If only limits are given, 
/// the arithmetic mean would be the average. 
/// If only a single definite value for a given element is given, 
/// it would be captured in this field.
Property amountRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "amountRange", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Used to capture quantitative values for a variety of elements. 
/// If only limits are given, 
/// the arithmetic mean would be the average. 
/// If only a single definite value for a given element is given, 
/// it would be captured in this field.
Property amountString As %String(MAXLEN = 1000000, XMLNAME = "amountString", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Most elements that require a quantitative value will also have a field called amount type. 
/// Amount type should always be specified because the actual value of the amount is often dependent on it. 
/// EXAMPLE: In capturing the actual relative amounts of substances or molecular fragments it is essential to indicate whether the amount refers to a mole ratio or weight ratio. 
/// For any given element an effort should be made to use same the amount type for all related definitional elements.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property amountType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "amountType", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// A textual comment on a numeric value.
Property amountText As %String(MAXLEN = 1000000, XMLNAME = "amountText", XMLPROJECTION = "ATTRIBUTE");

/// Element
/// <p>
/// Reference range of possible or expected values.
Property referenceRange As HS.FHIR.Storage.vR4.Model.Element.SubstanceAmount.referenceRange(XMLNAME = "referenceRange", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "HS.FHIR.Storage.vR4.Model.Datatype.SubstanceAmount";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "HS.FHIR.Storage.vR4.Model.Datatype.SubstanceAmount";

Storage Default
{
<Data name="SubstanceAmountDefaultData">
<Subscript>"SubstanceAmount"</Subscript>
<Value name="1">
<Value>amountQuantity</Value>
</Value>
<Value name="2">
<Value>amountRange</Value>
</Value>
<Value name="3">
<Value>amountString</Value>
</Value>
<Value name="4">
<Value>amountType</Value>
</Value>
<Value name="5">
<Value>amountText</Value>
</Value>
<Value name="6">
<Value>referenceRange</Value>
</Value>
</Data>
<DefaultData>SubstanceAmountDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
