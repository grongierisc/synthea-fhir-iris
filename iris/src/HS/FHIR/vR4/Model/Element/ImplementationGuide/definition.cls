/// Information needed to build the IG.
Class HS.FHIR.vR4.Model.Element.ImplementationGuide.definition Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// BackboneElement
/// <p>
/// Grouping used to present related resources in the IG.
Property grouping As List Of HS.FHIR.vR4.Model.Element.ImplementationGuide.definition.grouping(XMLNAME = "grouping", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Resource in the implementation guide.
Property resource As List Of HS.FHIR.vR4.Model.Element.ImplementationGuide.definition.resource(XMLNAME = "resource", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Page/Section in the Guide.
Property page As HS.FHIR.vR4.Model.Element.ImplementationGuide.definition.page(XMLNAME = "page", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Defines how IG is built by tools.
Property parameter As List Of HS.FHIR.vR4.Model.Element.ImplementationGuide.definition.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A template for building resources.
Property template As List Of HS.FHIR.vR4.Model.Element.ImplementationGuide.definition.template(XMLNAME = "template", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImplementationGuide.definition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImplementationGuide.definition";

}
