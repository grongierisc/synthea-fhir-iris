/// Context of the Contract term.
Class HS.FHIR.Storage.vR4.Model.Element.Contract.term.offer Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Offer business ID.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Offer Recipient.
Property party As array Of HS.FHIR.Storage.vR4.Model.Element.Contract.term.offer.party(XMLNAME = "party", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Negotiable offer asset.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property topic As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "topic", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Contract Offer Type or Form.
/// <p>
/// any FHIR4 code may be used; 
/// contract-term-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Accepting party choice.
/// <p>
/// v3-ActConsentDirective is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in v3-ActConsentDirective, 
/// you may formally EXTEND v3-ActConsentDirective to add codes to it.
Property decision As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "decision", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// How decision is conveyed.
/// <p>
/// any FHIR4 code may be used; 
/// contract-decision-mode shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property decisionMode As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "decisionMode", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Response to offer text.
Property answer As array Of HS.FHIR.Storage.vR4.Model.Element.Contract.term.offer.answer(XMLNAME = "answer", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Human readable offer text.
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Pointer to text.
Property linkId As array Of %String(MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// Offer restriction numbers.
Property securityLabelNumber As array Of %Integer(XMLNAME = "securityLabelNumber", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term.offer";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term.offer";

Storage Default
{
<Data name="answer">
<Attribute>answer</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.offer.answer"</Subscript>
</Data>
<Data name="decisionMode">
<Attribute>decisionMode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.offer.decisionMode"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.offer.identifier"</Subscript>
</Data>
<Data name="linkId">
<Attribute>linkId</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.offer.linkId"</Subscript>
</Data>
<Data name="offerDefaultData">
<Subscript>"offer"</Subscript>
<Value name="1">
<Value>topic</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
<Value name="3">
<Value>decision</Value>
</Value>
<Value name="4">
<Value>text</Value>
</Value>
</Data>
<Data name="party">
<Attribute>party</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.offer.party"</Subscript>
</Data>
<Data name="securityLabelNumber">
<Attribute>securityLabelNumber</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.offer.securityLabelNumber"</Subscript>
</Data>
<DefaultData>offerDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
