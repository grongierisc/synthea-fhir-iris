/// Request for a medication, 
/// substance or device.
Class HS.FHIR.Storage.vR4.Model.Resource.SupplyRequest Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier for SupplyRequest.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// draft | active | suspended +
/// <p>
/// supplyrequest-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend supplyrequest-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// The kind of supply (central, 
/// non-stock, 
/// etc.)
/// <p>
/// any FHIR4 code may be used; 
/// supplyrequest-kind shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// routine | urgent | asap | stat
/// <p>
/// request-priority|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-priority|4.0.1 and you may NOT use codes from other ValueSets.
Property priority As %String(MAXLEN = 1000000, XMLNAME = "priority", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Medication, 
/// Substance, 
/// or Device requested to be supplied.
/// <p>
/// any FHIR4 code may be used; 
/// supply-item shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property itemCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "itemCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Medication, 
/// Substance, 
/// or Device requested to be supplied.
/// <p>
/// Medication | Substance | Device
Property itemReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "itemReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// Quantity
/// <p>
/// The requested amount of the item indicated.
Property quantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Ordered item details.
Property parameter As array Of HS.FHIR.Storage.vR4.Model.Element.SupplyRequest.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the request should be fulfilled.
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When the request should be fulfilled.
Property occurrencePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "occurrencePeriod", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// When the request should be fulfilled.
Property occurrenceTiming As HS.FHIR.Storage.vR4.Model.Datatype.Timing(XMLNAME = "occurrenceTiming", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the request was made.
Property authoredOn As %String(MAXLEN = 1000000, XMLNAME = "authoredOn", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Individual making the request.
/// <p>
/// Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device
Property requester As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "requester", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who is intended to fulfill the request.
/// <p>
/// Organization | HealthcareService
Property supplier As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "supplier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The reason why the supply item was requested.
/// <p>
/// any FHIR4 code may be used; 
/// supplyrequest-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The reason why the supply item was requested.
/// <p>
/// Condition | Observation | DiagnosticReport | DocumentReference
Property reasonReference As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The origin of the supply.
/// <p>
/// Organization | Location
Property deliverFrom As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "deliverFrom", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The destination of the supply.
/// <p>
/// Organization | Location | Patient
Property deliverTo As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "deliverTo", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SupplyRequest";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SupplyRequest";

Storage Default
{
<Data name="SupplyRequestDefaultData">
<Subscript>"SupplyRequest"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>category</Value>
</Value>
<Value name="3">
<Value>priority</Value>
</Value>
<Value name="4">
<Value>itemCodeableConcept</Value>
</Value>
<Value name="5">
<Value>itemReference</Value>
</Value>
<Value name="6">
<Value>quantity</Value>
</Value>
<Value name="7">
<Value>occurrenceDateTime</Value>
</Value>
<Value name="8">
<Value>occurrencePeriod</Value>
</Value>
<Value name="9">
<Value>occurrenceTiming</Value>
</Value>
<Value name="10">
<Value>authoredOn</Value>
</Value>
<Value name="11">
<Value>requester</Value>
</Value>
<Value name="12">
<Value>deliverFrom</Value>
</Value>
<Value name="13">
<Value>deliverTo</Value>
</Value>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SupplyRequest.identifier"</Subscript>
</Data>
<Data name="parameter">
<Attribute>parameter</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SupplyRequest.parameter"</Subscript>
</Data>
<Data name="reasonCode">
<Attribute>reasonCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SupplyRequest.reasonCode"</Subscript>
</Data>
<Data name="reasonReference">
<Attribute>reasonReference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SupplyRequest.reasonReference"</Subscript>
</Data>
<Data name="supplier">
<Attribute>supplier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SupplyRequest.supplier"</Subscript>
</Data>
<DefaultData>SupplyRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
