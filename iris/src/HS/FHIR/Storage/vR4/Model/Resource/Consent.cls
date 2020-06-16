/// A healthcare consumer's  choices to permit or deny recipients or roles to perform actions for specific purposes and periods of time.
Class HS.FHIR.Storage.vR4.Model.Resource.Consent Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Identifier for this record (external references)
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

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
Property scope As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "scope", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Classification of the consent statement - for indexing/retrieval.
/// <p>
/// consent-category is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in consent-category, 
/// you may formally EXTEND consent-category to add codes to it.
Property category As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Who the consent applies to.
/// <p>
/// Patient
Property patient As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When this Consent was created or indexed.
Property dateTime As %String(MAXLEN = 1000000, XMLNAME = "dateTime", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who is agreeing to the policy and rules.
/// <p>
/// Organization | Patient | Practitioner | RelatedPerson | PractitionerRole
Property performer As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Custodian of the consent.
/// <p>
/// Organization
Property organization As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "organization", XMLPROJECTION = "ELEMENT");

/// Attachment
/// <p>
/// Source from which this consent is taken.
Property sourceAttachment As HS.FHIR.Storage.vR4.Model.Datatype.Attachment(XMLNAME = "sourceAttachment", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Source from which this consent is taken.
/// <p>
/// Consent | DocumentReference | Contract | QuestionnaireResponse
Property sourceReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "sourceReference", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Policies covered by this consent.
Property policy As array Of HS.FHIR.Storage.vR4.Model.Element.Consent.policy(XMLNAME = "policy", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Regulation that this consents to.
/// <p>
/// consent-policy is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in consent-policy, 
/// you may formally EXTEND consent-policy to add codes to it.
Property policyRule As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "policyRule", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Consent Verified by patient or family.
Property verification As array Of HS.FHIR.Storage.vR4.Model.Element.Consent.verification(XMLNAME = "verification", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Constraints to the base Consent.policyRule.
Property provision As HS.FHIR.Storage.vR4.Model.Element.Consent.provision(XMLNAME = "provision", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Consent";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Consent";

Storage Default
{
<Data name="ConsentDefaultData">
<Subscript>"Consent"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>scope</Value>
</Value>
<Value name="3">
<Value>patient</Value>
</Value>
<Value name="4">
<Value>dateTime</Value>
</Value>
<Value name="5">
<Value>sourceAttachment</Value>
</Value>
<Value name="6">
<Value>sourceReference</Value>
</Value>
<Value name="7">
<Value>policyRule</Value>
</Value>
<Value name="8">
<Value>provision</Value>
</Value>
</Data>
<Data name="category">
<Attribute>category</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Consent.category"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Consent.identifier"</Subscript>
</Data>
<Data name="organization">
<Attribute>organization</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Consent.organization"</Subscript>
</Data>
<Data name="performer">
<Attribute>performer</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Consent.performer"</Subscript>
</Data>
<Data name="policy">
<Attribute>policy</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Consent.policy"</Subscript>
</Data>
<Data name="verification">
<Attribute>verification</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Consent.verification"</Subscript>
</Data>
<DefaultData>ConsentDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
