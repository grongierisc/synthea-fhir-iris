/// Medication supply authorization.
Class HS.FHIR.Storage.vR4.Model.Element.MedicationRequest.dispenseRequest Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// BackboneElement
/// <p>
/// First fill details.
Property initialFill As HS.FHIR.Storage.vR4.Model.Element.MedicationRequest.dispenseRequest.initialFill(XMLNAME = "initialFill", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// Minimum period of time between dispenses.
Property dispenseInterval As HS.FHIR.Storage.vR4.Model.Datatype.Duration(XMLNAME = "dispenseInterval", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Time period supply is authorized for.
Property validityPeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "validityPeriod", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// Number of refills authorized.
Property numberOfRepeatsAllowed As %Integer(XMLNAME = "numberOfRepeatsAllowed", XMLPROJECTION = "ATTRIBUTE");

/// Quantity
/// <p>
/// Amount of medication to supply per dispense.
Property quantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// Number of days supply per dispense.
Property expectedSupplyDuration As HS.FHIR.Storage.vR4.Model.Datatype.Duration(XMLNAME = "expectedSupplyDuration", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Intended dispenser.
/// <p>
/// Organization
Property performer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationRequest.dispenseRequest";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationRequest.dispenseRequest";

Storage Default
{
<Data name="dispenseRequestDefaultData">
<Subscript>"dispenseRequest"</Subscript>
<Value name="1">
<Value>initialFill</Value>
</Value>
<Value name="2">
<Value>dispenseInterval</Value>
</Value>
<Value name="3">
<Value>validityPeriod</Value>
</Value>
<Value name="4">
<Value>numberOfRepeatsAllowed</Value>
</Value>
<Value name="5">
<Value>quantity</Value>
</Value>
<Value name="6">
<Value>expectedSupplyDuration</Value>
</Value>
<Value name="7">
<Value>performer</Value>
</Value>
</Data>
<DefaultData>dispenseRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
