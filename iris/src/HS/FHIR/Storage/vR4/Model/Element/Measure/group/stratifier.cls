/// Stratifier criteria for the measure.
Class HS.FHIR.Storage.vR4.Model.Element.Measure.group.stratifier Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Meaning of the stratifier.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The human readable description of this stratifier.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// Expression
/// <p>
/// How the measure should be stratified.
Property criteria As HS.FHIR.Storage.vR4.Model.Datatype.Expression(XMLNAME = "criteria", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Stratifier criteria component for the measure.
Property component As array Of HS.FHIR.Storage.vR4.Model.Element.Measure.group.stratifier.component(XMLNAME = "component", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Measure.group.stratifier";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Measure.group.stratifier";

Storage Default
{
<Data name="component">
<Attribute>component</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Measure.group.stratifier.component"</Subscript>
</Data>
<Data name="stratifierDefaultData">
<Subscript>"stratifier"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>description</Value>
</Value>
<Value name="3">
<Value>criteria</Value>
</Value>
</Data>
<DefaultData>stratifierDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
