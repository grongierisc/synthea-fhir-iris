/// Clinical context of document.
Class HS.FHIR.Storage.vR4.Model.Element.DocumentReference.context Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Context of the document  content.
/// <p>
/// Encounter | EpisodeOfCare
Property encounter As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Main clinical acts documented.
/// <p>
/// any FHIR4 code may be used; 
/// v3-ActCode shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property event As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "event", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Time of service that is being documented.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Kind of facility where patient was seen.
/// <p>
/// any FHIR4 code may be used; 
/// c80-facilitycodes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property facilityType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "facilityType", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Additional details about where the content was created (e.g. 
/// clinical specialty)
/// <p>
/// any FHIR4 code may be used; 
/// c80-practice-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property practiceSetting As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "practiceSetting", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Patient demographics from source.
/// <p>
/// Patient
Property sourcePatientInfo As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "sourcePatientInfo", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Related identifiers or resources.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property related As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "related", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DocumentReference.context";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DocumentReference.context";

Storage Default
{
<Data name="contextDefaultData">
<Subscript>"context"</Subscript>
<Value name="1">
<Value>period</Value>
</Value>
<Value name="2">
<Value>facilityType</Value>
</Value>
<Value name="3">
<Value>practiceSetting</Value>
</Value>
<Value name="4">
<Value>sourcePatientInfo</Value>
</Value>
</Data>
<Data name="encounter">
<Attribute>encounter</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.DocumentReference.context.encounter"</Subscript>
</Data>
<Data name="event">
<Attribute>event</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.DocumentReference.context.event"</Subscript>
</Data>
<Data name="related">
<Attribute>related</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.DocumentReference.context.related"</Subscript>
</Data>
<DefaultData>contextDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
