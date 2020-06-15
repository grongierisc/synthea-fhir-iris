/// Request for a medication, 
/// substance or device.
Class HS.FHIR.vR4.Model.Resource.SupplyRequest Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier for SupplyRequest.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

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
Property category As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

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
Property itemCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "itemCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Medication, 
/// Substance, 
/// or Device requested to be supplied.
/// <p>
/// Medication | Substance | Device
Property itemReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "itemReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// Quantity
/// <p>
/// The requested amount of the item indicated.
Property quantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Ordered item details.
Property parameter As List Of HS.FHIR.vR4.Model.Element.SupplyRequest.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the request should be fulfilled.
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When the request should be fulfilled.
Property occurrencePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "occurrencePeriod", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// When the request should be fulfilled.
Property occurrenceTiming As HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "occurrenceTiming", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the request was made.
Property authoredOn As %String(MAXLEN = 1000000, XMLNAME = "authoredOn", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Individual making the request.
/// <p>
/// Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device
Property requester As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "requester", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who is intended to fulfill the request.
/// <p>
/// Organization | HealthcareService
Property supplier As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "supplier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The reason why the supply item was requested.
/// <p>
/// any FHIR4 code may be used; 
/// supplyrequest-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The reason why the supply item was requested.
/// <p>
/// Condition | Observation | DiagnosticReport | DocumentReference
Property reasonReference As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The origin of the supply.
/// <p>
/// Organization | Location
Property deliverFrom As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "deliverFrom", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The destination of the supply.
/// <p>
/// Organization | Location | Patient
Property deliverTo As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "deliverTo", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SupplyRequest";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SupplyRequest";

}
