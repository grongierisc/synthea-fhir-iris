/// What codes are expected.
Class HS.FHIR.vR4.Model.Element.DataRequirement.codeFilter Extends (%Persistent,HS.FHIR.vR4.Model.Base.Element) [ Not ProcedureBlock ]
{

/// string
/// <p>
/// A code-valued attribute to filter on.
Property path As %String(MAXLEN = 1000000, XMLNAME = "path", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// A coded (token) parameter to search on.
Property searchParam As %String(MAXLEN = 1000000, XMLNAME = "searchParam", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Valueset for the filter.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueSet As %String(MAXLEN = 1000000, XMLNAME = "valueSet", XMLPROJECTION = "ATTRIBUTE");

/// Coding
/// <p>
/// What code is expected.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As List Of HS.FHIR.vR4.Model.Datatype.Coding(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "code", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "codeFilter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "codeFilter";

}
