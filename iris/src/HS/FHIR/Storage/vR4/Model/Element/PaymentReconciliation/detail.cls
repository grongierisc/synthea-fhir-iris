/// Settlement particulars.
Class HS.FHIR.Storage.vR4.Model.Element.PaymentReconciliation.detail Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business identifier of the payment detail.
Property identifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Business identifier of the prior payment detail.
Property predecessor As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "predecessor", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Category of payment.
/// <p>
/// any FHIR4 code may be used; 
/// payment-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Request giving rise to the payment.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property request As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "request", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Submitter of the request.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property submitter As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "submitter", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Response committing to a payment.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property response As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "response", XMLPROJECTION = "ELEMENT");

/// date
/// <p>
/// Date of commitment to pay.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Contact for the response.
/// <p>
/// PractitionerRole
Property responsible As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "responsible", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Recipient of the payment.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property payee As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "payee", XMLPROJECTION = "ELEMENT");

/// Money
/// <p>
/// Amount allocated to this payable.
Property amount As HS.FHIR.Storage.vR4.Model.Datatype.Money(XMLNAME = "amount", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "PaymentReconciliation.detail";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "PaymentReconciliation.detail";

Storage Default
{
<Data name="detailDefaultData">
<Subscript>"detail"</Subscript>
<Value name="1">
<Value>identifier</Value>
</Value>
<Value name="2">
<Value>predecessor</Value>
</Value>
<Value name="3">
<Value>type</Value>
</Value>
<Value name="4">
<Value>request</Value>
</Value>
<Value name="5">
<Value>submitter</Value>
</Value>
<Value name="6">
<Value>response</Value>
</Value>
<Value name="7">
<Value>date</Value>
</Value>
<Value name="8">
<Value>responsible</Value>
</Value>
<Value name="9">
<Value>payee</Value>
</Value>
<Value name="10">
<Value>amount</Value>
</Value>
</Data>
<DefaultData>detailDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
