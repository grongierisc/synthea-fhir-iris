/// Claim, 
/// Pre-determination or Pre-authorization.
Class HS.FHIR.Storage.vR4.Model.Resource.Claim Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier for claim.
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
/// Resource creation date.
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Author of the claim.
/// <p>
/// Practitioner | PractitionerRole
Property enterer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "enterer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Target.
/// <p>
/// Organization
Property insurer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "insurer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Party responsible for the claim.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property provider As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "provider", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Desired processing ugency.
/// <p>
/// any FHIR4 code may be used; 
/// process-priority shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property priority As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "priority", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// For whom to reserve funds.
/// <p>
/// any FHIR4 code may be used; 
/// fundsreserve shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property fundsReserve As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "fundsReserve", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Prior or corollary claims.
Property related As array Of HS.FHIR.Storage.vR4.Model.Element.Claim.related(XMLNAME = "related", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Prescription authorizing services and products.
/// <p>
/// DeviceRequest | MedicationRequest | VisionPrescription
Property prescription As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "prescription", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Original prescription if superseded by fulfiller.
/// <p>
/// DeviceRequest | MedicationRequest | VisionPrescription
Property originalPrescription As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "originalPrescription", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Recipient of benefits payable.
Property payee As HS.FHIR.Storage.vR4.Model.Element.Claim.payee(XMLNAME = "payee", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Treatment referral.
/// <p>
/// ServiceRequest
Property referral As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "referral", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Servicing facility.
/// <p>
/// Location
Property facility As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "facility", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Members of the care team.
Property careTeam As array Of HS.FHIR.Storage.vR4.Model.Element.Claim.careTeam(XMLNAME = "careTeam", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Supporting information.
Property supportingInfo As array Of HS.FHIR.Storage.vR4.Model.Element.Claim.supportingInfo(XMLNAME = "supportingInfo", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Pertinent diagnosis information.
Property diagnosis As array Of HS.FHIR.Storage.vR4.Model.Element.Claim.diagnosis(XMLNAME = "diagnosis", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Clinical procedures performed.
Property procedure As array Of HS.FHIR.Storage.vR4.Model.Element.Claim.procedure(XMLNAME = "procedure", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Patient insurance information.
Property insurance As array Of HS.FHIR.Storage.vR4.Model.Element.Claim.insurance(XMLNAME = "insurance", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Details of the event.
Property accident As HS.FHIR.Storage.vR4.Model.Element.Claim.accident(XMLNAME = "accident", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Product or service provided.
Property item As array Of HS.FHIR.Storage.vR4.Model.Element.Claim.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT");

/// Money
/// <p>
/// Total claim cost.
Property total As HS.FHIR.Storage.vR4.Model.Datatype.Money(XMLNAME = "total", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Claim";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Claim";

Storage Default
{
<Data name="ClaimDefaultData">
<Subscript>"Claim"</Subscript>
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
<Value>fundsReserve</Value>
</Value>
<Value name="13">
<Value>prescription</Value>
</Value>
<Value name="14">
<Value>originalPrescription</Value>
</Value>
<Value name="15">
<Value>payee</Value>
</Value>
<Value name="16">
<Value>referral</Value>
</Value>
<Value name="17">
<Value>facility</Value>
</Value>
<Value name="18">
<Value>accident</Value>
</Value>
<Value name="19">
<Value>total</Value>
</Value>
</Data>
<Data name="careTeam">
<Attribute>careTeam</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Claim.careTeam"</Subscript>
</Data>
<Data name="diagnosis">
<Attribute>diagnosis</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Claim.diagnosis"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Claim.identifier"</Subscript>
</Data>
<Data name="insurance">
<Attribute>insurance</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Claim.insurance"</Subscript>
</Data>
<Data name="item">
<Attribute>item</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Claim.item"</Subscript>
</Data>
<Data name="procedure">
<Attribute>procedure</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Claim.procedure"</Subscript>
</Data>
<Data name="related">
<Attribute>related</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Claim.related"</Subscript>
</Data>
<Data name="supportingInfo">
<Attribute>supportingInfo</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Claim.supportingInfo"</Subscript>
</Data>
<DefaultData>ClaimDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
