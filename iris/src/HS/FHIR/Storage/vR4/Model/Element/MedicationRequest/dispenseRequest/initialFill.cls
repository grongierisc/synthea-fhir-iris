/// First fill details.
Class HS.FHIR.Storage.vR4.Model.Element.MedicationRequest.dispenseRequest.initialFill Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Quantity
/// <p>
/// First fill quantity.
Property quantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// First fill duration.
Property duration As HS.FHIR.Storage.vR4.Model.Datatype.Duration(XMLNAME = "duration", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationRequest.dispenseRequest.initialFill";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationRequest.dispenseRequest.initialFill";

Storage Default
{
<Data name="initialFillDefaultData">
<Subscript>"initialFill"</Subscript>
<Value name="1">
<Value>quantity</Value>
</Value>
<Value name="2">
<Value>duration</Value>
</Value>
</Data>
<DefaultData>initialFillDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
