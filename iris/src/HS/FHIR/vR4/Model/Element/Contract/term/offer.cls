/// Context of the Contract term.
Class HS.FHIR.vR4.Model.Element.Contract.term.offer Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Offer business ID.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Offer Recipient.
Property party As List Of HS.FHIR.vR4.Model.Element.Contract.term.offer.party(XMLNAME = "party", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Negotiable offer asset.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property topic As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "topic", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Contract Offer Type or Form.
/// <p>
/// any FHIR4 code may be used; 
/// contract-term-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Accepting party choice.
/// <p>
/// v3-ActConsentDirective is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in v3-ActConsentDirective, 
/// you may formally EXTEND v3-ActConsentDirective to add codes to it.
Property decision As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "decision", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// How decision is conveyed.
/// <p>
/// any FHIR4 code may be used; 
/// contract-decision-mode shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property decisionMode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "decisionMode", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Response to offer text.
Property answer As List Of HS.FHIR.vR4.Model.Element.Contract.term.offer.answer(XMLNAME = "answer", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Human readable offer text.
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Pointer to text.
Property linkId As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// Offer restriction numbers.
Property securityLabelNumber As List Of%Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "securityLabelNumber", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term.offer";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term.offer";

}
