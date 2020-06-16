/// Information needed to build the IG.
Class HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.definition Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// BackboneElement
/// <p>
/// Grouping used to present related resources in the IG.
Property grouping As array Of HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.definition.grouping(XMLNAME = "grouping", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Resource in the implementation guide.
Property resource As array Of HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.definition.resource(XMLNAME = "resource", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Page/Section in the Guide.
Property page As HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.definition.page(XMLNAME = "page", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Defines how IG is built by tools.
Property parameter As array Of HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.definition.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A template for building resources.
Property template As array Of HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.definition.template(XMLNAME = "template", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImplementationGuide.definition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImplementationGuide.definition";

Storage Default
{
<Data name="definitionDefaultData">
<Subscript>"definition"</Subscript>
<Value name="1">
<Value>page</Value>
</Value>
</Data>
<Data name="grouping">
<Attribute>grouping</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.definition.grouping"</Subscript>
</Data>
<Data name="parameter">
<Attribute>parameter</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.definition.parameter"</Subscript>
</Data>
<Data name="resource">
<Attribute>resource</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.definition.resource"</Subscript>
</Data>
<Data name="template">
<Attribute>template</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.definition.template"</Subscript>
</Data>
<DefaultData>definitionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
