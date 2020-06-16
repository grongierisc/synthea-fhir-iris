/// A definition of a set of people that apply to some clinically related context, 
/// for example people contraindicated for a certain medication.
Class HS.FHIR.Storage.vR4.Model.Datatype.Population Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The age of the specific population.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property ageCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "ageCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// The age of the specific population.
Property ageRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "ageRange", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The gender of the specific population.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property gender As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "gender", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Race of the specific population.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property race As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "race", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The existing physiological conditions of the specific population to which this applies.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property physiologicalCondition As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "physiologicalCondition", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "HS.FHIR.Storage.vR4.Model.Datatype.Population";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "HS.FHIR.Storage.vR4.Model.Datatype.Population";

Storage Default
{
<Data name="PopulationDefaultData">
<Subscript>"Population"</Subscript>
<Value name="1">
<Value>ageCodeableConcept</Value>
</Value>
<Value name="2">
<Value>ageRange</Value>
</Value>
<Value name="3">
<Value>gender</Value>
</Value>
<Value name="4">
<Value>race</Value>
</Value>
<Value name="5">
<Value>physiologicalCondition</Value>
</Value>
</Data>
<DefaultData>PopulationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
