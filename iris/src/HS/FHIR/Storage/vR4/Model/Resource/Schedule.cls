/// A container for slots of time that may be available for booking appointments.
Class HS.FHIR.Storage.vR4.Model.Resource.Schedule Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External Ids for this item.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether this schedule is in active use.
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// High-level category.
/// <p>
/// any FHIR4 code may be used; 
/// service-category shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property serviceCategory As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "serviceCategory", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Specific service.
/// <p>
/// any FHIR4 code may be used; 
/// service-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property serviceType As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "serviceType", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Type of specialty needed.
/// <p>
/// c80-practice-codes is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in c80-practice-codes, 
/// you may use codes from any ValueSet.
Property specialty As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "specialty", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Resource(s) that availability information is being provided for.
/// <p>
/// Patient | Practitioner | PractitionerRole | RelatedPerson | Device | HealthcareService | Location
Property actor As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "actor", XMLPROJECTION = "ELEMENT") [ Required ];

/// Period
/// <p>
/// Period of time covered by schedule.
Property planningHorizon As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "planningHorizon", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Comments on availability.
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Schedule";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Schedule";

Storage Default
{
<Data name="ScheduleDefaultData">
<Subscript>"Schedule"</Subscript>
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>planningHorizon</Value>
</Value>
<Value name="3">
<Value>comment</Value>
</Value>
</Data>
<Data name="actor">
<Attribute>actor</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Schedule.actor"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Schedule.identifier"</Subscript>
</Data>
<Data name="serviceCategory">
<Attribute>serviceCategory</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Schedule.serviceCategory"</Subscript>
</Data>
<Data name="serviceType">
<Attribute>serviceType</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Schedule.serviceType"</Subscript>
</Data>
<Data name="specialty">
<Attribute>specialty</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Schedule.specialty"</Subscript>
</Data>
<DefaultData>ScheduleDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
