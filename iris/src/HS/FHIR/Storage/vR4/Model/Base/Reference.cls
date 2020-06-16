/// A reference from one resource to another.
Class HS.FHIR.Storage.vR4.Model.Base.Reference Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Literal reference, 
/// Relative, 
/// internal or absolute URL.
Property reference As %String(MAXLEN = 1000000, XMLNAME = "reference", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Type the reference refers to (e.g. 
/// \"Patient\")
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// Logical reference, 
/// when literal reference is not known.
Property identifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Text alternative for the resource.
Property display As %String(MAXLEN = 1000000, XMLNAME = "display", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Reference";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Reference";

Storage Default
{
<Data name="ReferenceDefaultData">
<Subscript>"Reference"</Subscript>
<Value name="1">
<Value>reference</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
<Value name="3">
<Value>identifier</Value>
</Value>
<Value name="4">
<Value>display</Value>
</Value>
</Data>
<DefaultData>ReferenceDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
