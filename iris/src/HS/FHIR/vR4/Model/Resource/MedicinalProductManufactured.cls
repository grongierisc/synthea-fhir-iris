/// The manufactured item as contained in the packaged medicinal product.
Class HS.FHIR.vR4.Model.Resource.MedicinalProductManufactured Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Dose form as manufactured and before any transformation into the pharmaceutical product.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property manufacturedDoseForm As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "manufacturedDoseForm", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// The ?real world? units in which the quantity of the manufactured item is described.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property unitOfPresentation As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "unitOfPresentation", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// The quantity or \"count number\" of the manufactured item.
Property quantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Manufacturer of the item (Note that this should be named \"manufacturer\" but it currently causes technical issues)
/// <p>
/// Organization
Property manufacturer As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "manufacturer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Ingredient.
/// <p>
/// MedicinalProductIngredient
Property ingredient As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "ingredient", XMLPROJECTION = "ELEMENT");

/// ProdCharacteristic
/// <p>
/// Dimensions, 
/// color etc.
Property physicalCharacteristics As HS.FHIR.vR4.Model.Datatype.ProdCharacteristic(XMLNAME = "physicalCharacteristics", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Other codeable characteristics.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property otherCharacteristics As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "otherCharacteristics", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductManufactured";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductManufactured";

}
