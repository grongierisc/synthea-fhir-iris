/// How a resource is related to the compartment.
Class HS.FHIR.vR4.Model.Element.CompartmentDefinition.resource Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// Name of resource type.
/// <p>
/// resource-types|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend resource-types|4.0.1 and you may NOT use codes from other ValueSets.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Search Parameter Name, 
/// or chained parameters.
Property param As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "param", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Additional documentation about the resource and compartment.
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CompartmentDefinition.resource";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CompartmentDefinition.resource";

}
