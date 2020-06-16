/// A packaging item, 
/// as a contained for medicine, 
/// possibly with other packaging items within.
Class HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPackaged.packageItem Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Including possibly Data Carrier Identifier.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The physical type of the container of the medicine.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// Quantity
/// <p>
/// The quantity of this package in the medicinal product, 
/// at the current level of packaging. 
/// The outermost is always 1.
Property quantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Material type of the package item.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property material As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "material", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// A possible alternate material for the packaging.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property alternateMaterial As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "alternateMaterial", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// A device accompanying a medicinal product.
/// <p>
/// DeviceDefinition
Property device As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "device", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The manufactured item as contained in the packaged medicinal product.
/// <p>
/// MedicinalProductManufactured
Property manufacturedItem As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "manufacturedItem", XMLPROJECTION = "ELEMENT");

/// MedicinalProductPackaged:packageItem
/// <p>
/// Allows containers within containers.
Property packageItem As array Of HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPackaged.packageItem(XMLNAME = "packageItem", XMLPROJECTION = "ELEMENT");

/// ProdCharacteristic
/// <p>
/// Dimensions, 
/// color etc.
Property physicalCharacteristics As HS.FHIR.Storage.vR4.Model.Datatype.ProdCharacteristic(XMLNAME = "physicalCharacteristics", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Other codeable characteristics.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property otherCharacteristics As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "otherCharacteristics", XMLPROJECTION = "ELEMENT");

/// ProductShelfLife
/// <p>
/// Shelf Life and storage information.
Property shelfLifeStorage As array Of HS.FHIR.Storage.vR4.Model.Datatype.ProductShelfLife(XMLNAME = "shelfLifeStorage", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Manufacturer of this Package Item.
/// <p>
/// Organization
Property manufacturer As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "manufacturer", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductPackaged.packageItem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductPackaged.packageItem";

Storage Default
{
<Data name="alternateMaterial">
<Attribute>alternateMaterial</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPackaged.packageItem.alternateMaterial"</Subscript>
</Data>
<Data name="device">
<Attribute>device</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPackaged.packageItem.device"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPackaged.packageItem.identifier"</Subscript>
</Data>
<Data name="manufacturedItem">
<Attribute>manufacturedItem</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPackaged.packageItem.manufacturedItem"</Subscript>
</Data>
<Data name="manufacturer">
<Attribute>manufacturer</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPackaged.packageItem.manufacturer"</Subscript>
</Data>
<Data name="material">
<Attribute>material</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPackaged.packageItem.material"</Subscript>
</Data>
<Data name="otherCharacteristics">
<Attribute>otherCharacteristics</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPackaged.packageItem.otherCharacteristics"</Subscript>
</Data>
<Data name="packageItem">
<Attribute>packageItem</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPackaged.packageItem.packageItem"</Subscript>
</Data>
<Data name="packageItemDefaultData">
<Subscript>"packageItem"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>quantity</Value>
</Value>
<Value name="3">
<Value>physicalCharacteristics</Value>
</Value>
</Data>
<Data name="shelfLifeStorage">
<Attribute>shelfLifeStorage</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPackaged.packageItem.shelfLifeStorage"</Subscript>
</Data>
<DefaultData>packageItemDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
