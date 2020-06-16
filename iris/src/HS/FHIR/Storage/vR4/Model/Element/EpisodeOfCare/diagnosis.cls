/// The list of diagnosis relevant to this episode of care.
Class HS.FHIR.Storage.vR4.Model.Element.EpisodeOfCare.diagnosis Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Conditions/problems/diagnoses this episode of care is for.
/// <p>
/// Condition
Property condition As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "condition", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Role that this diagnosis has within the episode of care (e.g. 
/// admission, 
/// billing, 
/// discharge ?)
/// <p>
/// diagnosis-role is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in diagnosis-role, 
/// you may use codes from any ValueSet.
Property role As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Ranking of the diagnosis (for each role type)
Property rank As %Integer(XMLNAME = "rank", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EpisodeOfCare.diagnosis";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EpisodeOfCare.diagnosis";

Storage Default
{
<Data name="diagnosisDefaultData">
<Subscript>"diagnosis"</Subscript>
<Value name="1">
<Value>condition</Value>
</Value>
<Value name="2">
<Value>role</Value>
</Value>
<Value name="3">
<Value>rank</Value>
</Value>
</Data>
<DefaultData>diagnosisDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
