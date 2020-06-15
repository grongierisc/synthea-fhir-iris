/// What defines the members of the research element.
Class HS.FHIR.vR4.Model.Element.ResearchElementDefinition.characteristic Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
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
Property definitionCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "definitionCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// DataRequirement
/// <p>
/// What code or expression defines members?
Property definitionDataRequirement As HS.FHIR.vR4.Model.Datatype.DataRequirement(XMLNAME = "definitionDataRequirement", XMLPROJECTION = "ELEMENT") [ Required ];

/// Expression
/// <p>
/// What code or expression defines members?
Property definitionExpression As HS.FHIR.vR4.Model.Datatype.Expression(XMLNAME = "definitionExpression", XMLPROJECTION = "ELEMENT") [ Required ];

/// UsageContext
/// <p>
/// What code/value pairs define members?
Property usageContext As List Of HS.FHIR.vR4.Model.Datatype.UsageContext(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "usageContext", XMLPROJECTION = "ELEMENT");

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
Property unitOfMeasure As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "unitOfMeasure", XMLPROJECTION = "ELEMENT");

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
Property studyEffectiveDuration As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "studyEffectiveDuration", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// What time period does the study cover.
Property studyEffectivePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "studyEffectivePeriod", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// What time period does the study cover.
Property studyEffectiveTiming As HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "studyEffectiveTiming", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// Observation time from study start.
Property studyEffectiveTimeFromStart As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "studyEffectiveTimeFromStart", XMLPROJECTION = "ELEMENT");

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
Property participantEffectiveDuration As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "participantEffectiveDuration", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// What time period do participants cover.
Property participantEffectivePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "participantEffectivePeriod", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// What time period do participants cover.
Property participantEffectiveTiming As HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "participantEffectiveTiming", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// Observation time from study start.
Property participantEffectiveTimeFromStart As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "participantEffectiveTimeFromStart", XMLPROJECTION = "ELEMENT");

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

}
