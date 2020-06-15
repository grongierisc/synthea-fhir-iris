/// Consent Verified by patient or family.
Class HS.FHIR.vR4.Model.Element.Consent.verification Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// Has been verified.
Property verified As %Boolean(XMLNAME = "verified", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Person who verified.
/// <p>
/// Patient | RelatedPerson
Property verifiedWith As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "verifiedWith", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When consent verified.
Property verificationDate As %String(MAXLEN = 1000000, XMLNAME = "verificationDate", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Consent.verification";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Consent.verification";

}
