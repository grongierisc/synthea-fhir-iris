/// Parameters for the operation/query.
Class HS.FHIR.vR4.Model.Element.OperationDefinition.parameter Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// Name in Parameters.parameter.name or in URL.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// in | out
/// <p>
/// operation-parameter-use|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend operation-parameter-use|4.0.1 and you may NOT use codes from other ValueSets.
Property use As %String(MAXLEN = 1000000, XMLNAME = "use", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// integer
/// <p>
/// Minimum Cardinality.
Property min As %Integer(XMLNAME = "min", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Maximum Cardinality (a number or *)
Property max As %String(MAXLEN = 1000000, XMLNAME = "max", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Description of meaning/use.
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// What type this parameter has.
/// <p>
/// all-types|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend all-types|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// If type is Reference | canonical, 
/// allowed targets
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property targetProfile As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "targetProfile", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// number | date | string | token | reference | composite | quantity | uri | special
/// <p>
/// search-param-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend search-param-type|4.0.1 and you may NOT use codes from other ValueSets.
Property searchType As %String(MAXLEN = 1000000, XMLNAME = "searchType", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// ValueSet details if this is coded.
Property binding As HS.FHIR.vR4.Model.Element.OperationDefinition.parameter.binding(XMLNAME = "binding", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// References to this parameter.
Property referencedFrom As List Of HS.FHIR.vR4.Model.Element.OperationDefinition.parameter.referencedFrom(XMLNAME = "referencedFrom", XMLPROJECTION = "ELEMENT");

/// OperationDefinition:parameter
/// <p>
/// Parts of a nested Parameter.
Property part As List Of HS.FHIR.vR4.Model.Element.OperationDefinition.parameter(XMLNAME = "part", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "OperationDefinition.parameter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "OperationDefinition.parameter";

}
