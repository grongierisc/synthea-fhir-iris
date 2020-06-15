/// Adverse Reaction Events linked to exposure to substance.
Class HS.FHIR.vR4.Model.Element.AllergyIntolerance.reaction Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Specific substance or pharmaceutical product considered to be responsible for event.
/// <p>
/// any FHIR4 code may be used; 
/// substance-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property substance As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "substance", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Clinical symptoms/signs associated with the Event.
/// <p>
/// any FHIR4 code may be used; 
/// clinical-findings shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property manifestation As list Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "manifestation", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Description of the event as a whole.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Date(/time) when manifestations showed.
Property onset As %String(MAXLEN = 1000000, XMLNAME = "onset", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// mild | moderate | severe (of event as a whole)
/// <p>
/// reaction-event-severity|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend reaction-event-severity|4.0.1 and you may NOT use codes from other ValueSets.
Property severity As %String(MAXLEN = 1000000, XMLNAME = "severity", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// How the subject was exposed to the substance.
/// <p>
/// any FHIR4 code may be used; 
/// route-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property exposureRoute As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "exposureRoute", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Text about event not captured in other fields.
Property note As list Of HS.FHIR.vR4.Model.Datatype.Annotation(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AllergyIntolerance.reaction";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AllergyIntolerance.reaction";

Storage Default
{
<Data name="manifestation">
<Attribute>manifestation</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.AllergyIntolerance.reaction.manifestation"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.AllergyIntolerance.reaction.note"</Subscript>
</Data>
<Data name="reactionDefaultData">
<Subscript>"reaction"</Subscript>
<Value name="1">
<Value>substance</Value>
</Value>
<Value name="2">
<Value>description</Value>
</Value>
<Value name="3">
<Value>onset</Value>
</Value>
<Value name="4">
<Value>severity</Value>
</Value>
<Value name="5">
<Value>exposureRoute</Value>
</Value>
</Data>
<DefaultData>reactionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
