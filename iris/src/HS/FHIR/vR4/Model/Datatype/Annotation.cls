/// Text node with attribution.
Class HS.FHIR.vR4.Model.Datatype.Annotation Extends (%Persistent,HS.FHIR.vR4.Model.Base.Element) [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Individual responsible for the annotation.
/// <p>
/// Practitioner | Patient | RelatedPerson | Organization
Property authorReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "authorReference", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Individual responsible for the annotation.
Property authorString As %String(MAXLEN = 1000000, XMLNAME = "authorString", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// When the annotation was made.
Property time As %String(MAXLEN = 1000000, XMLNAME = "time", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// The annotation  - text content (as markdown)
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Annotation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Annotation";

}
