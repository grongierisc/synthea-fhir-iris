/// MedicinalProductUndesirableEffect.
Class HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductUndesirableEffect Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// The medication for which this is an indication.
/// <p>
/// MedicinalProduct | Medication
Property subject As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The symptom, 
/// condition or undesirable effect.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property symptomConditionEffect As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "symptomConditionEffect", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Classification of the effect.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property classification As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "classification", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The frequency of occurrence of the effect.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property frequencyOfOccurrence As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "frequencyOfOccurrence", XMLPROJECTION = "ELEMENT");

/// Population
/// <p>
/// The population group to which this applies.
Property population As array Of HS.FHIR.Storage.vR4.Model.Datatype.Population(XMLNAME = "population", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductUndesirableEffect";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductUndesirableEffect";

Storage Default
{
<Data name="MedicinalProductUndesirableEffectDefaultData">
<Subscript>"MedicinalProductUndesirableEffect"</Subscript>
<Value name="1">
<Value>symptomConditionEffect</Value>
</Value>
<Value name="2">
<Value>classification</Value>
</Value>
<Value name="3">
<Value>frequencyOfOccurrence</Value>
</Value>
</Data>
<Data name="population">
<Attribute>population</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductUndesirableEffect.population"</Subscript>
</Data>
<Data name="subject">
<Attribute>subject</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductUndesirableEffect.subject"</Subscript>
</Data>
<DefaultData>MedicinalProductUndesirableEffectDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
