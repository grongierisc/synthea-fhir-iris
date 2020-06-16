/// Manipulated, 
/// implanted, 
/// or removed device.
Class HS.FHIR.Storage.vR4.Model.Element.Procedure.focalDevice Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Kind of change to device.
/// <p>
/// device-action is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in device-action, 
/// you may use codes from any ValueSet.
Property action As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "action", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Device that was changed.
/// <p>
/// Device
Property manipulated As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "manipulated", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Procedure.focalDevice";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Procedure.focalDevice";

Storage Default
{
<Data name="focalDeviceDefaultData">
<Subscript>"focalDevice"</Subscript>
<Value name="1">
<Value>action</Value>
</Value>
<Value name="2">
<Value>manipulated</Value>
</Value>
</Data>
<DefaultData>focalDeviceDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
