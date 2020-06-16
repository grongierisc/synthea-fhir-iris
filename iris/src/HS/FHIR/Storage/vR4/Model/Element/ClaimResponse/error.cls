/// Processing errors.
Class HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.error Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Item sequence number.
Property itemSequence As %Integer(XMLNAME = "itemSequence", XMLPROJECTION = "ATTRIBUTE");

/// positiveInt
/// <p>
/// Detail sequence number.
Property detailSequence As %Integer(XMLNAME = "detailSequence", XMLPROJECTION = "ATTRIBUTE");

/// positiveInt
/// <p>
/// Subdetail sequence number.
Property subDetailSequence As %Integer(XMLNAME = "subDetailSequence", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Error code detailing processing issues.
/// <p>
/// any FHIR4 code may be used; 
/// adjudication-error shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClaimResponse.error";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClaimResponse.error";

Storage Default
{
<Data name="errorDefaultData">
<Subscript>"error"</Subscript>
<Value name="1">
<Value>itemSequence</Value>
</Value>
<Value name="2">
<Value>detailSequence</Value>
</Value>
<Value name="3">
<Value>subDetailSequence</Value>
</Value>
<Value name="4">
<Value>code</Value>
</Value>
</Data>
<DefaultData>errorDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
