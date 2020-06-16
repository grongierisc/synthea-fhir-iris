/// An interaction during which services are provided to the patient.
Class HS.FHIR.Storage.vR4.Model.Resource.Encounter Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Identifier(s) by which this encounter is known.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// planned | arrived | triaged | in-progress | onleave | finished | cancelled +
/// <p>
/// encounter-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend encounter-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// BackboneElement
/// <p>
/// List of past encounter statuses.
Property statusHistory As array Of HS.FHIR.Storage.vR4.Model.Element.Encounter.statusHistory(XMLNAME = "statusHistory", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Classification of patient encounter.
/// <p>
/// v3-ActEncounterCode is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in v3-ActEncounterCode, 
/// you may formally EXTEND v3-ActEncounterCode to add codes to it.
Property class As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "class", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// List of past encounter classes.
Property classHistory As array Of HS.FHIR.Storage.vR4.Model.Element.Encounter.classHistory(XMLNAME = "classHistory", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Specific type of encounter.
/// <p>
/// any FHIR4 code may be used; 
/// encounter-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Specific type of service.
/// <p>
/// any FHIR4 code may be used; 
/// service-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property serviceType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "serviceType", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Indicates the urgency of the encounter.
/// <p>
/// any FHIR4 code may be used; 
/// v3-ActPriority shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property priority As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "priority", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The patient or group present at the encounter.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Episode(s) of care that this encounter should be recorded against.
/// <p>
/// EpisodeOfCare
Property episodeOfCare As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "episodeOfCare", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The ServiceRequest that initiated this encounter.
/// <p>
/// ServiceRequest
Property basedOn As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// List of participants involved in the encounter.
Property participant As array Of HS.FHIR.Storage.vR4.Model.Element.Encounter.participant(XMLNAME = "participant", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The appointment that scheduled this encounter.
/// <p>
/// Appointment
Property appointment As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "appointment", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// The start and end time of the encounter.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// Quantity of time the encounter lasted (less time absent)
Property length As HS.FHIR.Storage.vR4.Model.Datatype.Duration(XMLNAME = "length", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Coded reason the encounter takes place.
/// <p>
/// encounter-reason is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in encounter-reason, 
/// you may use codes from any ValueSet.
Property reasonCode As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Reason the encounter takes place (reference)
/// <p>
/// Condition | Procedure | Observation | ImmunizationRecommendation
Property reasonReference As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The list of diagnosis relevant to this encounter.
Property diagnosis As array Of HS.FHIR.Storage.vR4.Model.Element.Encounter.diagnosis(XMLNAME = "diagnosis", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The set of accounts that may be used for billing for this Encounter.
/// <p>
/// Account
Property account As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "account", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Details about the admission to a healthcare service.
Property hospitalization As HS.FHIR.Storage.vR4.Model.Element.Encounter.hospitalization(XMLNAME = "hospitalization", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// List of locations where the patient has been.
Property location As array Of HS.FHIR.Storage.vR4.Model.Element.Encounter.location(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The organization (facility) responsible for this encounter.
/// <p>
/// Organization
Property serviceProvider As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "serviceProvider", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Another Encounter this encounter is part of.
/// <p>
/// Encounter
Property partOf As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Encounter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Encounter";

Storage Default
{
<Data name="EncounterDefaultData">
<Subscript>"Encounter"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>class</Value>
</Value>
<Value name="3">
<Value>serviceType</Value>
</Value>
<Value name="4">
<Value>priority</Value>
</Value>
<Value name="5">
<Value>subject</Value>
</Value>
<Value name="6">
<Value>period</Value>
</Value>
<Value name="7">
<Value>length</Value>
</Value>
<Value name="8">
<Value>hospitalization</Value>
</Value>
<Value name="9">
<Value>serviceProvider</Value>
</Value>
<Value name="10">
<Value>partOf</Value>
</Value>
</Data>
<Data name="account">
<Attribute>account</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Encounter.account"</Subscript>
</Data>
<Data name="appointment">
<Attribute>appointment</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Encounter.appointment"</Subscript>
</Data>
<Data name="basedOn">
<Attribute>basedOn</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Encounter.basedOn"</Subscript>
</Data>
<Data name="classHistory">
<Attribute>classHistory</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Encounter.classHistory"</Subscript>
</Data>
<Data name="diagnosis">
<Attribute>diagnosis</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Encounter.diagnosis"</Subscript>
</Data>
<Data name="episodeOfCare">
<Attribute>episodeOfCare</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Encounter.episodeOfCare"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Encounter.identifier"</Subscript>
</Data>
<Data name="location">
<Attribute>location</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Encounter.location"</Subscript>
</Data>
<Data name="participant">
<Attribute>participant</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Encounter.participant"</Subscript>
</Data>
<Data name="reasonCode">
<Attribute>reasonCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Encounter.reasonCode"</Subscript>
</Data>
<Data name="reasonReference">
<Attribute>reasonReference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Encounter.reasonReference"</Subscript>
</Data>
<Data name="statusHistory">
<Attribute>statusHistory</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Encounter.statusHistory"</Subscript>
</Data>
<Data name="type">
<Attribute>type</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Encounter.type"</Subscript>
</Data>
<DefaultData>EncounterDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
