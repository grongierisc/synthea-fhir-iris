/// A specific version of the resource.
Class HS.FHIR.vR4.Model.Element.ExampleScenario.instance.version Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// The identifier of a specific version of a resource.
Property versionId As %String(MAXLEN = 1000000, XMLNAME = "versionId", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// markdown
/// <p>
/// The description of the resource version.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExampleScenario.instance.version";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExampleScenario.instance.version";

}
