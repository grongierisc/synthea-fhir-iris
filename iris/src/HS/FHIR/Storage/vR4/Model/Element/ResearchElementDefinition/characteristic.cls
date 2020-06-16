/// What defines the members of the research element.
Class HS.FHIR.Storage.vR4.Model.Element.ResearchElementDefinition.characteristic Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// canonical
/// <p>
/// What code or expression defines members?
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property definitionCanonical As %String(MAXLEN = 1000000, XMLNAME = "definitionCanonical", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// What code or expression defines members?
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property definitionCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "definitionCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// DataRequirement
/// <p>
/// What code or expression defines members?
Property definitionDataRequirement As HS.FHIR.Storage.vR4.Model.Datatype.DataRequirement(XMLNAME = "definitionDataRequirement", XMLPROJECTION = "ELEMENT") [ Required ];

/// Expression
/// <p>
/// What code or expression defines members?
Property definitionExpression As HS.FHIR.Storage.vR4.Model.Datatype.Expression(XMLNAME = "definitionExpression", XMLPROJECTION = "ELEMENT") [ Required ];

/// UsageContext
/// <p>
/// What code/value pairs define members?
Property usageContext As array Of HS.FHIR.Storage.vR4.Model.Datatype.UsageContext(XMLNAME = "usageContext", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether the characteristic includes or excludes members.
Property exclude As %Boolean(XMLNAME = "exclude", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// What unit is the outcome described in?
/// <p>
/// ucum-units|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend ucum-units|4.0.1 and you may NOT use codes from other ValueSets.
Property unitOfMeasure As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "unitOfMeasure", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// What time period does the study cover.
Property studyEffectiveDescription As %String(MAXLEN = 1000000, XMLNAME = "studyEffectiveDescription", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// What time period does the study cover.
Property studyEffectiveDateTime As %String(MAXLEN = 1000000, XMLNAME = "studyEffectiveDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Duration
/// <p>
/// What time period does the study cover.
Property studyEffectiveDuration As HS.FHIR.Storage.vR4.Model.Datatype.Duration(XMLNAME = "studyEffectiveDuration", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// What time period does the study cover.
Property studyEffectivePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "studyEffectivePeriod", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// What time period does the study cover.
Property studyEffectiveTiming As HS.FHIR.Storage.vR4.Model.Datatype.Timing(XMLNAME = "studyEffectiveTiming", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// Observation time from study start.
Property studyEffectiveTimeFromStart As HS.FHIR.Storage.vR4.Model.Datatype.Duration(XMLNAME = "studyEffectiveTimeFromStart", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// mean | median | mean-of-mean | mean-of-median | median-of-mean | median-of-median
/// <p>
/// group-measure|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend group-measure|4.0.1 and you may NOT use codes from other ValueSets.
Property studyEffectiveGroupMeasure As %String(MAXLEN = 1000000, XMLNAME = "studyEffectiveGroupMeasure", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// What time period do participants cover.
Property participantEffectiveDescription As %String(MAXLEN = 1000000, XMLNAME = "participantEffectiveDescription", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// What time period do participants cover.
Property participantEffectiveDateTime As %String(MAXLEN = 1000000, XMLNAME = "participantEffectiveDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Duration
/// <p>
/// What time period do participants cover.
Property participantEffectiveDuration As HS.FHIR.Storage.vR4.Model.Datatype.Duration(XMLNAME = "participantEffectiveDuration", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// What time period do participants cover.
Property participantEffectivePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "participantEffectivePeriod", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// What time period do participants cover.
Property participantEffectiveTiming As HS.FHIR.Storage.vR4.Model.Datatype.Timing(XMLNAME = "participantEffectiveTiming", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// Observation time from study start.
Property participantEffectiveTimeFromStart As HS.FHIR.Storage.vR4.Model.Datatype.Duration(XMLNAME = "participantEffectiveTimeFromStart", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// mean | median | mean-of-mean | mean-of-median | median-of-mean | median-of-median
/// <p>
/// group-measure|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend group-measure|4.0.1 and you may NOT use codes from other ValueSets.
Property participantEffectiveGroupMeasure As %String(MAXLEN = 1000000, XMLNAME = "participantEffectiveGroupMeasure", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ResearchElementDefinition.characteristic";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ResearchElementDefinition.characteristic";

Storage Default
{
<Data name="characteristicDefaultData">
<Subscript>"characteristic"</Subscript>
<Value name="1">
<Value>definitionCanonical</Value>
</Value>
<Value name="2">
<Value>definitionCodeableConcept</Value>
</Value>
<Value name="3">
<Value>definitionDataRequirement</Value>
</Value>
<Value name="4">
<Value>definitionExpression</Value>
</Value>
<Value name="5">
<Value>exclude</Value>
</Value>
<Value name="6">
<Value>unitOfMeasure</Value>
</Value>
<Value name="7">
<Value>studyEffectiveDescription</Value>
</Value>
<Value name="8">
<Value>studyEffectiveDateTime</Value>
</Value>
<Value name="9">
<Value>studyEffectiveDuration</Value>
</Value>
<Value name="10">
<Value>studyEffectivePeriod</Value>
</Value>
<Value name="11">
<Value>studyEffectiveTiming</Value>
</Value>
<Value name="12">
<Value>studyEffectiveTimeFromStart</Value>
</Value>
<Value name="13">
<Value>studyEffectiveGroupMeasure</Value>
</Value>
<Value name="14">
<Value>participantEffectiveDescription</Value>
</Value>
<Value name="15">
<Value>participantEffectiveDateTime</Value>
</Value>
<Value name="16">
<Value>participantEffectiveDuration</Value>
</Value>
<Value name="17">
<Value>participantEffectivePeriod</Value>
</Value>
<Value name="18">
<Value>participantEffectiveTiming</Value>
</Value>
<Value name="19">
<Value>participantEffectiveTimeFromStart</Value>
</Value>
<Value name="20">
<Value>participantEffectiveGroupMeasure</Value>
</Value>
</Data>
<Data name="usageContext">
<Attribute>usageContext</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ResearchElementDefinition.characteristic.usageContext"</Subscript>
</Data>
<DefaultData>characteristicDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
