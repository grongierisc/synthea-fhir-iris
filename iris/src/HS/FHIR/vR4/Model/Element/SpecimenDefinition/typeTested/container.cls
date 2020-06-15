/// The specimen's container.
Class HS.FHIR.vR4.Model.Element.SpecimenDefinition.typeTested.container Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Container material.
/// <p>
/// any FHIR4 code may be used; 
/// container-material shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property material As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "material", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Kind of container associated with the kind of specimen.
/// <p>
/// any FHIR4 code may be used; 
/// specimen-container-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Color of container cap.
/// <p>
/// any FHIR4 code may be used; 
/// container-cap shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property cap As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "cap", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Container description.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// Quantity
/// <p>
/// Container capacity.
Property capacity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "capacity", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Minimum volume.
Property minimumVolumeQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "minimumVolumeQuantity", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Minimum volume.
Property minimumVolumeString As %String(MAXLEN = 1000000, XMLNAME = "minimumVolumeString", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Additive associated with container.
Property additive As List Of HS.FHIR.vR4.Model.Element.SpecimenDefinition.typeTested.container.additive(XMLNAME = "additive", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Specimen container preparation.
Property preparation As %String(MAXLEN = 1000000, XMLNAME = "preparation", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SpecimenDefinition.typeTested.container";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SpecimenDefinition.typeTested.container";

}
