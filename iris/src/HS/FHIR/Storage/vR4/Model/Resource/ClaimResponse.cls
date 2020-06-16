/// Response to a claim predetermination or preauthorization.
Class HS.FHIR.Storage.vR4.Model.Resource.ClaimResponse Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier for a claim response.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | cancelled | draft | entered-in-error
/// <p>
/// fm-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend fm-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// More granular claim type.
/// <p>
/// claim-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in claim-type, 
/// you may formally EXTEND claim-type to add codes to it.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// More granular claim type.
/// <p>
/// any FHIR4 code may be used; 
/// claim-subtype shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property subType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "subType", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// claim | preauthorization | predetermination
/// <p>
/// claim-use|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend claim-use|4.0.1 and you may NOT use codes from other ValueSets.
Property use As %String(MAXLEN = 1000000, XMLNAME = "use", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// The recipient of the products and services.
/// <p>
/// Patient
Property patient As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];

/// dateTime
/// <p>
/// Response creation date.
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Party responsible for reimbursement.
/// <p>
/// Organization
Property insurer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "insurer", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Party responsible for the claim.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property requestor As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "requestor", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Id of resource triggering adjudication.
/// <p>
/// Claim
Property request As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "request", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// queued | complete | error | partial
/// <p>
/// remittance-outcome|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend remittance-outcome|4.0.1 and you may NOT use codes from other ValueSets.
Property outcome As %String(MAXLEN = 1000000, XMLNAME = "outcome", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Disposition Message.
Property disposition As %String(MAXLEN = 1000000, XMLNAME = "disposition", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Preauthorization reference.
Property preAuthRef As %String(MAXLEN = 1000000, XMLNAME = "preAuthRef", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Preauthorization reference effective period.
Property preAuthPeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "preAuthPeriod", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Party to be paid any benefits payable.
/// <p>
/// any FHIR4 code may be used; 
/// payeetype shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property payeeType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "payeeType", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Adjudication for claim line items.
Property item As array Of HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Insurer added line items.
Property addItem As array Of HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.addItem(XMLNAME = "addItem", XMLPROJECTION = "ELEMENT");

/// ClaimResponse:item[n].adjudication
/// <p>
/// Header-level adjudication.
Property adjudication As array Of HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.item.adjudication(XMLNAME = "adjudication", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Adjudication totals.
Property total As array Of HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.total(XMLNAME = "total", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Payment Details.
Property payment As HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.payment(XMLNAME = "payment", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Funds reserved status.
/// <p>
/// any FHIR4 code may be used; 
/// fundsreserve shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property fundsReserve As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "fundsReserve", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Printed form identifier.
/// <p>
/// any FHIR4 code may be used; 
/// forms shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property formCode As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "formCode", XMLPROJECTION = "ELEMENT");

/// Attachment
/// <p>
/// Printed reference or actual form.
Property form As HS.FHIR.Storage.vR4.Model.Datatype.Attachment(XMLNAME = "form", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Note concerning adjudication.
Property processNote As array Of HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.processNote(XMLNAME = "processNote", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Request for additional information.
/// <p>
/// CommunicationRequest
Property communicationRequest As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "communicationRequest", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Patient insurance information.
Property insurance As array Of HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.insurance(XMLNAME = "insurance", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Processing errors.
Property error As array Of HS.FHIR.Storage.vR4.Model.Element.ClaimResponse.error(XMLNAME = "error", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClaimResponse";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClaimResponse";

Storage Default
{
<Data name="ClaimResponseDefaultData">
<Subscript>"ClaimResponse"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
<Value name="3">
<Value>subType</Value>
</Value>
<Value name="4">
<Value>use</Value>
</Value>
<Value name="5">
<Value>patient</Value>
</Value>
<Value name="6">
<Value>created</Value>
</Value>
<Value name="7">
<Value>insurer</Value>
</Value>
<Value name="8">
<Value>requestor</Value>
</Value>
<Value name="9">
<Value>request</Value>
</Value>
<Value name="10">
<Value>outcome</Value>
</Value>
<Value name="11">
<Value>disposition</Value>
</Value>
<Value name="12">
<Value>preAuthRef</Value>
</Value>
<Value name="13">
<Value>preAuthPeriod</Value>
</Value>
<Value name="14">
<Value>payeeType</Value>
</Value>
<Value name="15">
<Value>payment</Value>
</Value>
<Value name="16">
<Value>fundsReserve</Value>
</Value>
<Value name="17">
<Value>formCode</Value>
</Value>
<Value name="18">
<Value>form</Value>
</Value>
</Data>
<Data name="addItem">
<Attribute>addItem</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ClaimResponse.addItem"</Subscript>
</Data>
<Data name="adjudication">
<Attribute>adjudication</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ClaimResponse.adjudication"</Subscript>
</Data>
<Data name="communicationRequest">
<Attribute>communicationRequest</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ClaimResponse.communicationRequest"</Subscript>
</Data>
<Data name="error">
<Attribute>error</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ClaimResponse.error"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ClaimResponse.identifier"</Subscript>
</Data>
<Data name="insurance">
<Attribute>insurance</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ClaimResponse.insurance"</Subscript>
</Data>
<Data name="item">
<Attribute>item</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ClaimResponse.item"</Subscript>
</Data>
<Data name="processNote">
<Attribute>processNote</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ClaimResponse.processNote"</Subscript>
</Data>
<Data name="total">
<Attribute>total</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ClaimResponse.total"</Subscript>
</Data>
<DefaultData>ClaimResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
