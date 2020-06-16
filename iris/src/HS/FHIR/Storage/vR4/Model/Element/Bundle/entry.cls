/// Entry in the bundle - will have a resource or information.
Class HS.FHIR.Storage.vR4.Model.Element.Bundle.entry Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Bundle:link
/// <p>
/// Links related to this entry.
Property link As array Of HS.FHIR.Storage.vR4.Model.Element.Bundle.link(XMLNAME = "link", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// URI for resource (Absolute URL server address or URI for UUID/OID)
Property fullUrl As %String(MAXLEN = 1000000, XMLNAME = "fullUrl", XMLPROJECTION = "ATTRIBUTE");

/// Resource
/// <p>
/// A resource in the bundle.
Property resource As HS.FHIR.Storage.vR4.Model.Base.Resource(XMLNAME = "resource", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Search related information.
Property search As HS.FHIR.Storage.vR4.Model.Element.Bundle.entry.search(XMLNAME = "search", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Additional execution information (transaction/batch/history)
Property request As HS.FHIR.Storage.vR4.Model.Element.Bundle.entry.request(XMLNAME = "request", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Results of execution (transaction/batch/history)
Property response As HS.FHIR.Storage.vR4.Model.Element.Bundle.entry.response(XMLNAME = "response", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Bundle.entry";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Bundle.entry";

Storage Default
{
<Data name="entryDefaultData">
<Subscript>"entry"</Subscript>
<Value name="1">
<Value>fullUrl</Value>
</Value>
<Value name="2">
<Value>resource</Value>
</Value>
<Value name="3">
<Value>search</Value>
</Value>
<Value name="4">
<Value>request</Value>
</Value>
<Value name="5">
<Value>response</Value>
</Value>
</Data>
<Data name="link">
<Attribute>link</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Bundle.entry.link"</Subscript>
</Data>
<DefaultData>entryDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
