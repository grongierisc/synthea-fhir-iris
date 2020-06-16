/// Key information to flag to healthcare providers.
Class HS.FHIR.Storage.vR4.Model.Resource.Flag Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business identifier.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | inactive | entered-in-error
/// <p>
/// flag-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend flag-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Clinical, 
/// administrative, 
/// etc.
/// <p>
/// any FHIR4 code may be used; 
/// flag-category shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Coded or textual message to display to user.
/// <p>
/// any FHIR4 code may be used; 
/// flag-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Who/What is flag about?
/// <p>
/// Patient | Location | Group | Organization | Practitioner | PlanDefinition | Medication | Procedure
Property subject As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Period
/// <p>
/// Time period when flag is active.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Alert relevant during encounter.
/// <p>
/// Encounter
Property encounter As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Flag creator.
/// <p>
/// Device | Organization | Patient | Practitioner | PractitionerRole
Property author As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Flag";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Flag";

Storage Default
{
<Data name="FlagDefaultData">
<Subscript>"Flag"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>code</Value>
</Value>
<Value name="3">
<Value>subject</Value>
</Value>
<Value name="4">
<Value>period</Value>
</Value>
<Value name="5">
<Value>encounter</Value>
</Value>
<Value name="6">
<Value>author</Value>
</Value>
</Data>
<Data name="category">
<Attribute>category</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Flag.category"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Flag.identifier"</Subscript>
</Data>
<DefaultData>FlagDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
