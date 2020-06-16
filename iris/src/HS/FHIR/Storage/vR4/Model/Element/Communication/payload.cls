/// Message payload.
Class HS.FHIR.Storage.vR4.Model.Element.Communication.payload Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Attachment
/// <p>
/// Message part content.
Property contentAttachment As HS.FHIR.Storage.vR4.Model.Datatype.Attachment(XMLNAME = "contentAttachment", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Message part content.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property contentReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "contentReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Message part content.
Property contentString As %String(MAXLEN = 1000000, XMLNAME = "contentString", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Communication.payload";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Communication.payload";

Storage Default
{
<Data name="payloadDefaultData">
<Subscript>"payload"</Subscript>
<Value name="1">
<Value>contentAttachment</Value>
</Value>
<Value name="2">
<Value>contentReference</Value>
</Value>
<Value name="3">
<Value>contentString</Value>
</Value>
</Data>
<DefaultData>payloadDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
