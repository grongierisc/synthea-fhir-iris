/// Indicates if the medicinal product has an orphan designation for the treatment of a rare disease.
Class HS.FHIR.vR4.Model.Element.MedicinalProduct.specialDesignation Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Identifier for the designation, 
/// or procedure number.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The type of special designation, 
/// e.g. 
/// orphan drug, 
/// minor use.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The intended use of the product, 
/// e.g. 
/// prevention, 
/// treatment.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property intendedUse As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "intendedUse", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Condition for which the medicinal use applies.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property indicationCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "indicationCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Condition for which the medicinal use applies.
/// <p>
/// MedicinalProductIndication.
Property indicationReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "indicationReference", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// For example granted, 
/// pending, 
/// expired or withdrawn.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property status As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Date when the designation was granted.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Animal species for which this applies.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property species As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "species", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProduct.specialDesignation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProduct.specialDesignation";

}
