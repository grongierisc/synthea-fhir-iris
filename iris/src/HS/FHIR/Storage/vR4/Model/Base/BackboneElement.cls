/// Base for elements defined inside a resource.
Class HS.FHIR.Storage.vR4.Model.Base.BackboneElement Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

Property id as %String(MAXLEN="");

/// Extension
/// <p>
/// Additional content defined by implementations.
Property extension As array Of HS.FHIR.Storage.vR4.Model.Base.Extension(XMLNAME = "extension", XMLPROJECTION = "ELEMENT");

/// Extension
/// <p>
/// Extensions that cannot be ignored even if unrecognized.
Property modifierExtension As array Of HS.FHIR.Storage.vR4.Model.Base.Extension(XMLNAME = "modifierExtension", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "BackboneElement";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "BackboneElement";

Storage Default
{
<Data name="modifierExtension">
<Attribute>modifierExtension</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Base.BackboneElement.modifierExtension"</Subscript>
</Data>
<Type>%Storage.Persistent</Type>
}

}
