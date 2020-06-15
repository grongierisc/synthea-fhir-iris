/// Key images associated with this report.
Class HS.FHIR.vR4.Model.Element.DiagnosticReport.media Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Comment about the image (e.g. 
/// explanation)
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Reference to the image source.
/// <p>
/// Media
Property link As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "link", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DiagnosticReport.media";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DiagnosticReport.media";

}
