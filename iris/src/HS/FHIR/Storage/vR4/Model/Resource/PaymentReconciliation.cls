/// PaymentReconciliation resource.
Class HS.FHIR.Storage.vR4.Model.Resource.PaymentReconciliation Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier for a payment reconciliation.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | cancelled | draft | entered-in-error
/// <p>
/// fm-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend fm-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Period
/// <p>
/// Period covered.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Creation date.
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Party generating payment.
/// <p>
/// Organization
Property paymentIssuer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "paymentIssuer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Reference to requesting resource.
/// <p>
/// Task
Property request As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "request", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Responsible practitioner.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property requestor As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "requestor", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// queued | complete | error | partial
/// <p>
/// remittance-outcome|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend remittance-outcome|4.0.1 and you may NOT use codes from other ValueSets.
Property outcome As %String(MAXLEN = 1000000, XMLNAME = "outcome", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Disposition message.
Property disposition As %String(MAXLEN = 1000000, XMLNAME = "disposition", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// When payment issued.
Property paymentDate As %String(MAXLEN = 1000000, XMLNAME = "paymentDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Money
/// <p>
/// Total amount of Payment.
Property paymentAmount As HS.FHIR.Storage.vR4.Model.Datatype.Money(XMLNAME = "paymentAmount", XMLPROJECTION = "ELEMENT") [ Required ];

/// Identifier
/// <p>
/// Business identifier for the payment.
Property paymentIdentifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "paymentIdentifier", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Settlement particulars.
Property detail As array Of HS.FHIR.Storage.vR4.Model.Element.PaymentReconciliation.detail(XMLNAME = "detail", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Printed form identifier.
/// <p>
/// any FHIR4 code may be used; 
/// forms shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property formCode As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "formCode", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Note concerning processing.
Property processNote As array Of HS.FHIR.Storage.vR4.Model.Element.PaymentReconciliation.processNote(XMLNAME = "processNote", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "PaymentReconciliation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "PaymentReconciliation";

Storage Default
{
<Data name="PaymentReconciliationDefaultData">
<Subscript>"PaymentReconciliation"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>period</Value>
</Value>
<Value name="3">
<Value>created</Value>
</Value>
<Value name="4">
<Value>paymentIssuer</Value>
</Value>
<Value name="5">
<Value>request</Value>
</Value>
<Value name="6">
<Value>requestor</Value>
</Value>
<Value name="7">
<Value>outcome</Value>
</Value>
<Value name="8">
<Value>disposition</Value>
</Value>
<Value name="9">
<Value>paymentDate</Value>
</Value>
<Value name="10">
<Value>paymentAmount</Value>
</Value>
<Value name="11">
<Value>paymentIdentifier</Value>
</Value>
<Value name="12">
<Value>formCode</Value>
</Value>
</Data>
<Data name="detail">
<Attribute>detail</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.PaymentReconciliation.detail"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.PaymentReconciliation.identifier"</Subscript>
</Data>
<Data name="processNote">
<Attribute>processNote</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.PaymentReconciliation.processNote"</Subscript>
</Data>
<DefaultData>PaymentReconciliationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
