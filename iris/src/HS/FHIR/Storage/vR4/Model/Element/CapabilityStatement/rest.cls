/// If the endpoint is a RESTful one.
Class HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.rest Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// client | server
/// <p>
/// restful-capability-mode|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend restful-capability-mode|4.0.1 and you may NOT use codes from other ValueSets.
Property mode As %String(MAXLEN = 1000000, XMLNAME = "mode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// markdown
/// <p>
/// General description of implementation.
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Information about security of implementation.
Property security As HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.rest.security(XMLNAME = "security", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Resource served on the REST interface.
Property resource As array Of HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.rest.resource(XMLNAME = "resource", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// What operations are supported?
Property interaction As array Of HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.rest.interaction(XMLNAME = "interaction", XMLPROJECTION = "ELEMENT");

/// CapabilityStatement:rest[n].resource[n].searchParam
/// <p>
/// Search parameters for searching all resources.
Property searchParam As array Of HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.rest.resource.searchParam(XMLNAME = "searchParam", XMLPROJECTION = "ELEMENT");

/// CapabilityStatement:rest[n].resource[n].operation
/// <p>
/// Definition of a system level operation.
Property operation As array Of HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.rest.resource.operation(XMLNAME = "operation", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Compartments served/used by system.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property compartment As array Of %String(MAXLEN = 1000000, XMLNAME = "compartment", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CapabilityStatement.rest";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CapabilityStatement.rest";

Storage Default
{
<Data name="compartment">
<Attribute>compartment</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.rest.compartment"</Subscript>
</Data>
<Data name="interaction">
<Attribute>interaction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.rest.interaction"</Subscript>
</Data>
<Data name="operation">
<Attribute>operation</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.rest.operation"</Subscript>
</Data>
<Data name="resource">
<Attribute>resource</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.rest.resource"</Subscript>
</Data>
<Data name="restDefaultData">
<Subscript>"rest"</Subscript>
<Value name="1">
<Value>mode</Value>
</Value>
<Value name="2">
<Value>documentation</Value>
</Value>
<Value name="3">
<Value>security</Value>
</Value>
</Data>
<Data name="searchParam">
<Attribute>searchParam</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.rest.searchParam"</Subscript>
</Data>
<DefaultData>restDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
