/// Note concerning processing.
Class HS.FHIR.vR4.Model.Element.PaymentReconciliation.processNote Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

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
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "PaymentReconciliation.processNote";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "PaymentReconciliation.processNote";

}
