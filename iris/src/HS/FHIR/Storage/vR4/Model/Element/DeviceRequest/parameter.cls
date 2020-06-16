/// Device details.
Class HS.FHIR.Storage.vR4.Model.Element.DeviceRequest.parameter Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Device detail.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Value of detail.
Property valueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Value of detail.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "valueCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Value of detail.
Property valueQuantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Value of detail.
Property valueRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "valueRange", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceRequest.parameter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceRequest.parameter";

Storage Default
{
<Data name="parameterDefaultData">
<Subscript>"parameter"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>valueBoolean</Value>
</Value>
<Value name="3">
<Value>valueCodeableConcept</Value>
</Value>
<Value name="4">
<Value>valueQuantity</Value>
</Value>
<Value name="5">
<Value>valueRange</Value>
</Value>
</Data>
<DefaultData>parameterDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
