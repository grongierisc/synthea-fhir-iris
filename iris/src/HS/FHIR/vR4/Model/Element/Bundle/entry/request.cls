/// Additional execution information (transaction/batch/history)
Class HS.FHIR.vR4.Model.Element.Bundle.entry.request Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// GET | HEAD | POST | PUT | DELETE | PATCH
/// <p>
/// http-verb|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend http-verb|4.0.1 and you may NOT use codes from other ValueSets.
Property method As %String(MAXLEN = 1000000, XMLNAME = "method", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// uri
/// <p>
/// URL for HTTP equivalent of this entry.
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// For managing cache currency.
Property ifNoneMatch As %String(MAXLEN = 1000000, XMLNAME = "ifNoneMatch", XMLPROJECTION = "ATTRIBUTE");

/// instant
/// <p>
/// For managing cache currency.
Property ifModifiedSince As %String(MAXLEN = 1000000, XMLNAME = "ifModifiedSince", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// For managing update contention.
Property ifMatch As %String(MAXLEN = 1000000, XMLNAME = "ifMatch", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// For conditional creates.
Property ifNoneExist As %String(MAXLEN = 1000000, XMLNAME = "ifNoneExist", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Bundle.entry.request";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Bundle.entry.request";

}
