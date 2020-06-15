/// Protocol followed by the provider.
Class HS.FHIR.vR4.Model.Element.Immunization.protocolApplied Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Name of vaccine series.
Property series As %String(MAXLEN = 1000000, XMLNAME = "series", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who is responsible for publishing the recommendations.
/// <p>
/// Organization
Property authority As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "authority", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Vaccine preventatable disease being targetted.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-target-disease shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property targetDisease As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "targetDisease", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Dose number within series.
Property doseNumberPositiveInt As %Integer(XMLNAME = "doseNumberPositiveInt", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Dose number within series.
Property doseNumberString As %String(MAXLEN = 1000000, XMLNAME = "doseNumberString", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// positiveInt
/// <p>
/// Recommended number of doses for immunity.
Property seriesDosesPositiveInt As %Integer(XMLNAME = "seriesDosesPositiveInt", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Recommended number of doses for immunity.
Property seriesDosesString As %String(MAXLEN = 1000000, XMLNAME = "seriesDosesString", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Immunization.protocolApplied";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Immunization.protocolApplied";

}
