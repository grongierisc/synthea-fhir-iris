/// A goal for the study.
Class HS.FHIR.Storage.vR4.Model.Element.ResearchStudy.objective Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Label for the objective.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// primary | secondary | exploratory
/// <p>
/// research-study-objective-type is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in research-study-objective-type, 
/// you may use codes from any ValueSet.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ResearchStudy.objective";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ResearchStudy.objective";

Storage Default
{
<Data name="objectiveDefaultData">
<Subscript>"objective"</Subscript>
<Value name="1">
<Value>name</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
</Data>
<DefaultData>objectiveDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
