/// Relationship to another action.
Class HS.FHIR.Storage.vR4.Model.Element.RequestGroup.action.relatedAction Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// id
/// <p>
/// What action this is related to.
Property actionId As %String(MAXLEN = 1000000, XMLNAME = "actionId", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// before-start | before | before-end | concurrent-with-start | concurrent | concurrent-with-end | after-start | after | after-end
/// <p>
/// action-relationship-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend action-relationship-type|4.0.1 and you may NOT use codes from other ValueSets.
Property relationship As %String(MAXLEN = 1000000, XMLNAME = "relationship", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Duration
/// <p>
/// Time offset for the relationship.
Property offsetDuration As HS.FHIR.Storage.vR4.Model.Datatype.Duration(XMLNAME = "offsetDuration", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Time offset for the relationship.
Property offsetRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "offsetRange", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "RequestGroup.action.relatedAction";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "RequestGroup.action.relatedAction";

Storage Default
{
<Data name="relatedActionDefaultData">
<Subscript>"relatedAction"</Subscript>
<Value name="1">
<Value>actionId</Value>
</Value>
<Value name="2">
<Value>relationship</Value>
</Value>
<Value name="3">
<Value>offsetDuration</Value>
</Value>
<Value name="4">
<Value>offsetRange</Value>
</Value>
</Data>
<DefaultData>relatedActionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
