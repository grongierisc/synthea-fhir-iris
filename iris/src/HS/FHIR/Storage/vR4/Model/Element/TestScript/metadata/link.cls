/// Links to the FHIR specification.
Class HS.FHIR.Storage.vR4.Model.Element.TestScript.metadata.link Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// URL to the specification.
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Short description.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.metadata.link";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.metadata.link";

Storage Default
{
<Data name="linkDefaultData">
<Subscript>"link"</Subscript>
<Value name="1">
<Value>url</Value>
</Value>
<Value name="2">
<Value>description</Value>
</Value>
</Data>
<DefaultData>linkDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
