/// A packaging item, 
/// as a contained for medicine, 
/// possibly with other packaging items within.
Class HS.FHIR.vR4.Model.Element.MedicinalProductPackaged.packageItem Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Including possibly Data Carrier Identifier.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The physical type of the container of the medicine.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// Quantity
/// <p>
/// The quantity of this package in the medicinal product, 
/// at the current level of packaging. 
/// The outermost is always 1.
Property quantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Material type of the package item.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property material As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "material", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// A possible alternate material for the packaging.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property alternateMaterial As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "alternateMaterial", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// A device accompanying a medicinal product.
/// <p>
/// DeviceDefinition
Property device As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "device", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The manufactured item as contained in the packaged medicinal product.
/// <p>
/// MedicinalProductManufactured
Property manufacturedItem As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "manufacturedItem", XMLPROJECTION = "ELEMENT");

/// MedicinalProductPackaged:packageItem
/// <p>
/// Allows containers within containers.
Property packageItem As List Of HS.FHIR.vR4.Model.Element.MedicinalProductPackaged.packageItem(XMLNAME = "packageItem", XMLPROJECTION = "ELEMENT");

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

/// ProductShelfLife
/// <p>
/// Shelf Life and storage information.
Property shelfLifeStorage As List Of HS.FHIR.vR4.Model.Datatype.ProductShelfLife(XMLNAME = "shelfLifeStorage", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Manufacturer of this Package Item.
/// <p>
/// Organization
Property manufacturer As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "manufacturer", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductPackaged.packageItem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductPackaged.packageItem";

}
