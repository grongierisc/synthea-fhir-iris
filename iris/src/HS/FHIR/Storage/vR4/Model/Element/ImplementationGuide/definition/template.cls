/// A template for building resources.
Class HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.definition.template Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// Type of template specified.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// The source location for the template.
Property source As %String(MAXLEN = 1000000, XMLNAME = "source", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// The scope in which the template applies.
Property scope As %String(MAXLEN = 1000000, XMLNAME = "scope", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImplementationGuide.definition.template";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImplementationGuide.definition.template";

Storage Default
{
<Data name="templateDefaultData">
<Subscript>"template"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>source</Value>
</Value>
<Value name="3">
<Value>scope</Value>
</Value>
</Data>
<DefaultData>templateDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
