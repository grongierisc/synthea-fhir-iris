/// Explanation of Benefit resource.
Class HS.FHIR.Storage.vR4.Model.Resource.ExplanationOfBenefit Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier for the resource.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | cancelled | draft | entered-in-error
/// <p>
/// explanationofbenefit-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend explanationofbenefit-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Category or discipline.
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

/// Period
/// <p>
/// Relevant time frame for the claim.
Property billablePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "billablePeriod", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Response creation date.
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Author of the claim.
/// <p>
/// Practitioner | PractitionerRole
Property enterer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "enterer", XMLPROJECTION = "ELEMENT");

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
Property provider As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "provider", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Desired processing urgency.
/// <p>
/// any FHIR4 code may be used; 
/// processpriority shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property priority As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "priority", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// For whom to reserve funds.
/// <p>
/// any FHIR4 code may be used; 
/// fundsreserve shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property fundsReserveRequested As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "fundsReserveRequested", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Funds reserved status.
/// <p>
/// any FHIR4 code may be used; 
/// fundsreserve shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property fundsReserve As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "fundsReserve", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Prior or corollary claims.
Property related As array Of HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.related(XMLNAME = "related", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Prescription authorizing services or products.
/// <p>
/// MedicationRequest | VisionPrescription
Property prescription As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "prescription", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Original prescription if superceded by fulfiller.
/// <p>
/// MedicationRequest
Property originalPrescription As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "originalPrescription", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Recipient of benefits payable.
Property payee As HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.payee(XMLNAME = "payee", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Treatment Referral.
/// <p>
/// ServiceRequest
Property referral As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "referral", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Servicing Facility.
/// <p>
/// Location
Property facility As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "facility", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Claim reference.
/// <p>
/// Claim
Property claim As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "claim", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Claim response reference.
/// <p>
/// ClaimResponse
Property claimResponse As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "claimResponse", XMLPROJECTION = "ELEMENT");

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
Property preAuthRef As array Of %String(MAXLEN = 1000000, XMLNAME = "preAuthRef", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Preauthorization in-effect period.
Property preAuthRefPeriod As array Of HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "preAuthRefPeriod", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Care Team members.
Property careTeam As array Of HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.careTeam(XMLNAME = "careTeam", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Supporting information.
Property supportingInfo As array Of HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.supportingInfo(XMLNAME = "supportingInfo", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Pertinent diagnosis information.
Property diagnosis As array Of HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.diagnosis(XMLNAME = "diagnosis", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Clinical procedures performed.
Property procedure As array Of HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.procedure(XMLNAME = "procedure", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Precedence (primary, 
/// secondary, 
/// etc.)
Property precedence As %Integer(XMLNAME = "precedence", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Patient insurance information.
Property insurance As array Of HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.insurance(XMLNAME = "insurance", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Details of the event.
Property accident As HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.accident(XMLNAME = "accident", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Product or service provided.
Property item As array Of HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Insurer added line items.
Property addItem As array Of HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.addItem(XMLNAME = "addItem", XMLPROJECTION = "ELEMENT");

/// ExplanationOfBenefit:item[n].adjudication
/// <p>
/// Header-level adjudication.
Property adjudication As array Of HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.item.adjudication(XMLNAME = "adjudication", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Adjudication totals.
Property total As array Of HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.total(XMLNAME = "total", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Payment Details.
Property payment As HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.payment(XMLNAME = "payment", XMLPROJECTION = "ELEMENT");

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
Property processNote As array Of HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.processNote(XMLNAME = "processNote", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// When the benefits are applicable.
Property benefitPeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "benefitPeriod", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Balance by Benefit Category.
Property benefitBalance As array Of HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.benefitBalance(XMLNAME = "benefitBalance", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExplanationOfBenefit";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExplanationOfBenefit";

Storage Default
{
<Data name="ExplanationOfBenefitDefaultData">
<Subscript>"ExplanationOfBenefit"</Subscript>
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
<Value>billablePeriod</Value>
</Value>
<Value name="7">
<Value>created</Value>
</Value>
<Value name="8">
<Value>enterer</Value>
</Value>
<Value name="9">
<Value>insurer</Value>
</Value>
<Value name="10">
<Value>provider</Value>
</Value>
<Value name="11">
<Value>priority</Value>
</Value>
<Value name="12">
<Value>fundsReserveRequested</Value>
</Value>
<Value name="13">
<Value>fundsReserve</Value>
</Value>
<Value name="14">
<Value>prescription</Value>
</Value>
<Value name="15">
<Value>originalPrescription</Value>
</Value>
<Value name="16">
<Value>payee</Value>
</Value>
<Value name="17">
<Value>referral</Value>
</Value>
<Value name="18">
<Value>facility</Value>
</Value>
<Value name="19">
<Value>claim</Value>
</Value>
<Value name="20">
<Value>claimResponse</Value>
</Value>
<Value name="21">
<Value>outcome</Value>
</Value>
<Value name="22">
<Value>disposition</Value>
</Value>
<Value name="23">
<Value>precedence</Value>
</Value>
<Value name="24">
<Value>accident</Value>
</Value>
<Value name="25">
<Value>payment</Value>
</Value>
<Value name="26">
<Value>formCode</Value>
</Value>
<Value name="27">
<Value>form</Value>
</Value>
<Value name="28">
<Value>benefitPeriod</Value>
</Value>
</Data>
<Data name="addItem">
<Attribute>addItem</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ExplanationOfBenefit.addItem"</Subscript>
</Data>
<Data name="adjudication">
<Attribute>adjudication</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ExplanationOfBenefit.adjudication"</Subscript>
</Data>
<Data name="benefitBalance">
<Attribute>benefitBalance</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ExplanationOfBenefit.benefitBalance"</Subscript>
</Data>
<Data name="careTeam">
<Attribute>careTeam</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ExplanationOfBenefit.careTeam"</Subscript>
</Data>
<Data name="diagnosis">
<Attribute>diagnosis</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ExplanationOfBenefit.diagnosis"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ExplanationOfBenefit.identifier"</Subscript>
</Data>
<Data name="insurance">
<Attribute>insurance</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ExplanationOfBenefit.insurance"</Subscript>
</Data>
<Data name="item">
<Attribute>item</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ExplanationOfBenefit.item"</Subscript>
</Data>
<Data name="preAuthRef">
<Attribute>preAuthRef</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ExplanationOfBenefit.preAuthRef"</Subscript>
</Data>
<Data name="preAuthRefPeriod">
<Attribute>preAuthRefPeriod</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ExplanationOfBenefit.preAuthRefPeriod"</Subscript>
</Data>
<Data name="procedure">
<Attribute>procedure</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ExplanationOfBenefit.procedure"</Subscript>
</Data>
<Data name="processNote">
<Attribute>processNote</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ExplanationOfBenefit.processNote"</Subscript>
</Data>
<Data name="related">
<Attribute>related</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ExplanationOfBenefit.related"</Subscript>
</Data>
<Data name="supportingInfo">
<Attribute>supportingInfo</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ExplanationOfBenefit.supportingInfo"</Subscript>
</Data>
<Data name="total">
<Attribute>total</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ExplanationOfBenefit.total"</Subscript>
</Data>
<DefaultData>ExplanationOfBenefitDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
