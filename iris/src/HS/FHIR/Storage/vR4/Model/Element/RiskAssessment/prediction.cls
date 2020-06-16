/// Outcome predicted.
Class HS.FHIR.Storage.vR4.Model.Element.RiskAssessment.prediction Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Possible outcome for the subject.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property outcome As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "outcome", XMLPROJECTION = "ELEMENT");

/// decimal
/// <p>
/// Likelihood of specified outcome.
Property probabilityDecimal As %Decimal(XMLNAME = "probabilityDecimal", XMLPROJECTION = "ATTRIBUTE");

/// Range
/// <p>
/// Likelihood of specified outcome.
Property probabilityRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "probabilityRange", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Likelihood of specified outcome as a qualitative value.
/// <p>
/// any FHIR4 code may be used; 
/// risk-probability shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property qualitativeRisk As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "qualitativeRisk", XMLPROJECTION = "ELEMENT");

/// decimal
/// <p>
/// Relative likelihood.
Property relativeRisk As %Decimal(XMLNAME = "relativeRisk", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Timeframe or age range.
Property whenPeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "whenPeriod", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Timeframe or age range.
Property whenRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "whenRange", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Explanation of prediction.
Property rationale As %String(MAXLEN = 1000000, XMLNAME = "rationale", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "RiskAssessment.prediction";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "RiskAssessment.prediction";

Storage Default
{
<Data name="predictionDefaultData">
<Subscript>"prediction"</Subscript>
<Value name="1">
<Value>outcome</Value>
</Value>
<Value name="2">
<Value>probabilityDecimal</Value>
</Value>
<Value name="3">
<Value>probabilityRange</Value>
</Value>
<Value name="4">
<Value>qualitativeRisk</Value>
</Value>
<Value name="5">
<Value>relativeRisk</Value>
</Value>
<Value name="6">
<Value>whenPeriod</Value>
</Value>
<Value name="7">
<Value>whenRange</Value>
</Value>
<Value name="8">
<Value>rationale</Value>
</Value>
</Data>
<DefaultData>predictionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
