/// A healthcare consumer's  choices to permit or deny recipients or roles to perform actions for specific purposes and periods of time.
Class HS.FHIR.vR4.Model.Resource.Consent Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Identifier for this record (external references)
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// draft | proposed | active | rejected | inactive | entered-in-error
/// <p>
/// consent-state-codes|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend consent-state-codes|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Which of the four areas this resource covers (extensible)
/// <p>
/// consent-scope is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in consent-scope, 
/// you may formally EXTEND consent-scope to add codes to it.
Property scope As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "scope", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Classification of the consent statement - for indexing/retrieval.
/// <p>
/// consent-category is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in consent-category, 
/// you may formally EXTEND consent-category to add codes to it.
Property category As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "category", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Who the consent applies to.
/// <p>
/// Patient
Property patient As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When this Consent was created or indexed.
Property dateTime As %String(MAXLEN = 1000000, XMLNAME = "dateTime", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who is agreeing to the policy and rules.
/// <p>
/// Organization | Patient | Practitioner | RelatedPerson | PractitionerRole
Property performer As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Custodian of the consent.
/// <p>
/// Organization
Property organization As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "organization", XMLPROJECTION = "ELEMENT");

/// Attachment
/// <p>
/// Source from which this consent is taken.
Property sourceAttachment As HS.FHIR.vR4.Model.Datatype.Attachment(XMLNAME = "sourceAttachment", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Source from which this consent is taken.
/// <p>
/// Consent | DocumentReference | Contract | QuestionnaireResponse
Property sourceReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "sourceReference", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Policies covered by this consent.
Property policy As List Of HS.FHIR.vR4.Model.Element.Consent.policy(XMLNAME = "policy", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Regulation that this consents to.
/// <p>
/// consent-policy is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in consent-policy, 
/// you may formally EXTEND consent-policy to add codes to it.
Property policyRule As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "policyRule", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Consent Verified by patient or family.
Property verification As List Of HS.FHIR.vR4.Model.Element.Consent.verification(XMLNAME = "verification", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Constraints to the base Consent.policyRule.
Property provision As HS.FHIR.vR4.Model.Element.Consent.provision(XMLNAME = "provision", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Consent";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Consent";

}
