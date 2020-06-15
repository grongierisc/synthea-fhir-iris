/// Tracks balance, 
/// charges, 
/// for patient or cost center.
Class HS.FHIR.vR4.Model.Resource.Account Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Account number.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | inactive | entered-in-error | on-hold | unknown
/// <p>
/// account-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend account-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// E.g. 
/// patient, 
/// expense, 
/// depreciation.
/// <p>
/// any FHIR4 code may be used; 
/// account-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Human-readable label.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// The entity that caused the expenses.
/// <p>
/// Patient | Device | Practitioner | PractitionerRole | Location | HealthcareService | Organization
Property subject As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Transaction window.
Property servicePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "servicePeriod", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The party(s) that are responsible for covering the payment of this account, 
/// and what order should they be applied to the account.
Property coverage As List Of HS.FHIR.vR4.Model.Element.Account.coverage(XMLNAME = "coverage", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Entity managing the Account.
/// <p>
/// Organization
Property owner As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "owner", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Explanation of purpose/use.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// The parties ultimately responsible for balancing the Account.
Property guarantor As List Of HS.FHIR.vR4.Model.Element.Account.guarantor(XMLNAME = "guarantor", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Reference to a parent Account.
/// <p>
/// Account
Property partOf As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Account";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Account";

}
