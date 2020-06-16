/// Todo.
Class HS.FHIR.Storage.vR4.Model.Element.SubstancePolymer.repeat.repeatUnit.degreeOfPolymerisation Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property degree As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "degree", XMLPROJECTION = "ELEMENT");

/// SubstanceAmount
/// <p>
/// Todo.
Property amount As HS.FHIR.Storage.vR4.Model.Datatype.SubstanceAmount(XMLNAME = "amount", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstancePolymer.repeat.repeatUnit.degreeOfPolymerisation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstancePolymer.repeat.repeatUnit.degreeOfPolymerisation";

Storage Default
{
<Data name="degreeOfPolymerisationDefaultData">
<Subscript>"degreeOfPolymerisation"</Subscript>
<Value name="1">
<Value>degree</Value>
</Value>
<Value name="2">
<Value>amount</Value>
</Value>
</Data>
<DefaultData>degreeOfPolymerisationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
