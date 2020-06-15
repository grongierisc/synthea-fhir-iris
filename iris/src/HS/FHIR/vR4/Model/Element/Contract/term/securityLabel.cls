/// Protection for the Term.
Class HS.FHIR.vR4.Model.Element.Contract.term.securityLabel Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// unsignedInt
/// <p>
/// Link to Security Labels.
Property number As List Of%Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "number", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Confidentiality Protection.
/// <p>
/// any FHIR4 code may be used; 
/// contract-security-classification shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property classification As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "classification", XMLPROJECTION = "ELEMENT") [ Required ];

/// Coding
/// <p>
/// Applicable Policy.
/// <p>
/// any FHIR4 code may be used; 
/// contract-security-category shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As List Of HS.FHIR.vR4.Model.Datatype.Coding(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Handling Instructions.
/// <p>
/// any FHIR4 code may be used; 
/// contract-security-control shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property control As List Of HS.FHIR.vR4.Model.Datatype.Coding(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "control", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term.securityLabel";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term.securityLabel";

}
