/// Data or objects used.
Class HS.FHIR.vR4.Model.Element.AuditEvent.entity Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Specific instance of resource.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property what As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "what", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Type of entity involved.
/// <p>
/// audit-entity-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in audit-entity-type, 
/// you may formally EXTEND audit-entity-type to add codes to it.
Property type As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// What role the entity played.
/// <p>
/// object-role is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in object-role, 
/// you may formally EXTEND object-role to add codes to it.
Property role As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "role", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Life-cycle stage for the entity.
/// <p>
/// object-lifecycle-events is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in object-lifecycle-events, 
/// you may formally EXTEND object-lifecycle-events to add codes to it.
Property lifecycle As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "lifecycle", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Security labels on the entity.
/// <p>
/// security-labels is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in security-labels, 
/// you may formally EXTEND security-labels to add codes to it.
Property securityLabel As list Of HS.FHIR.vR4.Model.Datatype.Coding(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "securityLabel", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Descriptor for entity.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Descriptive text.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// base64Binary
/// <p>
/// Query parameters.
Property query As %Binary(XMLNAME = "query", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Additional Information about the entity.
Property detail As list Of HS.FHIR.vR4.Model.Element.AuditEvent.entity.detail(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "detail", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AuditEvent.entity";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AuditEvent.entity";

Storage Default
{
<Data name="detail">
<Attribute>detail</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.AuditEvent.entity.detail"</Subscript>
</Data>
<Data name="entityDefaultData">
<Subscript>"entity"</Subscript>
<Value name="1">
<Value>what</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
<Value name="3">
<Value>role</Value>
</Value>
<Value name="4">
<Value>lifecycle</Value>
</Value>
<Value name="5">
<Value>name</Value>
</Value>
<Value name="6">
<Value>description</Value>
</Value>
<Value name="7">
<Value>query</Value>
</Value>
</Data>
<Data name="securityLabel">
<Attribute>securityLabel</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.AuditEvent.entity.securityLabel"</Subscript>
</Data>
<DefaultData>entityDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
