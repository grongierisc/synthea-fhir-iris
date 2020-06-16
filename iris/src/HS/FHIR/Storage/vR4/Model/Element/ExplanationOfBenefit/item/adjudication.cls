/// Adjudication details.
Class HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.item.adjudication Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of adjudication information.
/// <p>
/// any FHIR4 code may be used; 
/// adjudication shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Explanation of adjudication outcome.
/// <p>
/// any FHIR4 code may be used; 
/// adjudication-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reason As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");

/// Money
/// <p>
/// Monetary amount.
Property amount As HS.FHIR.Storage.vR4.Model.Datatype.Money(XMLNAME = "amount", XMLPROJECTION = "ELEMENT");

/// decimal
/// <p>
/// Non-monitary value.
Property value As %Decimal(XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExplanationOfBenefit.item.adjudication";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExplanationOfBenefit.item.adjudication";

Storage Default
{
<Data name="adjudicationDefaultData">
<Subscript>"adjudication"</Subscript>
<Value name="1">
<Value>category</Value>
</Value>
<Value name="2">
<Value>reason</Value>
</Value>
<Value name="3">
<Value>amount</Value>
</Value>
<Value name="4">
<Value>value</Value>
</Value>
</Data>
<DefaultData>adjudicationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
