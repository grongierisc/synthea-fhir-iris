/// Who should participate in the action.
Class HS.FHIR.Storage.vR4.Model.Element.ActivityDefinition.participant Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// patient | practitioner | related-person | device
/// <p>
/// action-participant-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend action-participant-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// E.g. 
/// Nurse, 
/// Surgeon, 
/// Parent, 
/// etc.
/// <p>
/// any FHIR4 code may be used; 
/// action-participant-role shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property role As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ActivityDefinition.participant";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ActivityDefinition.participant";

Storage Default
{
<Data name="participantDefaultData">
<Subscript>"participant"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>role</Value>
</Value>
</Data>
<DefaultData>participantDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
