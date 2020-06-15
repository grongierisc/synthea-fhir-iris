/// Contract Term List.
Class HS.FHIR.vR4.Model.Element.Contract.term Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Contract Term Number.
Property identifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Contract Term Issue Date Time.
Property issued As %String(MAXLEN = 1000000, XMLNAME = "issued", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Contract Term Effective Time.
Property applies As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "applies", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Term Concern.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property topicCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "topicCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Term Concern.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property topicReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "topicReference", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Contract Term Type or Form.
/// <p>
/// any FHIR4 code may be used; 
/// contract-term-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Contract Term Type specific classification.
/// <p>
/// any FHIR4 code may be used; 
/// contract-term-subtype shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property subType As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "subType", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Term Statement.
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Protection for the Term.
Property securityLabel As List Of HS.FHIR.vR4.Model.Element.Contract.term.securityLabel(XMLNAME = "securityLabel", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Context of the Contract term.
Property offer As HS.FHIR.vR4.Model.Element.Contract.term.offer(XMLNAME = "offer", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Contract Term Asset List.
Property asset As List Of HS.FHIR.vR4.Model.Element.Contract.term.asset(XMLNAME = "asset", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Entity being ascribed responsibility.
Property action As List Of HS.FHIR.vR4.Model.Element.Contract.term.action(XMLNAME = "action", XMLPROJECTION = "ELEMENT");

/// Contract:term
/// <p>
/// Nested Contract Term Group.
Property group As List Of HS.FHIR.vR4.Model.Element.Contract.term(XMLNAME = "group", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term";

}
