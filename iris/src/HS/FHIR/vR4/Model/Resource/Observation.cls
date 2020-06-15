/// Measurements and simple assertions.
Class HS.FHIR.vR4.Model.Resource.Observation Extends HS.FHIR.vR4.Model.Base.DomainResource
{

/// Identifier
/// <p>
/// Business Identifier for observation.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Fulfills plan, 
/// proposal or order.
/// <p>
/// CarePlan | DeviceRequest | ImmunizationRecommendation | MedicationRequest | NutritionOrder | ServiceRequest
Property basedOn As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Part of referenced event.
/// <p>
/// MedicationAdministration | MedicationDispense | MedicationStatement | Procedure | Immunization | ImagingStudy
Property partOf As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// registered | preliminary | final | amended +
/// <p>
/// observation-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend observation-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Classification of  type of observation.
/// <p>
/// observation-category is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in observation-category, 
/// you may use codes from any ValueSet.
Property category As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Type of observation (code / type)
/// <p>
/// any FHIR4 code may be used; 
/// observation-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Who and/or what the observation is about.
/// <p>
/// Patient | Group | Device | Location
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// What the observation is about, 
/// when it is not about the subject of record.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property focus As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "focus", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Healthcare event during which this observation is made.
/// <p>
/// Encounter
Property encounter As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Clinically relevant time/time-period for observation.
Property effectiveDateTime As %String(MAXLEN = 1000000, XMLNAME = "effectiveDateTime", XMLPROJECTION = "ATTRIBUTE");

/// instant
/// <p>
/// Clinically relevant time/time-period for observation.
Property effectiveInstant As %String(MAXLEN = 1000000, XMLNAME = "effectiveInstant", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Clinically relevant time/time-period for observation.
Property effectivePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "effectivePeriod", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// Clinically relevant time/time-period for observation.
Property effectiveTiming As HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "effectiveTiming", XMLPROJECTION = "ELEMENT");

/// instant
/// <p>
/// Date/Time this version was made available.
Property issued As %String(MAXLEN = 1000000, XMLNAME = "issued", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who is responsible for the observation.
/// <p>
/// Practitioner | PractitionerRole | Organization | CareTeam | Patient | RelatedPerson
Property performer As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Actual result.
Property valueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Actual result.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "valueCodeableConcept", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Actual result.
Property valueDateTime As %String(MAXLEN = 1000000, XMLNAME = "valueDateTime", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Actual result.
Property valueInteger As %Integer(XMLNAME = "valueInteger", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Actual result.
Property valuePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "valuePeriod", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Actual result.
Property valueQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Actual result.
Property valueRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "valueRange", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// Actual result.
Property valueRatio As HS.FHIR.vR4.Model.Datatype.Ratio(XMLNAME = "valueRatio", XMLPROJECTION = "ELEMENT");

/// SampledData
/// <p>
/// Actual result.
Property valueSampledData As HS.FHIR.vR4.Model.Datatype.SampledData(XMLNAME = "valueSampledData", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Actual result.
Property valueString As %String(MAXLEN = 1000000, XMLNAME = "valueString", XMLPROJECTION = "ATTRIBUTE");

/// time
/// <p>
/// Actual result.
Property valueTime As %String(MAXLEN = 1000000, XMLNAME = "valueTime", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Why the result is missing.
/// <p>
/// data-absent-reason is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in data-absent-reason, 
/// you may formally EXTEND data-absent-reason to add codes to it.
Property dataAbsentReason As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "dataAbsentReason", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// High, 
/// low, 
/// normal, 
/// etc.
/// <p>
/// observation-interpretation is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in observation-interpretation, 
/// you may formally EXTEND observation-interpretation to add codes to it.
Property interpretation As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "interpretation", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments about the observation.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Observed body part.
/// <p>
/// any FHIR4 code may be used; 
/// body-site shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property bodySite As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// How it was done.
/// <p>
/// any FHIR4 code may be used; 
/// observation-methods shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property method As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "method", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Specimen used for this observation.
/// <p>
/// Specimen
Property specimen As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "specimen", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// (Measurement) Device.
/// <p>
/// Device | DeviceMetric
Property device As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "device", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Provides guide for interpretation.
Property referenceRange As List Of HS.FHIR.vR4.Model.Element.Observation.referenceRange(XMLNAME = "referenceRange", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Related resource that belongs to the Observation group.
/// <p>
/// Observation | QuestionnaireResponse | MolecularSequence
Property hasMember As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "hasMember", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Related measurements the observation is made from.
/// <p>
/// DocumentReference | ImagingStudy | Media | QuestionnaireResponse | Observation | MolecularSequence
Property derivedFrom As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "derivedFrom", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Component results.
Property component As List Of HS.FHIR.vR4.Model.Element.Observation.component(XMLNAME = "component", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Observation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Observation";

Storage Default
{
<Data name="ObservationDefaultData">
<Subscript>"Observation"</Subscript>
<Value name="1">
<Value>identifier</Value>
</Value>
<Value name="2">
<Value>basedOn</Value>
</Value>
<Value name="3">
<Value>partOf</Value>
</Value>
<Value name="4">
<Value>status</Value>
</Value>
<Value name="5">
<Value>category</Value>
</Value>
<Value name="6">
<Value>code</Value>
</Value>
<Value name="7">
<Value>subject</Value>
</Value>
<Value name="8">
<Value>focus</Value>
</Value>
<Value name="9">
<Value>encounter</Value>
</Value>
<Value name="10">
<Value>effectiveDateTime</Value>
</Value>
<Value name="11">
<Value>effectiveInstant</Value>
</Value>
<Value name="12">
<Value>effectivePeriod</Value>
</Value>
<Value name="13">
<Value>effectiveTiming</Value>
</Value>
<Value name="14">
<Value>issued</Value>
</Value>
<Value name="15">
<Value>performer</Value>
</Value>
<Value name="16">
<Value>valueBoolean</Value>
</Value>
<Value name="17">
<Value>valueCodeableConcept</Value>
</Value>
<Value name="18">
<Value>valueDateTime</Value>
</Value>
<Value name="19">
<Value>valueInteger</Value>
</Value>
<Value name="20">
<Value>valuePeriod</Value>
</Value>
<Value name="21">
<Value>valueQuantity</Value>
</Value>
<Value name="22">
<Value>valueRange</Value>
</Value>
<Value name="23">
<Value>valueRatio</Value>
</Value>
<Value name="24">
<Value>valueSampledData</Value>
</Value>
<Value name="25">
<Value>valueString</Value>
</Value>
<Value name="26">
<Value>valueTime</Value>
</Value>
<Value name="27">
<Value>dataAbsentReason</Value>
</Value>
<Value name="28">
<Value>interpretation</Value>
</Value>
<Value name="29">
<Value>note</Value>
</Value>
<Value name="30">
<Value>bodySite</Value>
</Value>
<Value name="31">
<Value>method</Value>
</Value>
<Value name="32">
<Value>specimen</Value>
</Value>
<Value name="33">
<Value>device</Value>
</Value>
<Value name="34">
<Value>referenceRange</Value>
</Value>
<Value name="35">
<Value>hasMember</Value>
</Value>
<Value name="36">
<Value>derivedFrom</Value>
</Value>
<Value name="37">
<Value>component</Value>
</Value>
</Data>
<DefaultData>ObservationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
