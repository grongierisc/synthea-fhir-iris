/// A single issue associated with the action.
Class HS.FHIR.Storage.vR4.Model.Element.OperationOutcome.issue Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// fatal | error | warning | information
/// <p>
/// issue-severity|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend issue-severity|4.0.1 and you may NOT use codes from other ValueSets.
Property severity As %String(MAXLEN = 1000000, XMLNAME = "severity", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// Error or warning code.
/// <p>
/// issue-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend issue-type|4.0.1 and you may NOT use codes from other ValueSets.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Additional details about the error.
/// <p>
/// any FHIR4 code may be used; 
/// operation-outcome shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property details As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "details", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Additional diagnostic information about the issue.
Property diagnostics As %String(MAXLEN = 1000000, XMLNAME = "diagnostics", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Deprecated: Path of element(s) related to issue.
Property location As array Of %String(MAXLEN = 1000000, XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// FHIRPath of element(s) related to issue.
Property expression As array Of %String(MAXLEN = 1000000, XMLNAME = "expression", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "OperationOutcome.issue";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "OperationOutcome.issue";

Storage Default
{
<Data name="expression">
<Attribute>expression</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.OperationOutcome.issue.expression"</Subscript>
</Data>
<Data name="issueDefaultData">
<Subscript>"issue"</Subscript>
<Value name="1">
<Value>severity</Value>
</Value>
<Value name="2">
<Value>code</Value>
</Value>
<Value name="3">
<Value>details</Value>
</Value>
<Value name="4">
<Value>diagnostics</Value>
</Value>
</Data>
<Data name="location">
<Attribute>location</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.OperationOutcome.issue.location"</Subscript>
</Data>
<DefaultData>issueDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
