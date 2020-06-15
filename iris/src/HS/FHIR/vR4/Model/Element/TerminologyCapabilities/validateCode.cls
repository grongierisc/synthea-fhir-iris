/// Information about the [ValueSet/$validate-code](valueset-operation-validate-code.html) operation.
Class HS.FHIR.vR4.Model.Element.TerminologyCapabilities.validateCode Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// Whether translations are validated.
Property translations As %Boolean(XMLNAME = "translations", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TerminologyCapabilities.validateCode";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TerminologyCapabilities.validateCode";

}
