/// The specific medication, 
/// food or laboratory test that interacts.
Class HS.FHIR.Storage.vR4.Model.Element.MedicinalProductInteraction.interactant Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The specific medication, 
/// food or laboratory test that interacts.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property itemCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "itemCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// The specific medication, 
/// food or laboratory test that interacts.
/// <p>
/// MedicinalProduct | Medication | Substance | ObservationDefinition
Property itemReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "itemReference", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductInteraction.interactant";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductInteraction.interactant";

Storage Default
{
<Data name="interactantDefaultData">
<Subscript>"interactant"</Subscript>
<Value name="1">
<Value>itemCodeableConcept</Value>
</Value>
<Value name="2">
<Value>itemReference</Value>
</Value>
</Data>
<DefaultData>interactantDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
