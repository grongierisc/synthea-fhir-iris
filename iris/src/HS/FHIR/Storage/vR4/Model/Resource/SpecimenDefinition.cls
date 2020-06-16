/// Kind of specimen.
Class HS.FHIR.Storage.vR4.Model.Resource.SpecimenDefinition Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business identifier of a kind of specimen.
Property identifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Kind of material to collect.
/// <p>
/// any FHIR4 code may be used; 
/// v2-0487 shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property typeCollected As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "typeCollected", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Patient preparation for collection.
/// <p>
/// any FHIR4 code may be used; 
/// prepare-patient-prior-specimen-collection shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property patientPreparation As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "patientPreparation", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Time aspect for collection.
Property timeAspect As %String(MAXLEN = 1000000, XMLNAME = "timeAspect", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Specimen collection procedure.
/// <p>
/// any FHIR4 code may be used; 
/// specimen-collection shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property collection As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "collection", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Specimen in container intended for testing by lab.
Property typeTested As array Of HS.FHIR.Storage.vR4.Model.Element.SpecimenDefinition.typeTested(XMLNAME = "typeTested", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SpecimenDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SpecimenDefinition";

Storage Default
{
<Data name="SpecimenDefinitionDefaultData">
<Subscript>"SpecimenDefinition"</Subscript>
<Value name="1">
<Value>identifier</Value>
</Value>
<Value name="2">
<Value>typeCollected</Value>
</Value>
<Value name="3">
<Value>timeAspect</Value>
</Value>
</Data>
<Data name="collection">
<Attribute>collection</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SpecimenDefinition.collection"</Subscript>
</Data>
<Data name="patientPreparation">
<Attribute>patientPreparation</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SpecimenDefinition.patientPreparation"</Subscript>
</Data>
<Data name="typeTested">
<Attribute>typeTested</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SpecimenDefinition.typeTested"</Subscript>
</Data>
<DefaultData>SpecimenDefinitionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
