/// A resource with narrative, 
/// extensions, 
/// and contained resources.
Class HS.FHIR.Storage.vR4.Model.Base.DomainResource Extends HS.FHIR.Storage.vR4.Model.Base.Resource [ Not ProcedureBlock ]
{

Property id As %String(MAXLEN = "");

/// Meta
/// <p>
/// Metadata about the resource.
Property meta As HS.FHIR.Storage.vR4.Model.Base.Meta(XMLNAME = "meta", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// A set of rules under which this content was created.
Property implicitRules As %String(MAXLEN = 1000000, XMLNAME = "implicitRules", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Language of the resource content.
/// <p>
/// languages is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in languages, 
/// you may use codes from any ValueSet.
Property language As %String(MAXLEN = 1000000, XMLNAME = "language", XMLPROJECTION = "ATTRIBUTE");

/// Narrative
/// <p>
/// Text summary of the resource, 
/// for human interpretation.
Property text As HS.FHIR.Storage.vR4.Model.Base.Narrative(XMLNAME = "text", XMLPROJECTION = "ELEMENT");

/// Resource
/// <p>
/// Contained, 
/// inline Resources.
Property contained As array Of HS.FHIR.Storage.vR4.Model.Base.Resource(XMLNAME = "contained", XMLPROJECTION = "ELEMENT");

/// Extension
/// <p>
/// Additional content defined by implementations.
Property extension As array Of HS.FHIR.Storage.vR4.Model.Base.Extension(XMLNAME = "extension", XMLPROJECTION = "ELEMENT");

/// Extension
/// <p>
/// Extensions that cannot be ignored.
Property modifierExtension As array Of HS.FHIR.Storage.vR4.Model.Base.Extension(XMLNAME = "modifierExtension", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DomainResource";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DomainResource";

Storage Default
{
<Data name="DomainResourceDefaultData">
<Subscript>"DomainResource"</Subscript>
<Value name="1">
<Value>text</Value>
</Value>
</Data>
<Data name="contained">
<Attribute>contained</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Base.DomainResource.contained"</Subscript>
</Data>
<Data name="extension">
<Attribute>extension</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Base.DomainResource.extension"</Subscript>
</Data>
<Data name="modifierExtension">
<Attribute>modifierExtension</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Base.DomainResource.modifierExtension"</Subscript>
</Data>
<DefaultData>DomainResourceDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
