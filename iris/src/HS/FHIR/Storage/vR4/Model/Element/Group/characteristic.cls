/// Include / Exclude group members by Trait.
Class HS.FHIR.Storage.vR4.Model.Element.Group.characteristic Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Kind of characteristic.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// boolean
/// <p>
/// Value held by characteristic.
Property valueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Value held by characteristic.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "valueCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Quantity
/// <p>
/// Value held by characteristic.
Property valueQuantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT") [ Required ];

/// Range
/// <p>
/// Value held by characteristic.
Property valueRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "valueRange", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Value held by characteristic.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property valueReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "valueReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// boolean
/// <p>
/// Group includes or excludes.
Property exclude As %Boolean(XMLNAME = "exclude", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Period
/// <p>
/// Period over which characteristic is tested.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Group.characteristic";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Group.characteristic";

Storage Default
{
<Data name="characteristicDefaultData">
<Subscript>"characteristic"</Subscript>
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
<Value name="6">
<Value>valueReference</Value>
</Value>
<Value name="7">
<Value>exclude</Value>
</Value>
<Value name="8">
<Value>period</Value>
</Value>
</Data>
<DefaultData>characteristicDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
