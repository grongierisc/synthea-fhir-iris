/// Response to a claim predetermination or preauthorization.
Class HS.FHIR.vR4.Model.Resource.ClaimResponse Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier for a claim response.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

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
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// More granular claim type.
/// <p>
/// any FHIR4 code may be used; 
/// claim-subtype shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property subType As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "subType", XMLPROJECTION = "ELEMENT");

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
Property patient As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];

/// dateTime
/// <p>
/// Response creation date.
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Party responsible for reimbursement.
/// <p>
/// Organization
Property insurer As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "insurer", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Party responsible for the claim.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property requestor As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "requestor", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Id of resource triggering adjudication.
/// <p>
/// Claim
Property request As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "request", XMLPROJECTION = "ELEMENT");

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
Property preAuthPeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "preAuthPeriod", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Party to be paid any benefits payable.
/// <p>
/// any FHIR4 code may be used; 
/// payeetype shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property payeeType As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "payeeType", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Adjudication for claim line items.
Property item As List Of HS.FHIR.vR4.Model.Element.ClaimResponse.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Insurer added line items.
Property addItem As List Of HS.FHIR.vR4.Model.Element.ClaimResponse.addItem(XMLNAME = "addItem", XMLPROJECTION = "ELEMENT");

/// ClaimResponse:item[n].adjudication
/// <p>
/// Header-level adjudication.
Property adjudication As List Of HS.FHIR.vR4.Model.Element.ClaimResponse.item.adjudication(XMLNAME = "adjudication", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Adjudication totals.
Property total As List Of HS.FHIR.vR4.Model.Element.ClaimResponse.total(XMLNAME = "total", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Payment Details.
Property payment As HS.FHIR.vR4.Model.Element.ClaimResponse.payment(XMLNAME = "payment", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Funds reserved status.
/// <p>
/// any FHIR4 code may be used; 
/// fundsreserve shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property fundsReserve As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "fundsReserve", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Printed form identifier.
/// <p>
/// any FHIR4 code may be used; 
/// forms shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property formCode As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "formCode", XMLPROJECTION = "ELEMENT");

/// Attachment
/// <p>
/// Printed reference or actual form.
Property form As HS.FHIR.vR4.Model.Datatype.Attachment(XMLNAME = "form", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Note concerning adjudication.
Property processNote As List Of HS.FHIR.vR4.Model.Element.ClaimResponse.processNote(XMLNAME = "processNote", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Request for additional information.
/// <p>
/// CommunicationRequest
Property communicationRequest As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "communicationRequest", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Patient insurance information.
Property insurance As List Of HS.FHIR.vR4.Model.Element.ClaimResponse.insurance(XMLNAME = "insurance", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Processing errors.
Property error As List Of HS.FHIR.vR4.Model.Element.ClaimResponse.error(XMLNAME = "error", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ClaimResponse";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ClaimResponse";

}
