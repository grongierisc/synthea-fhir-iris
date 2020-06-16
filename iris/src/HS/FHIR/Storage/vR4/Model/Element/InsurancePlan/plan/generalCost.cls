/// Overall costs.
Class HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.plan.generalCost Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of cost.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Number of enrollees.
Property groupSize As %Integer(XMLNAME = "groupSize", XMLPROJECTION = "ATTRIBUTE");

/// Money
/// <p>
/// Cost value.
Property cost As HS.FHIR.Storage.vR4.Model.Datatype.Money(XMLNAME = "cost", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Additional cost information.
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan.plan.generalCost";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan.plan.generalCost";

Storage Default
{
<Data name="generalCostDefaultData">
<Subscript>"generalCost"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>groupSize</Value>
</Value>
<Value name="3">
<Value>cost</Value>
</Value>
<Value name="4">
<Value>comment</Value>
</Value>
</Data>
<DefaultData>generalCostDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
