/// What defines the members of the evidence element.
Class HS.FHIR.vR4.Model.Element.EvidenceVariable.characteristic Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Natural language description of the characteristic.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

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

/// Reference
/// <p>
/// What code or expression defines members?
/// <p>
/// Group.
Property definitionReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "definitionReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// TriggerDefinition
/// <p>
/// What code or expression defines members?
Property definitionTriggerDefinition As HS.FHIR.vR4.Model.Datatype.TriggerDefinition(XMLNAME = "definitionTriggerDefinition", XMLPROJECTION = "ELEMENT") [ Required ];

/// UsageContext
/// <p>
/// What code/value pairs define members?
Property usageContext As List Of HS.FHIR.vR4.Model.Datatype.UsageContext(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "usageContext", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether the characteristic includes or excludes members.
Property exclude As %Boolean(XMLNAME = "exclude", XMLPROJECTION = "ATTRIBUTE");

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
Property timeFromStart As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "timeFromStart", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// mean | median | mean-of-mean | mean-of-median | median-of-mean | median-of-median
/// <p>
/// group-measure|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend group-measure|4.0.1 and you may NOT use codes from other ValueSets.
Property groupMeasure As %String(MAXLEN = 1000000, XMLNAME = "groupMeasure", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EvidenceVariable.characteristic";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EvidenceVariable.characteristic";

}
