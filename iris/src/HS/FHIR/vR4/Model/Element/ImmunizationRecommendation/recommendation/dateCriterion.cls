/// Dates governing proposed immunization.
Class HS.FHIR.vR4.Model.Element.ImmunizationRecommendation.recommendation.dateCriterion Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of date.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-recommendation-date-criterion shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// dateTime
/// <p>
/// Recommended date.
Property value As %String(MAXLEN = 1000000, XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImmunizationRecommendation.recommendation.dateCriterion";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImmunizationRecommendation.recommendation.dateCriterion";

}
