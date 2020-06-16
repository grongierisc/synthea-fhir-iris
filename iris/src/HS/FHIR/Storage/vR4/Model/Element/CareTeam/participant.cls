/// Members of the team.
Class HS.FHIR.Storage.vR4.Model.Element.CareTeam.participant Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of involvement.
/// <p>
/// any FHIR4 code may be used; 
/// participant-role shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property role As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who is involved.
/// <p>
/// Practitioner | PractitionerRole | RelatedPerson | Patient | Organization | CareTeam
Property member As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "member", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization of the practitioner.
/// <p>
/// Organization
Property onBehalfOf As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "onBehalfOf", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Time period of participant.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CareTeam.participant";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CareTeam.participant";

Storage Default
{
<Data name="participantDefaultData">
<Subscript>"participant"</Subscript>
<Value name="1">
<Value>member</Value>
</Value>
<Value name="2">
<Value>onBehalfOf</Value>
</Value>
<Value name="3">
<Value>period</Value>
</Value>
</Data>
<Data name="role">
<Attribute>role</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.CareTeam.participant.role"</Subscript>
</Data>
<DefaultData>participantDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
