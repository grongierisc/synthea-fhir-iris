/// Note concerning adjudication.
Class HS.FHIR.vR4.Model.Element.ClaimResponse.processNote Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Note instance identifier.
Property number As %Integer(XMLNAME = "number", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// display | print | printoper
/// <p>
/// note-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend note-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Note explanatory text.
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Language of the text.
/// <p>
/// languages is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in languages, 
/// you may use codes from any ValueSet.
Property language As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "language", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClaimResponse.processNote";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClaimResponse.processNote";

}
