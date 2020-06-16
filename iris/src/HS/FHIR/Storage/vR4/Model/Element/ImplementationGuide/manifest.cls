/// Information about an assembled IG.
Class HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.manifest Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// url
/// <p>
/// Location of rendered implementation guide.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property rendering As %String(MAXLEN = 1000000, XMLNAME = "rendering", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Resource in the implementation guide.
Property resource As array Of HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.manifest.resource(XMLNAME = "resource", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// HTML page within the parent IG.
Property page As array Of HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.manifest.page(XMLNAME = "page", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Image within the IG.
Property image As array Of %String(MAXLEN = 1000000, XMLNAME = "image", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Additional linkable file in IG.
Property other As array Of %String(MAXLEN = 1000000, XMLNAME = "other", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImplementationGuide.manifest";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImplementationGuide.manifest";

Storage Default
{
<Data name="image">
<Attribute>image</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.manifest.image"</Subscript>
</Data>
<Data name="manifestDefaultData">
<Subscript>"manifest"</Subscript>
<Value name="1">
<Value>rendering</Value>
</Value>
</Data>
<Data name="other">
<Attribute>other</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.manifest.other"</Subscript>
</Data>
<Data name="page">
<Attribute>page</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.manifest.page"</Subscript>
</Data>
<Data name="resource">
<Attribute>resource</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.manifest.resource"</Subscript>
</Data>
<DefaultData>manifestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
