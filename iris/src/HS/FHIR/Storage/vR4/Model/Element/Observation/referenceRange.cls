/// Provides guide for interpretation.
Class HS.FHIR.Storage.vR4.Model.Element.Observation.referenceRange Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Quantity
/// <p>
/// Low Range, 
/// if relevant.
Property low As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "low", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// High Range, 
/// if relevant.
Property high As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "high", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Reference range qualifier.
/// <p>
/// referencerange-meaning is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in referencerange-meaning, 
/// you may use codes from any ValueSet.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Reference range population.
/// <p>
/// any FHIR4 code may be used; 
/// referencerange-appliesto shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property appliesTo As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "appliesTo", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Applicable age range, 
/// if relevant.
Property age As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "age", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Text based reference range in an observation.
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Observation.referenceRange";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Observation.referenceRange";

Storage Default
{
<Data name="appliesTo">
<Attribute>appliesTo</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Observation.referenceRange.appliesTo"</Subscript>
</Data>
<Data name="referenceRangeDefaultData">
<Subscript>"referenceRange"</Subscript>
<Value name="1">
<Value>low</Value>
</Value>
<Value name="2">
<Value>high</Value>
</Value>
<Value name="3">
<Value>type</Value>
</Value>
<Value name="4">
<Value>age</Value>
</Value>
<Value name="5">
<Value>text</Value>
</Value>
</Data>
<DefaultData>referenceRangeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
