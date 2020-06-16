/// Device capabilities.
Class HS.FHIR.Storage.vR4.Model.Element.DeviceDefinition.capability Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of capability.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Description of capability.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property description As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "description", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceDefinition.capability";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceDefinition.capability";

Storage Default
{
<Data name="capabilityDefaultData">
<Subscript>"capability"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
</Data>
<Data name="description">
<Attribute>description</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.DeviceDefinition.capability.description"</Subscript>
</Data>
<DefaultData>capabilityDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
