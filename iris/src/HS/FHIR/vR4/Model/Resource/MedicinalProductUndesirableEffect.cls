/// MedicinalProductUndesirableEffect.
Class HS.FHIR.vR4.Model.Resource.MedicinalProductUndesirableEffect Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// The medication for which this is an indication.
/// <p>
/// MedicinalProduct | Medication
Property subject As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The symptom, 
/// condition or undesirable effect.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property symptomConditionEffect As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "symptomConditionEffect", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Classification of the effect.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property classification As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "classification", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The frequency of occurrence of the effect.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property frequencyOfOccurrence As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "frequencyOfOccurrence", XMLPROJECTION = "ELEMENT");

/// Population
/// <p>
/// The population group to which this applies.
Property population As List Of HS.FHIR.vR4.Model.Datatype.Population(XMLNAME = "population", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductUndesirableEffect";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductUndesirableEffect";

}
