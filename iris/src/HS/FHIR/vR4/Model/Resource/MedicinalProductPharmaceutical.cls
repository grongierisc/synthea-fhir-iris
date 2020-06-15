/// A pharmaceutical product described in terms of its composition and dose form.
Class HS.FHIR.vR4.Model.Resource.MedicinalProductPharmaceutical Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// An identifier for the pharmaceutical medicinal product.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The administrable dose form, 
/// after necessary reconstitution.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property administrableDoseForm As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "administrableDoseForm", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property unitOfPresentation As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "unitOfPresentation", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Ingredient.
/// <p>
/// MedicinalProductIngredient
Property ingredient As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "ingredient", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Accompanying device.
/// <p>
/// DeviceDefinition
Property device As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "device", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Characteristics e.g. 
/// a products onset of action.
Property characteristics As List Of HS.FHIR.vR4.Model.Element.MedicinalProductPharmaceutical.characteristics(XMLNAME = "characteristics", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The path by which the pharmaceutical product is taken into or makes contact with the body.
Property routeOfAdministration As List Of HS.FHIR.vR4.Model.Element.MedicinalProductPharmaceutical.routeOfAdministration(XMLNAME = "routeOfAdministration", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductPharmaceutical";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductPharmaceutical";

}
