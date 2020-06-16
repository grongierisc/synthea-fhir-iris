/// Related things.
Class HS.FHIR.Storage.vR4.Model.Element.DocumentManifest.related Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Identifiers of things that are related.
Property identifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Related Resource.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property ref As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "ref", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DocumentManifest.related";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DocumentManifest.related";

Storage Default
{
<Data name="relatedDefaultData">
<Subscript>"related"</Subscript>
<Value name="1">
<Value>identifier</Value>
</Value>
<Value name="2">
<Value>ref</Value>
</Value>
</Data>
<DefaultData>relatedDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
