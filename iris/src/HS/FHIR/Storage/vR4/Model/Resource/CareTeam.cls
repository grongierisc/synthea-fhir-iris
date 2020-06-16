/// Planned participants in the coordination and delivery of care for a patient or group.
Class HS.FHIR.Storage.vR4.Model.Resource.CareTeam Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External Ids for this team.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// proposed | active | suspended | inactive | entered-in-error
/// <p>
/// care-team-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend care-team-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Type of team.
/// <p>
/// any FHIR4 code may be used; 
/// care-team-category shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Name of the team, 
/// such as crisis assessment team.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who care team is for.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Encounter created as part of.
/// <p>
/// Encounter
Property encounter As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Time period team covers.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Members of the team.
Property participant As array Of HS.FHIR.Storage.vR4.Model.Element.CareTeam.participant(XMLNAME = "participant", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Why the care team exists.
/// <p>
/// any FHIR4 code may be used; 
/// clinical-findings shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why the care team exists.
/// <p>
/// Condition
Property reasonReference As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization responsible for the care team.
/// <p>
/// Organization
Property managingOrganization As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "managingOrganization", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// A contact detail for the care team (that applies to all members)
Property telecom As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactPoint(XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments made about the CareTeam.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CareTeam";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CareTeam";

Storage Default
{
<Data name="CareTeamDefaultData">
<Subscript>"CareTeam"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>name</Value>
</Value>
<Value name="3">
<Value>subject</Value>
</Value>
<Value name="4">
<Value>encounter</Value>
</Value>
<Value name="5">
<Value>period</Value>
</Value>
</Data>
<Data name="category">
<Attribute>category</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CareTeam.category"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CareTeam.identifier"</Subscript>
</Data>
<Data name="managingOrganization">
<Attribute>managingOrganization</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CareTeam.managingOrganization"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CareTeam.note"</Subscript>
</Data>
<Data name="participant">
<Attribute>participant</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CareTeam.participant"</Subscript>
</Data>
<Data name="reasonCode">
<Attribute>reasonCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CareTeam.reasonCode"</Subscript>
</Data>
<Data name="reasonReference">
<Attribute>reasonReference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CareTeam.reasonReference"</Subscript>
</Data>
<Data name="telecom">
<Attribute>telecom</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CareTeam.telecom"</Subscript>
</Data>
<DefaultData>CareTeamDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
