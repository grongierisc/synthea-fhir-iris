/// Describes the calibrations that have been performed or that are required to be performed.
Class HS.FHIR.Storage.vR4.Model.Element.DeviceMetric.calibration Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// unspecified | offset | gain | two-point
/// <p>
/// metric-calibration-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend metric-calibration-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// not-calibrated | calibration-required | calibrated | unspecified
/// <p>
/// metric-calibration-state|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend metric-calibration-state|4.0.1 and you may NOT use codes from other ValueSets.
Property state As %String(MAXLEN = 1000000, XMLNAME = "state", XMLPROJECTION = "ATTRIBUTE");

/// instant
/// <p>
/// Describes the time last calibration has been performed.
Property time As %String(MAXLEN = 1000000, XMLNAME = "time", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceMetric.calibration";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceMetric.calibration";

Storage Default
{
<Data name="calibrationDefaultData">
<Subscript>"calibration"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>state</Value>
</Value>
<Value name="3">
<Value>time</Value>
</Value>
</Data>
<DefaultData>calibrationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
