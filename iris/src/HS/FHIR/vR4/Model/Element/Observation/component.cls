/// Component results.
Class HS.FHIR.vR4.Model.Element.Observation.component Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of component observation (code / type)
/// <p>
/// any FHIR4 code may be used; 
/// observation-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// boolean
/// <p>
/// Actual component result.
Property valueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Actual component result.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "valueCodeableConcept", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Actual component result.
Property valueDateTime As %String(MAXLEN = 1000000, XMLNAME = "valueDateTime", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Actual component result.
Property valueInteger As %Integer(XMLNAME = "valueInteger", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Actual component result.
Property valuePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "valuePeriod", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Actual component result.
Property valueQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Actual component result.
Property valueRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "valueRange", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// Actual component result.
Property valueRatio As HS.FHIR.vR4.Model.Datatype.Ratio(XMLNAME = "valueRatio", XMLPROJECTION = "ELEMENT");

/// SampledData
/// <p>
/// Actual component result.
Property valueSampledData As HS.FHIR.vR4.Model.Datatype.SampledData(XMLNAME = "valueSampledData", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Actual component result.
Property valueString As %String(MAXLEN = 1000000, XMLNAME = "valueString", XMLPROJECTION = "ATTRIBUTE");

/// time
/// <p>
/// Actual component result.
Property valueTime As %String(MAXLEN = 1000000, XMLNAME = "valueTime", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Why the component result is missing.
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

/// Observation:referenceRange
/// <p>
/// Provides guide for interpretation of component result.
Property referenceRange As List Of HS.FHIR.vR4.Model.Element.Observation.referenceRange(XMLNAME = "referenceRange", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Observation.component";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Observation.component";

}
