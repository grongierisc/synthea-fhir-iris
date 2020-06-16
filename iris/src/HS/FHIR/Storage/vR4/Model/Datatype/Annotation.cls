/// Text node with attribution.
Class HS.FHIR.Storage.vR4.Model.Datatype.Annotation Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Individual responsible for the annotation.
/// <p>
/// Practitioner | Patient | RelatedPerson | Organization
Property authorReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "authorReference", XMLPROJECTION = "ELEMENT");

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

Storage Default
{
<Data name="AnnotationDefaultData">
<Subscript>"Annotation"</Subscript>
<Value name="1">
<Value>authorReference</Value>
</Value>
<Value name="2">
<Value>authorString</Value>
</Value>
<Value name="3">
<Value>time</Value>
</Value>
<Value name="4">
<Value>text</Value>
</Value>
</Data>
<DefaultData>AnnotationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
