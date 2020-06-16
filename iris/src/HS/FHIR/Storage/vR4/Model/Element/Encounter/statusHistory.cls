/// List of past encounter statuses.
Class HS.FHIR.Storage.vR4.Model.Element.Encounter.statusHistory Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// planned | arrived | triaged | in-progress | onleave | finished | cancelled +
/// <p>
/// encounter-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend encounter-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Period
/// <p>
/// The time that the episode was in the specified status.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Encounter.statusHistory";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Encounter.statusHistory";

Storage Default
{
<Data name="statusHistoryDefaultData">
<Subscript>"statusHistory"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>period</Value>
</Value>
</Data>
<DefaultData>statusHistoryDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
