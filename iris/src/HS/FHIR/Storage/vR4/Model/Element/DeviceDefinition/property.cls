/// The actual configuration settings of a device as it actually operates, 
/// e.g., 
/// regulation status, 
/// time properties.
Class HS.FHIR.Storage.vR4.Model.Element.DeviceDefinition.property Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Code that specifies the property DeviceDefinitionPropetyCode (Extensible)
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// Quantity
/// <p>
/// Property value as a quantity.
Property valueQuantity As array Of HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Property value as a code, 
/// e.g., 
/// NTP4 (synced to NTP)
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCode As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "valueCode", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceDefinition.property";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceDefinition.property";

Storage Default
{
<Data name="propertyDefaultData">
<Subscript>"property"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
</Data>
<Data name="valueCode">
<Attribute>valueCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.DeviceDefinition.property.valueCode"</Subscript>
</Data>
<Data name="valueQuantity">
<Attribute>valueQuantity</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.DeviceDefinition.property.valueQuantity"</Subscript>
</Data>
<DefaultData>propertyDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
