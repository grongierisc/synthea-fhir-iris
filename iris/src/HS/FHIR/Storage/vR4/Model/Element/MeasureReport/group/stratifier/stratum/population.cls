/// Population results in this stratum.
Class HS.FHIR.Storage.vR4.Model.Element.MeasureReport.group.stratifier.stratum.population Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-exception | measure-population | measure-population-exclusion | measure-observation
/// <p>
/// measure-population is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in measure-population, 
/// you may formally EXTEND measure-population to add codes to it.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// integer
/// <p>
/// Size of the population.
Property count As %Integer(XMLNAME = "count", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// For subject-list reports, 
/// the subject results in this population.
/// <p>
/// List
Property subjectResults As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subjectResults", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MeasureReport.group.stratifier.stratum.population";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MeasureReport.group.stratifier.stratum.population";

Storage Default
{
<Data name="populationDefaultData">
<Subscript>"population"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>count</Value>
</Value>
<Value name="3">
<Value>subjectResults</Value>
</Value>
</Data>
<DefaultData>populationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
