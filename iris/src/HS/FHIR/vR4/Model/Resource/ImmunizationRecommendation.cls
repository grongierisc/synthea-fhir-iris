/// Guidance or advice relating to an immunization.
Class HS.FHIR.vR4.Model.Resource.ImmunizationRecommendation Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business identifier.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who this profile is for.
/// <p>
/// Patient
Property patient As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];

/// dateTime
/// <p>
/// Date recommendation(s) created.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Who is responsible for protocol.
/// <p>
/// Organization
Property authority As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "authority", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Vaccine administration recommendations.
Property recommendation As List Of HS.FHIR.vR4.Model.Element.ImmunizationRecommendation.recommendation(XMLNAME = "recommendation", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImmunizationRecommendation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImmunizationRecommendation";

}
