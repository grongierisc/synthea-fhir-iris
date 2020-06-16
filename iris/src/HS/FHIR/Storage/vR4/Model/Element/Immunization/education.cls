/// Educational material presented to patient.
Class HS.FHIR.Storage.vR4.Model.Element.Immunization.education Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Educational material document identifier.
Property documentType As %String(MAXLEN = 1000000, XMLNAME = "documentType", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Educational material reference pointer.
Property reference As %String(MAXLEN = 1000000, XMLNAME = "reference", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Educational material publication date.
Property publicationDate As %String(MAXLEN = 1000000, XMLNAME = "publicationDate", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Educational material presentation date.
Property presentationDate As %String(MAXLEN = 1000000, XMLNAME = "presentationDate", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Immunization.education";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Immunization.education";

Storage Default
{
<Data name="educationDefaultData">
<Subscript>"education"</Subscript>
<Value name="1">
<Value>documentType</Value>
</Value>
<Value name="2">
<Value>reference</Value>
</Value>
<Value name="3">
<Value>publicationDate</Value>
</Value>
<Value name="4">
<Value>presentationDate</Value>
</Value>
</Data>
<DefaultData>educationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
