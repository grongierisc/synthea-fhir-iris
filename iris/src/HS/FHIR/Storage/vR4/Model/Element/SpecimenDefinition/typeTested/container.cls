/// The specimen's container.
Class HS.FHIR.Storage.vR4.Model.Element.SpecimenDefinition.typeTested.container Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Container material.
/// <p>
/// any FHIR4 code may be used; 
/// container-material shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property material As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "material", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Kind of container associated with the kind of specimen.
/// <p>
/// any FHIR4 code may be used; 
/// specimen-container-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Color of container cap.
/// <p>
/// any FHIR4 code may be used; 
/// container-cap shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property cap As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "cap", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Container description.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// Quantity
/// <p>
/// Container capacity.
Property capacity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "capacity", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Minimum volume.
Property minimumVolumeQuantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "minimumVolumeQuantity", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Minimum volume.
Property minimumVolumeString As %String(MAXLEN = 1000000, XMLNAME = "minimumVolumeString", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Additive associated with container.
Property additive As array Of HS.FHIR.Storage.vR4.Model.Element.SpecimenDefinition.typeTested.container.additive(XMLNAME = "additive", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Specimen container preparation.
Property preparation As %String(MAXLEN = 1000000, XMLNAME = "preparation", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SpecimenDefinition.typeTested.container";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SpecimenDefinition.typeTested.container";

Storage Default
{
<Data name="additive">
<Attribute>additive</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SpecimenDefinition.typeTested.container.additive"</Subscript>
</Data>
<Data name="containerDefaultData">
<Subscript>"container"</Subscript>
<Value name="1">
<Value>material</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
<Value name="3">
<Value>cap</Value>
</Value>
<Value name="4">
<Value>description</Value>
</Value>
<Value name="5">
<Value>capacity</Value>
</Value>
<Value name="6">
<Value>minimumVolumeQuantity</Value>
</Value>
<Value name="7">
<Value>minimumVolumeString</Value>
</Value>
<Value name="8">
<Value>preparation</Value>
</Value>
</Data>
<DefaultData>containerDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
