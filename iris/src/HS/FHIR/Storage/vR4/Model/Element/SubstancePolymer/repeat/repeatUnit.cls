/// Todo.
Class HS.FHIR.Storage.vR4.Model.Element.SubstancePolymer.repeat.repeatUnit Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property orientationOfPolymerisation As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "orientationOfPolymerisation", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Todo.
Property repeatUnit As %String(MAXLEN = 1000000, XMLNAME = "repeatUnit", XMLPROJECTION = "ATTRIBUTE");

/// SubstanceAmount
/// <p>
/// Todo.
Property amount As HS.FHIR.Storage.vR4.Model.Datatype.SubstanceAmount(XMLNAME = "amount", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Todo.
Property degreeOfPolymerisation As array Of HS.FHIR.Storage.vR4.Model.Element.SubstancePolymer.repeat.repeatUnit.degreeOfPolymerisation(XMLNAME = "degreeOfPolymerisation", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Todo.
Property structuralRepresentation As array Of HS.FHIR.Storage.vR4.Model.Element.SubstancePolymer.repeat.repeatUnit.structuralRepresentation(XMLNAME = "structuralRepresentation", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstancePolymer.repeat.repeatUnit";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstancePolymer.repeat.repeatUnit";

Storage Default
{
<Data name="degreeOfPolymerisation">
<Attribute>degreeOfPolymerisation</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstancePolymer.repeat.repeatUnit.degreeOfPolymerisation"</Subscript>
</Data>
<Data name="repeatUnitDefaultData">
<Subscript>"repeatUnit"</Subscript>
<Value name="1">
<Value>orientationOfPolymerisation</Value>
</Value>
<Value name="2">
<Value>repeatUnit</Value>
</Value>
<Value name="3">
<Value>amount</Value>
</Value>
</Data>
<Data name="structuralRepresentation">
<Attribute>structuralRepresentation</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstancePolymer.repeat.repeatUnit.structuralRepresentation"</Subscript>
</Data>
<DefaultData>repeatUnitDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
