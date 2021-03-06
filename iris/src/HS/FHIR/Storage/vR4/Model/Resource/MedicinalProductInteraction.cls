/// MedicinalProductInteraction.
Class HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductInteraction Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// The medication for which this is a described interaction.
/// <p>
/// MedicinalProduct | Medication | Substance
Property subject As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The interaction described.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// The specific medication, 
/// food or laboratory test that interacts.
Property interactant As array Of HS.FHIR.Storage.vR4.Model.Element.MedicinalProductInteraction.interactant(XMLNAME = "interactant", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The type of the interaction e.g. 
/// drug-drug interaction, 
/// drug-food interaction, 
/// drug-lab test interaction.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The effect of the interaction, 
/// for example \"reduced gastric absorption of primary medication\"
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property effect As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "effect", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The incidence of the interaction, 
/// e.g. 
/// theoretical, 
/// observed.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property incidence As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "incidence", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Actions for managing the interaction.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property management As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "management", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductInteraction";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductInteraction";

Storage Default
{
<Data name="MedicinalProductInteractionDefaultData">
<Subscript>"MedicinalProductInteraction"</Subscript>
<Value name="1">
<Value>description</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
<Value name="3">
<Value>effect</Value>
</Value>
<Value name="4">
<Value>incidence</Value>
</Value>
<Value name="5">
<Value>management</Value>
</Value>
</Data>
<Data name="interactant">
<Attribute>interactant</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductInteraction.interactant"</Subscript>
</Data>
<Data name="subject">
<Attribute>subject</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductInteraction.subject"</Subscript>
</Data>
<DefaultData>MedicinalProductInteractionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
