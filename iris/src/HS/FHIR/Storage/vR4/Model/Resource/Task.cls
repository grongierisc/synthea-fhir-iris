/// A task to be performed.
Class HS.FHIR.Storage.vR4.Model.Resource.Task Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Task Instance Identifier.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Formal definition of task.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property instantiatesCanonical As %String(MAXLEN = 1000000, XMLNAME = "instantiatesCanonical", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Formal definition of task.
Property instantiatesUri As %String(MAXLEN = 1000000, XMLNAME = "instantiatesUri", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Request fulfilled by this task.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property basedOn As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Requisition or grouper id.
Property groupIdentifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "groupIdentifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Composite task.
/// <p>
/// Task
Property partOf As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// draft | requested | received | accepted | +
/// <p>
/// task-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend task-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Reason for current status.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property statusReason As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "statusReason", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// E.g. 
/// \"Specimen collected\", 
/// \"IV prepped\"
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property businessStatus As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "businessStatus", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// unknown | proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option
/// <p>
/// task-intent|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend task-intent|4.0.1 and you may NOT use codes from other ValueSets.
Property intent As %String(MAXLEN = 1000000, XMLNAME = "intent", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// routine | urgent | asap | stat
/// <p>
/// request-priority|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-priority|4.0.1 and you may NOT use codes from other ValueSets.
Property priority As %String(MAXLEN = 1000000, XMLNAME = "priority", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Task Type.
/// <p>
/// any FHIR4 code may be used; 
/// task-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Human-readable explanation of task.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// What task is acting on.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property focus As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "focus", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Beneficiary of the Task.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property for As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "for", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Healthcare event during which this task originated.
/// <p>
/// Encounter
Property encounter As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Start and end time of execution.
Property executionPeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "executionPeriod", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Task Creation Date.
Property authoredOn As %String(MAXLEN = 1000000, XMLNAME = "authoredOn", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Task Last Modified Date.
Property lastModified As %String(MAXLEN = 1000000, XMLNAME = "lastModified", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who is asking for task to be done.
/// <p>
/// Device | Organization | Patient | Practitioner | PractitionerRole | RelatedPerson
Property requester As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "requester", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Requested performer.
/// <p>
/// performer-role is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in performer-role, 
/// you may use codes from any ValueSet.
Property performerType As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "performerType", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Responsible individual.
/// <p>
/// Practitioner | PractitionerRole | Organization | CareTeam | HealthcareService | Patient | Device | RelatedPerson
Property owner As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "owner", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where task occurs.
/// <p>
/// Location
Property location As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Why task is needed.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property reasonCode As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why task is needed.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property reasonReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Associated insurance coverage.
/// <p>
/// Coverage | ClaimResponse
Property insurance As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "insurance", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments made about the task.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Key events in history of the Task.
/// <p>
/// Provenance
Property relevantHistory As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "relevantHistory", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Constraints on fulfillment tasks.
Property restriction As HS.FHIR.Storage.vR4.Model.Element.Task.restriction(XMLNAME = "restriction", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Information used to perform task.
Property input As array Of HS.FHIR.Storage.vR4.Model.Element.Task.input(XMLNAME = "input", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Information produced as part of task.
Property output As array Of HS.FHIR.Storage.vR4.Model.Element.Task.output(XMLNAME = "output", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Task";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Task";

Storage Default
{
<Data name="TaskDefaultData">
<Subscript>"Task"</Subscript>
<Value name="1">
<Value>instantiatesCanonical</Value>
</Value>
<Value name="2">
<Value>instantiatesUri</Value>
</Value>
<Value name="3">
<Value>groupIdentifier</Value>
</Value>
<Value name="4">
<Value>status</Value>
</Value>
<Value name="5">
<Value>statusReason</Value>
</Value>
<Value name="6">
<Value>businessStatus</Value>
</Value>
<Value name="7">
<Value>intent</Value>
</Value>
<Value name="8">
<Value>priority</Value>
</Value>
<Value name="9">
<Value>code</Value>
</Value>
<Value name="10">
<Value>description</Value>
</Value>
<Value name="11">
<Value>focus</Value>
</Value>
<Value name="12">
<Value>for</Value>
</Value>
<Value name="13">
<Value>encounter</Value>
</Value>
<Value name="14">
<Value>executionPeriod</Value>
</Value>
<Value name="15">
<Value>authoredOn</Value>
</Value>
<Value name="16">
<Value>lastModified</Value>
</Value>
<Value name="17">
<Value>requester</Value>
</Value>
<Value name="18">
<Value>owner</Value>
</Value>
<Value name="19">
<Value>location</Value>
</Value>
<Value name="20">
<Value>reasonCode</Value>
</Value>
<Value name="21">
<Value>reasonReference</Value>
</Value>
<Value name="22">
<Value>restriction</Value>
</Value>
</Data>
<Data name="basedOn">
<Attribute>basedOn</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Task.basedOn"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Task.identifier"</Subscript>
</Data>
<Data name="input">
<Attribute>input</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Task.input"</Subscript>
</Data>
<Data name="insurance">
<Attribute>insurance</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Task.insurance"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Task.note"</Subscript>
</Data>
<Data name="output">
<Attribute>output</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Task.output"</Subscript>
</Data>
<Data name="partOf">
<Attribute>partOf</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Task.partOf"</Subscript>
</Data>
<Data name="performerType">
<Attribute>performerType</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Task.performerType"</Subscript>
</Data>
<Data name="relevantHistory">
<Attribute>relevantHistory</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Task.relevantHistory"</Subscript>
</Data>
<DefaultData>TaskDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
