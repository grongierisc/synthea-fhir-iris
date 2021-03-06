/// Codes associated with the substance.
Class HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.code Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The specific code.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Status of the code assignment.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property status As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// The date at which the code status is changed as part of the terminology maintenance.
Property statusDate As %String(MAXLEN = 1000000, XMLNAME = "statusDate", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Any comment can be provided in this field, 
/// if necessary.
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Supporting literature.
/// <p>
/// DocumentReference
Property source As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSpecification.code";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSpecification.code";

Storage Default
{
<Data name="codeDefaultData">
<Subscript>"code"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>status</Value>
</Value>
<Value name="3">
<Value>statusDate</Value>
</Value>
<Value name="4">
<Value>comment</Value>
</Value>
</Data>
<Data name="source">
<Attribute>source</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.code.source"</Subscript>
</Data>
<DefaultData>codeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
