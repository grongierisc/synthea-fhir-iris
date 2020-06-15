/// The actual configuration settings of a device as it actually operates, 
/// e.g., 
/// regulation status, 
/// time properties.
Class HS.FHIR.vR4.Model.Element.DeviceDefinition.property Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Code that specifies the property DeviceDefinitionPropetyCode (Extensible)
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// Quantity
/// <p>
/// Property value as a quantity.
Property valueQuantity As List Of HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Property value as a code, 
/// e.g., 
/// NTP4 (synced to NTP)
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "valueCode", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceDefinition.property";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceDefinition.property";

}
