/// Amount of medication administered.
Class HS.FHIR.Storage.vR4.Model.Element.Dosage.doseAndRate Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The kind of dose or rate specified.
/// <p>
/// any FHIR4 code may be used; 
/// dose-rate-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Amount of medication per dose.
Property doseQuantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "doseQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Amount of medication per dose.
Property doseRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "doseRange", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Amount of medication per unit of time.
Property rateQuantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "rateQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Amount of medication per unit of time.
Property rateRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "rateRange", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// Amount of medication per unit of time.
Property rateRatio As HS.FHIR.Storage.vR4.Model.Datatype.Ratio(XMLNAME = "rateRatio", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "doseAndRate";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "doseAndRate";

Storage Default
{
<Data name="doseAndRateDefaultData">
<Subscript>"doseAndRate"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>doseQuantity</Value>
</Value>
<Value name="3">
<Value>doseRange</Value>
</Value>
<Value name="4">
<Value>rateQuantity</Value>
</Value>
<Value name="5">
<Value>rateRange</Value>
</Value>
<Value name="6">
<Value>rateRatio</Value>
</Value>
</Data>
<DefaultData>doseAndRateDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
