/// List of past encounter classes.
Class HS.FHIR.Storage.vR4.Model.Element.Encounter.classHistory Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Coding
/// <p>
/// inpatient | outpatient | ambulatory | emergency +
/// <p>
/// v3-ActEncounterCode is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in v3-ActEncounterCode, 
/// you may formally EXTEND v3-ActEncounterCode to add codes to it.
Property class As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "class", XMLPROJECTION = "ELEMENT") [ Required ];

/// Period
/// <p>
/// The time that the episode was in the specified class.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Encounter.classHistory";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Encounter.classHistory";

Storage Default
{
<Data name="classHistoryDefaultData">
<Subscript>"classHistory"</Subscript>
<Value name="1">
<Value>class</Value>
</Value>
<Value name="2">
<Value>period</Value>
</Value>
</Data>
<DefaultData>classHistoryDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
