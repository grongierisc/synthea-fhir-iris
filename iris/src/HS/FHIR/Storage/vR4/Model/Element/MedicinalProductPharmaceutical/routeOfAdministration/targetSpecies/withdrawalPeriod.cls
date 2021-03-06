/// A species specific time during which consumption of animal product is not appropriate.
Class HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPharmaceutical.routeOfAdministration.targetSpecies.withdrawalPeriod Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Coded expression for the type of tissue for which the withdrawal period applues, 
/// e.g. 
/// meat, 
/// milk.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property tissue As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "tissue", XMLPROJECTION = "ELEMENT") [ Required ];

/// Quantity
/// <p>
/// A value for the time.
Property value As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "value", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Extra information about the withdrawal period.
Property supportingInformation As %String(MAXLEN = 1000000, XMLNAME = "supportingInformation", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductPharmaceutical.routeOfAdministration.targetSpecies.withdrawalPeriod";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductPharmaceutical.routeOfAdministration.targetSpecies.withdrawalPeriod";

Storage Default
{
<Data name="withdrawalPeriodDefaultData">
<Subscript>"withdrawalPeriod"</Subscript>
<Value name="1">
<Value>tissue</Value>
</Value>
<Value name="2">
<Value>value</Value>
</Value>
<Value name="3">
<Value>supportingInformation</Value>
</Value>
</Data>
<DefaultData>withdrawalPeriodDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
