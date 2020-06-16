/// Additional Information about the entity.
Class HS.FHIR.Storage.vR4.Model.Element.AuditEvent.entity.detail Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Name of the property.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// base64Binary
/// <p>
/// Property value.
Property valueBase64Binary As %Binary(XMLNAME = "valueBase64Binary", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Property value.
Property valueString As %String(MAXLEN = 1000000, XMLNAME = "valueString", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AuditEvent.entity.detail";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AuditEvent.entity.detail";

Storage Default
{
<Data name="detailDefaultData">
<Subscript>"detail"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>valueBase64Binary</Value>
</Value>
<Value name="3">
<Value>valueString</Value>
</Value>
</Data>
<DefaultData>detailDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
