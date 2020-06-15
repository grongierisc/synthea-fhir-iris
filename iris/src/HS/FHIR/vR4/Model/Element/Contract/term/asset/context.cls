/// Circumstance of the asset.
Class HS.FHIR.vR4.Model.Element.Contract.term.asset.context Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Creator,custodian or owner.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property reference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reference", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Codeable asset context.
/// <p>
/// any FHIR4 code may be used; 
/// contract-assetcontext shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Context description.
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term.asset.context";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term.asset.context";

}
