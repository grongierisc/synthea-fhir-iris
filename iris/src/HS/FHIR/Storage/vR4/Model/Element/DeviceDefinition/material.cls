/// A substance used to create the material(s) of which the device is made.
Class HS.FHIR.Storage.vR4.Model.Element.DeviceDefinition.material Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The substance.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property substance As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "substance", XMLPROJECTION = "ELEMENT") [ Required ];

/// boolean
/// <p>
/// Indicates an alternative material of the device.
Property alternate As %Boolean(XMLNAME = "alternate", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Whether the substance is a known or suspected allergen.
Property allergenicIndicator As %Boolean(XMLNAME = "allergenicIndicator", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceDefinition.material";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceDefinition.material";

Storage Default
{
<Data name="materialDefaultData">
<Subscript>"material"</Subscript>
<Value name="1">
<Value>substance</Value>
</Value>
<Value name="2">
<Value>alternate</Value>
</Value>
<Value name="3">
<Value>allergenicIndicator</Value>
</Value>
</Data>
<DefaultData>materialDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
