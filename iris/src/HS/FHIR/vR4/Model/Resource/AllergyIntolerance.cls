/// Allergy or Intolerance (generally: Risk of adverse reaction to a substance)
Class HS.FHIR.vR4.Model.Resource.AllergyIntolerance Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External ids for this item.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// active | inactive | resolved
/// <p>
/// allergyintolerance-clinical|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend allergyintolerance-clinical|4.0.1 and you may NOT use codes from other ValueSets.
Property clinicalStatus As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "clinicalStatus", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// unconfirmed | confirmed | refuted | entered-in-error
/// <p>
/// allergyintolerance-verification|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend allergyintolerance-verification|4.0.1 and you may NOT use codes from other ValueSets.
Property verificationStatus As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "verificationStatus", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// allergy | intolerance - Underlying mechanism (if known)
/// <p>
/// allergy-intolerance-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend allergy-intolerance-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// food | medication | environment | biologic
/// <p>
/// allergy-intolerance-category|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend allergy-intolerance-category|4.0.1 and you may NOT use codes from other ValueSets.
Property category As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// low | high | unable-to-assess
/// <p>
/// allergy-intolerance-criticality|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend allergy-intolerance-criticality|4.0.1 and you may NOT use codes from other ValueSets.
Property criticality As %String(MAXLEN = 1000000, XMLNAME = "criticality", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Code that identifies the allergy or intolerance.
/// <p>
/// any FHIR4 code may be used; 
/// allergyintolerance-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who the sensitivity is for.
/// <p>
/// Patient
Property patient As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Encounter when the allergy or intolerance was asserted.
/// <p>
/// Encounter
Property encounter As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// Age
/// <p>
/// When allergy or intolerance was identified.
Property onsetAge As HS.FHIR.vR4.Model.Datatype.Age(XMLNAME = "onsetAge", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When allergy or intolerance was identified.
Property onsetDateTime As %String(MAXLEN = 1000000, XMLNAME = "onsetDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When allergy or intolerance was identified.
Property onsetPeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "onsetPeriod", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// When allergy or intolerance was identified.
Property onsetRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "onsetRange", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// When allergy or intolerance was identified.
Property onsetString As %String(MAXLEN = 1000000, XMLNAME = "onsetString", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Date first version of the resource instance was recorded.
Property recordedDate As %String(MAXLEN = 1000000, XMLNAME = "recordedDate", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who recorded the sensitivity.
/// <p>
/// Practitioner | PractitionerRole | Patient | RelatedPerson
Property recorder As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "recorder", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Source of the information about the allergy.
/// <p>
/// Patient | RelatedPerson | Practitioner | PractitionerRole
Property asserter As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "asserter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Date(/time) of last known occurrence of a reaction.
Property lastOccurrence As %String(MAXLEN = 1000000, XMLNAME = "lastOccurrence", XMLPROJECTION = "ATTRIBUTE");

/// Annotation
/// <p>
/// Additional text not captured in other fields.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Adverse Reaction Events linked to exposure to substance.
Property reaction As List Of HS.FHIR.vR4.Model.Element.AllergyIntolerance.reaction(XMLNAME = "reaction", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AllergyIntolerance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AllergyIntolerance";

}
