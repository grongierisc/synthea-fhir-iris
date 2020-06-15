/// Definition of a parameter to a module.
Class HS.FHIR.vR4.Model.Datatype.ParameterDefinition Extends (%Persistent,HS.FHIR.vR4.Model.Base.Element) [ Not ProcedureBlock ]
{

/// code
/// <p>
/// Name used to access the parameter value.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// in | out
/// <p>
/// operation-parameter-use|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend operation-parameter-use|4.0.1 and you may NOT use codes from other ValueSets.
Property use As %String(MAXLEN = 1000000, XMLNAME = "use", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// integer
/// <p>
/// Minimum cardinality.
Property min As %Integer(XMLNAME = "min", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Maximum cardinality (a number of *)
Property max As %String(MAXLEN = 1000000, XMLNAME = "max", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// A brief description of the parameter.
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// What type of value.
/// <p>
/// all-types|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend all-types|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// canonical
/// <p>
/// What profile the value is expected to be.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property profile As %String(MAXLEN = 1000000, XMLNAME = "profile", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ParameterDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ParameterDefinition";

}
