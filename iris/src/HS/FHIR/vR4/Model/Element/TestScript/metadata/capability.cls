/// Capabilities  that are assumed to function correctly on the FHIR server being tested.
Class HS.FHIR.vR4.Model.Element.TestScript.metadata.capability Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// Are the capabilities required?
Property required As %Boolean(XMLNAME = "required", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// Are the capabilities validated?
Property validated As %Boolean(XMLNAME = "validated", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// The expected capabilities of the server.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Which origin server these requirements apply to.
Property origin As List Of%Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "origin", XMLPROJECTION = "ELEMENT");

/// integer
/// <p>
/// Which server these requirements apply to.
Property destination As %Integer(XMLNAME = "destination", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Links to the FHIR specification.
Property link As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "link", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Required Capability Statement.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property capabilities As %String(MAXLEN = 1000000, XMLNAME = "capabilities", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.metadata.capability";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.metadata.capability";

}
