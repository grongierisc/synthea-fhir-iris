/// HTML page within the parent IG.
Class HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.manifest.page Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// HTML page name.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Title of the page, 
/// for references.
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Anchor available on the page.
Property anchor As array Of %String(MAXLEN = 1000000, XMLNAME = "anchor", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImplementationGuide.manifest.page";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImplementationGuide.manifest.page";

Storage Default
{
<Data name="anchor">
<Attribute>anchor</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.manifest.page.anchor"</Subscript>
</Data>
<Data name="pageDefaultData">
<Subscript>"page"</Subscript>
<Value name="1">
<Value>name</Value>
</Value>
<Value name="2">
<Value>title</Value>
</Value>
</Data>
<DefaultData>pageDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
