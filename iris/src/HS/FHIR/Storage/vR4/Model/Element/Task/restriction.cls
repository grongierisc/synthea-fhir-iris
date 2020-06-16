/// Constraints on fulfillment tasks.
Class HS.FHIR.Storage.vR4.Model.Element.Task.restriction Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// How many times to repeat.
Property repetitions As %Integer(XMLNAME = "repetitions", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When fulfillment sought.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// For whom is fulfillment sought?
/// <p>
/// Patient | Practitioner | PractitionerRole | RelatedPerson | Group | Organization
Property recipient As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "recipient", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Task.restriction";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Task.restriction";

Storage Default
{
<Data name="recipient">
<Attribute>recipient</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Task.restriction.recipient"</Subscript>
</Data>
<Data name="restrictionDefaultData">
<Subscript>"restriction"</Subscript>
<Value name="1">
<Value>repetitions</Value>
</Value>
<Value name="2">
<Value>period</Value>
</Value>
</Data>
<DefaultData>restrictionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
