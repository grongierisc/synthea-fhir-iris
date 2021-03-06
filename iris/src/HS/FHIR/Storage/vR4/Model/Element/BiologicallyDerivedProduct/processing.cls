/// Any processing of the product during collection.
Class HS.FHIR.Storage.vR4.Model.Element.BiologicallyDerivedProduct.processing Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Description of of processing.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Procesing code.
/// <p>
/// any FHIR4 code may be used; 
/// procedure-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property procedure As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "procedure", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Substance added during processing.
/// <p>
/// Substance
Property additive As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "additive", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Time of processing.
Property timeDateTime As %String(MAXLEN = 1000000, XMLNAME = "timeDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Time of processing.
Property timePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "timePeriod", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "BiologicallyDerivedProduct.processing";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "BiologicallyDerivedProduct.processing";

Storage Default
{
<Data name="processingDefaultData">
<Subscript>"processing"</Subscript>
<Value name="1">
<Value>description</Value>
</Value>
<Value name="2">
<Value>procedure</Value>
</Value>
<Value name="3">
<Value>additive</Value>
</Value>
<Value name="4">
<Value>timeDateTime</Value>
</Value>
<Value name="5">
<Value>timePeriod</Value>
</Value>
</Data>
<DefaultData>processingDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
