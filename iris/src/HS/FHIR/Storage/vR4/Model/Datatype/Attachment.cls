/// Content in a format defined elsewhere.
Class HS.FHIR.Storage.vR4.Model.Datatype.Attachment Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// code
/// <p>
/// Mime type of the content, 
/// with charset etc.
/// <p>
/// mimetypes|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend mimetypes|4.0.1 and you may NOT use codes from other ValueSets.
Property contentType As %String(MAXLEN = 1000000, XMLNAME = "contentType", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Human language of the content (BCP-47)
/// <p>
/// languages is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in languages, 
/// you may use codes from any ValueSet.
Property language As %String(MAXLEN = 1000000, XMLNAME = "language", XMLPROJECTION = "ATTRIBUTE");

/// base64Binary
/// <p>
/// Data inline, 
/// base64ed.
Property data As %Binary(XMLNAME = "data", XMLPROJECTION = "ATTRIBUTE");

/// url
/// <p>
/// Uri where the data can be found.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

/// unsignedInt
/// <p>
/// Number of bytes of content (if url provided)
Property size As %Integer(XMLNAME = "size", XMLPROJECTION = "ATTRIBUTE");

/// base64Binary
/// <p>
/// Hash of the data (sha-1, 
/// base64ed)
Property hash As %Binary(XMLNAME = "hash", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Label to display in place of the data.
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Date attachment was first created.
Property creation As %String(MAXLEN = 1000000, XMLNAME = "creation", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Attachment";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Attachment";

Storage Default
{
<Data name="AttachmentDefaultData">
<Subscript>"Attachment"</Subscript>
<Value name="1">
<Value>contentType</Value>
</Value>
<Value name="2">
<Value>language</Value>
</Value>
<Value name="3">
<Value>data</Value>
</Value>
<Value name="4">
<Value>url</Value>
</Value>
<Value name="5">
<Value>size</Value>
</Value>
<Value name="6">
<Value>hash</Value>
</Value>
<Value name="7">
<Value>title</Value>
</Value>
<Value name="8">
<Value>creation</Value>
</Value>
</Data>
<DefaultData>AttachmentDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
