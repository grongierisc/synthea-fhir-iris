/// What was the estimated risk.
Class HS.FHIR.vR4.Model.Element.RiskEvidenceSynthesis.riskEstimate Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Description of risk estimate.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Type of risk estimate.
/// <p>
/// risk-estimate-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in risk-estimate-type, 
/// you may formally EXTEND risk-estimate-type to add codes to it.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// decimal
/// <p>
/// Point estimate.
Property value As %Decimal(XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// What unit is the outcome described in?
/// <p>
/// ucum-units|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend ucum-units|4.0.1 and you may NOT use codes from other ValueSets.
Property unitOfMeasure As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "unitOfMeasure", XMLPROJECTION = "ELEMENT");

/// integer
/// <p>
/// Sample size for group measured.
Property denominatorCount As %Integer(XMLNAME = "denominatorCount", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Number with the outcome.
Property numeratorCount As %Integer(XMLNAME = "numeratorCount", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// How precise the estimate is.
Property precisionEstimate As List Of HS.FHIR.vR4.Model.Element.RiskEvidenceSynthesis.riskEstimate.precisionEstimate(XMLNAME = "precisionEstimate", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "RiskEvidenceSynthesis.riskEstimate";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "RiskEvidenceSynthesis.riskEstimate";

}
