/// Vaccine administration recommendations.
Class HS.FHIR.vR4.Model.Element.ImmunizationRecommendation.recommendation Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Vaccine  or vaccine group recommendation applies to.
/// <p>
/// any FHIR4 code may be used; 
/// vaccine-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property vaccineCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "vaccineCode", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Disease to be immunized against.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-recommendation-target-disease shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property targetDisease As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "targetDisease", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Vaccine which is contraindicated to fulfill the recommendation.
/// <p>
/// any FHIR4 code may be used; 
/// vaccine-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property contraindicatedVaccineCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "contraindicatedVaccineCode", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Vaccine recommendation status.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-recommendation-status shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property forecastStatus As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "forecastStatus", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Vaccine administration status reason.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-recommendation-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property forecastReason As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "forecastReason", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Dates governing proposed immunization.
Property dateCriterion As List Of HS.FHIR.vR4.Model.Element.ImmunizationRecommendation.recommendation.dateCriterion(XMLNAME = "dateCriterion", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Protocol details.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name of vaccination series.
Property series As %String(MAXLEN = 1000000, XMLNAME = "series", XMLPROJECTION = "ATTRIBUTE");

/// positiveInt
/// <p>
/// Recommended dose number within series.
Property doseNumberPositiveInt As %Integer(XMLNAME = "doseNumberPositiveInt", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Recommended dose number within series.
Property doseNumberString As %String(MAXLEN = 1000000, XMLNAME = "doseNumberString", XMLPROJECTION = "ATTRIBUTE");

/// positiveInt
/// <p>
/// Recommended number of doses for immunity.
Property seriesDosesPositiveInt As %Integer(XMLNAME = "seriesDosesPositiveInt", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Recommended number of doses for immunity.
Property seriesDosesString As %String(MAXLEN = 1000000, XMLNAME = "seriesDosesString", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Past immunizations supporting recommendation.
/// <p>
/// Immunization | ImmunizationEvaluation
Property supportingImmunization As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "supportingImmunization", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Patient observations supporting recommendation.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property supportingPatientInformation As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "supportingPatientInformation", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImmunizationRecommendation.recommendation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImmunizationRecommendation.recommendation";

}
