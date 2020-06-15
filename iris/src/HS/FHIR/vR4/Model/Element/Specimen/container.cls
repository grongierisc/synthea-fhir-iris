/// Direct container of specimen (tube/slide, 
/// etc.)
Class HS.FHIR.vR4.Model.Element.Specimen.container Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Id for the container.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Textual description of the container.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Kind of container directly associated with specimen.
/// <p>
/// any FHIR4 code may be used; 
/// specimen-container-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Container volume or size.
Property capacity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "capacity", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Quantity of specimen within container.
Property specimenQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "specimenQuantity", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Additive associated with container.
/// <p>
/// any FHIR4 code may be used; 
/// v2-0371 shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property additiveCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "additiveCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Additive associated with container.
/// <p>
/// Substance.
Property additiveReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "additiveReference", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Specimen.container";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Specimen.container";

}
