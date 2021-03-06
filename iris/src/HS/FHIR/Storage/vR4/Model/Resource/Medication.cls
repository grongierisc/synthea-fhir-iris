/// Definition of a Medication.
Class HS.FHIR.Storage.vR4.Model.Resource.Medication Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business identifier for this medication.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Codes that identify this medication.
/// <p>
/// any FHIR4 code may be used; 
/// medication-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | inactive | entered-in-error
/// <p>
/// medication-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend medication-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Manufacturer of the item.
/// <p>
/// Organization
Property manufacturer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "manufacturer", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// powder | tablets | capsule +
/// <p>
/// any FHIR4 code may be used; 
/// medication-form-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property form As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "form", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// Amount of drug in package.
Property amount As HS.FHIR.Storage.vR4.Model.Datatype.Ratio(XMLNAME = "amount", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Active or inactive ingredient.
Property ingredient As array Of HS.FHIR.Storage.vR4.Model.Element.Medication.ingredient(XMLNAME = "ingredient", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Details about packaged medications.
Property batch As HS.FHIR.Storage.vR4.Model.Element.Medication.batch(XMLNAME = "batch", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Medication";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Medication";

Storage Default
{
<Data name="MedicationDefaultData">
<Subscript>"Medication"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>status</Value>
</Value>
<Value name="3">
<Value>manufacturer</Value>
</Value>
<Value name="4">
<Value>form</Value>
</Value>
<Value name="5">
<Value>amount</Value>
</Value>
<Value name="6">
<Value>batch</Value>
</Value>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Medication.identifier"</Subscript>
</Data>
<Data name="ingredient">
<Attribute>ingredient</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Medication.ingredient"</Subscript>
</Data>
<DefaultData>MedicationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
