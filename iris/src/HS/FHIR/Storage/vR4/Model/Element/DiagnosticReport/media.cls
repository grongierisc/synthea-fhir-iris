/// Key images associated with this report.
Class HS.FHIR.Storage.vR4.Model.Element.DiagnosticReport.media Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
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
Property link As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "link", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DiagnosticReport.media";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DiagnosticReport.media";

Storage Default
{
<Data name="mediaDefaultData">
<Subscript>"media"</Subscript>
<Value name="1">
<Value>comment</Value>
</Value>
<Value name="2">
<Value>link</Value>
</Value>
</Data>
<DefaultData>mediaDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
