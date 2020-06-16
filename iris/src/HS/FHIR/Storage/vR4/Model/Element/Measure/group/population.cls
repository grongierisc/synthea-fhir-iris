/// Population criteria.
Class HS.FHIR.Storage.vR4.Model.Element.Measure.group.population Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-exception | measure-population | measure-population-exclusion | measure-observation
/// <p>
/// measure-population is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in measure-population, 
/// you may formally EXTEND measure-population to add codes to it.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The human readable description of this population criteria.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// Expression
/// <p>
/// The criteria that defines this population.
Property criteria As HS.FHIR.Storage.vR4.Model.Datatype.Expression(XMLNAME = "criteria", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Measure.group.population";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Measure.group.population";

Storage Default
{
<Data name="populationDefaultData">
<Subscript>"population"</Subscript>
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
<DefaultData>populationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
