/// In-line definition of activity.
Class HS.FHIR.vR4.Model.Element.CarePlan.activity.detail Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// Appointment | CommunicationRequest | DeviceRequest | MedicationRequest | NutritionOrder | Task | ServiceRequest | VisionPrescription
/// <p>
/// care-plan-activity-kind|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend care-plan-activity-kind|4.0.1 and you may NOT use codes from other ValueSets.
Property kind As %String(MAXLEN = 1000000, XMLNAME = "kind", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Instantiates FHIR protocol or definition.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property instantiatesCanonical As list Of %String(MAXLEN = 1000000, SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "instantiatesCanonical", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Instantiates external protocol or definition.
Property instantiatesUri As list Of %String(MAXLEN = 1000000, SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "instantiatesUri", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Detail type of activity.
/// <p>
/// any FHIR4 code may be used; 
/// procedure-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Why activity should be done or why activity was prohibited.
/// <p>
/// any FHIR4 code may be used; 
/// clinical-findings shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As list Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why activity is needed.
/// <p>
/// Condition | Observation | DiagnosticReport | DocumentReference
Property reasonReference As list Of HS.FHIR.vR4.Model.Base.Reference(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Goals this activity relates to.
/// <p>
/// Goal
Property goal As list Of HS.FHIR.vR4.Model.Base.Reference(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "goal", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// not-started | scheduled | in-progress | on-hold | completed | cancelled | stopped | unknown | entered-in-error
/// <p>
/// care-plan-activity-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend care-plan-activity-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Reason for current status.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property statusReason As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "statusReason", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// If true, 
/// activity is prohibiting action.
Property doNotPerform As %Boolean(XMLNAME = "doNotPerform", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When activity is to occur.
Property scheduledPeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "scheduledPeriod", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// When activity is to occur.
Property scheduledString As %String(MAXLEN = 1000000, XMLNAME = "scheduledString", XMLPROJECTION = "ATTRIBUTE");

/// Timing
/// <p>
/// When activity is to occur.
Property scheduledTiming As HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "scheduledTiming", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where it should happen.
/// <p>
/// Location
Property location As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who will be responsible?
/// <p>
/// Practitioner | PractitionerRole | Organization | RelatedPerson | Patient | CareTeam | HealthcareService | Device
Property performer As list Of HS.FHIR.vR4.Model.Base.Reference(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// What is to be administered/supplied.
/// <p>
/// any FHIR4 code may be used; 
/// medication-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property productCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "productCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// What is to be administered/supplied.
/// <p>
/// Medication | Substance
Property productReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "productReference", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// How to consume/day?
Property dailyAmount As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "dailyAmount", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// How much to administer/supply/consume.
Property quantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Extra info describing activity to perform.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CarePlan.activity.detail";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CarePlan.activity.detail";

Storage Default
{
<Data name="detailDefaultData">
<Subscript>"detail"</Subscript>
<Value name="1">
<Value>kind</Value>
</Value>
<Value name="2">
<Value>code</Value>
</Value>
<Value name="3">
<Value>goal</Value>
</Value>
<Value name="4">
<Value>status</Value>
</Value>
<Value name="5">
<Value>statusReason</Value>
</Value>
<Value name="6">
<Value>doNotPerform</Value>
</Value>
<Value name="7">
<Value>scheduledPeriod</Value>
</Value>
<Value name="8">
<Value>scheduledString</Value>
</Value>
<Value name="9">
<Value>scheduledTiming</Value>
</Value>
<Value name="10">
<Value>location</Value>
</Value>
<Value name="11">
<Value>performer</Value>
</Value>
<Value name="12">
<Value>productCodeableConcept</Value>
</Value>
<Value name="13">
<Value>productReference</Value>
</Value>
<Value name="14">
<Value>dailyAmount</Value>
</Value>
<Value name="15">
<Value>quantity</Value>
</Value>
<Value name="16">
<Value>description</Value>
</Value>
</Data>
<Data name="instantiatesCanonical">
<Attribute>instantiatesCanonical</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.CarePlan.activity.detail.instantiatesCanonical"</Subscript>
</Data>
<Data name="instantiatesUri">
<Attribute>instantiatesUri</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.CarePlan.activity.detail.instantiatesUri"</Subscript>
</Data>
<Data name="reasonCode">
<Attribute>reasonCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.CarePlan.activity.detail.reasonCode"</Subscript>
</Data>
<Data name="reasonReference">
<Attribute>reasonReference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.CarePlan.activity.detail.reasonReference"</Subscript>
</Data>
<DefaultData>detailDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
