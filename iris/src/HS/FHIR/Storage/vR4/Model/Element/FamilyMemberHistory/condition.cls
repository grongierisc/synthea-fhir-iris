/// Condition that the related person had.
Class HS.FHIR.Storage.vR4.Model.Element.FamilyMemberHistory.condition Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Condition suffered by relation.
/// <p>
/// any FHIR4 code may be used; 
/// condition-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// deceased | permanent disability | etc.
/// <p>
/// any FHIR4 code may be used; 
/// condition-outcome shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property outcome As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "outcome", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether the condition contributed to the cause of death.
Property contributedToDeath As %Boolean(XMLNAME = "contributedToDeath", XMLPROJECTION = "ATTRIBUTE");

/// Age
/// <p>
/// When condition first manifested.
Property onsetAge As HS.FHIR.Storage.vR4.Model.Datatype.Age(XMLNAME = "onsetAge", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// When condition first manifested.
Property onsetPeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "onsetPeriod", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// When condition first manifested.
Property onsetRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "onsetRange", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// When condition first manifested.
Property onsetString As %String(MAXLEN = 1000000, XMLNAME = "onsetString", XMLPROJECTION = "ATTRIBUTE");

/// Annotation
/// <p>
/// Extra information about condition.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "FamilyMemberHistory.condition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "FamilyMemberHistory.condition";

Storage Default
{
<Data name="conditionDefaultData">
<Subscript>"condition"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>outcome</Value>
</Value>
<Value name="3">
<Value>contributedToDeath</Value>
</Value>
<Value name="4">
<Value>onsetAge</Value>
</Value>
<Value name="5">
<Value>onsetPeriod</Value>
</Value>
<Value name="6">
<Value>onsetRange</Value>
</Value>
<Value name="7">
<Value>onsetString</Value>
</Value>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.FamilyMemberHistory.condition.note"</Subscript>
</Data>
<DefaultData>conditionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
