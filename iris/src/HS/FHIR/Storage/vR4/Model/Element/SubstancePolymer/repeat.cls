/// Todo.
Class HS.FHIR.Storage.vR4.Model.Element.SubstancePolymer.repeat Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// integer
/// <p>
/// Todo.
Property numberOfUnits As %Integer(XMLNAME = "numberOfUnits", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Todo.
Property averageMolecularFormula As %String(MAXLEN = 1000000, XMLNAME = "averageMolecularFormula", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property repeatUnitAmountType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "repeatUnitAmountType", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Todo.
Property repeatUnit As array Of HS.FHIR.Storage.vR4.Model.Element.SubstancePolymer.repeat.repeatUnit(XMLNAME = "repeatUnit", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstancePolymer.repeat";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstancePolymer.repeat";

Storage Default
{
<Data name="repeatDefaultData">
<Subscript>"repeat"</Subscript>
<Value name="1">
<Value>numberOfUnits</Value>
</Value>
<Value name="2">
<Value>averageMolecularFormula</Value>
</Value>
<Value name="3">
<Value>repeatUnitAmountType</Value>
</Value>
</Data>
<Data name="repeatUnit">
<Attribute>repeatUnit</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstancePolymer.repeat.repeatUnit"</Subscript>
</Data>
<DefaultData>repeatDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
