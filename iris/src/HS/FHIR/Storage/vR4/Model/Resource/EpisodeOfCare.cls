/// An association of a Patient with an Organization and  Healthcare Provider(s) for a period of time that the Organization assumes some level of responsibility.
Class HS.FHIR.Storage.vR4.Model.Resource.EpisodeOfCare Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier(s) relevant for this EpisodeOfCare.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// planned | waitlist | active | onhold | finished | cancelled | entered-in-error
/// <p>
/// episode-of-care-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend episode-of-care-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// BackboneElement
/// <p>
/// Past list of status codes (the current status may be included to cover the start date of the status)
Property statusHistory As array Of HS.FHIR.Storage.vR4.Model.Element.EpisodeOfCare.statusHistory(XMLNAME = "statusHistory", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Type/class  - e.g. 
/// specialist referral, 
/// disease management.
/// <p>
/// any FHIR4 code may be used; 
/// episodeofcare-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The list of diagnosis relevant to this episode of care.
Property diagnosis As array Of HS.FHIR.Storage.vR4.Model.Element.EpisodeOfCare.diagnosis(XMLNAME = "diagnosis", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The patient who is the focus of this episode of care.
/// <p>
/// Patient
Property patient As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Organization that assumes care.
/// <p>
/// Organization
Property managingOrganization As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "managingOrganization", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Interval during responsibility is assumed.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Originating Referral Request(s)
/// <p>
/// ServiceRequest
Property referralRequest As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "referralRequest", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Care manager/care coordinator for the patient.
/// <p>
/// Practitioner | PractitionerRole
Property careManager As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "careManager", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Other practitioners facilitating this episode of care.
/// <p>
/// CareTeam
Property team As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "team", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The set of accounts that may be used for billing for this EpisodeOfCare.
/// <p>
/// Account
Property account As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "account", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EpisodeOfCare";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EpisodeOfCare";

Storage Default
{
<Data name="EpisodeOfCareDefaultData">
<Subscript>"EpisodeOfCare"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>patient</Value>
</Value>
<Value name="3">
<Value>managingOrganization</Value>
</Value>
<Value name="4">
<Value>period</Value>
</Value>
<Value name="5">
<Value>careManager</Value>
</Value>
</Data>
<Data name="account">
<Attribute>account</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.EpisodeOfCare.account"</Subscript>
</Data>
<Data name="diagnosis">
<Attribute>diagnosis</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.EpisodeOfCare.diagnosis"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.EpisodeOfCare.identifier"</Subscript>
</Data>
<Data name="referralRequest">
<Attribute>referralRequest</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.EpisodeOfCare.referralRequest"</Subscript>
</Data>
<Data name="statusHistory">
<Attribute>statusHistory</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.EpisodeOfCare.statusHistory"</Subscript>
</Data>
<Data name="team">
<Attribute>team</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.EpisodeOfCare.team"</Subscript>
</Data>
<Data name="type">
<Attribute>type</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.EpisodeOfCare.type"</Subscript>
</Data>
<DefaultData>EpisodeOfCareDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
