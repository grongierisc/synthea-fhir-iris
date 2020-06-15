/// Action to occur as part of plan.
Class HS.FHIR.vR4.Model.Element.CarePlan.activity Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Results of the activity.
/// <p>
/// any FHIR4 code may be used; 
/// care-plan-activity-outcome shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property outcomeCodeableConcept As list Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "outcomeCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Appointment, 
/// Encounter, 
/// Procedure, 
/// etc.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property outcomeReference As list Of HS.FHIR.vR4.Model.Base.Reference(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "outcomeReference", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments about the activity status/progress.
Property progress As list Of HS.FHIR.vR4.Model.Datatype.Annotation(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "progress", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Activity details defined in specific resource.
/// <p>
/// Appointment | CommunicationRequest | DeviceRequest | MedicationRequest | NutritionOrder | Task | ServiceRequest | VisionPrescription | RequestGroup
Property reference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reference", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// In-line definition of activity.
Property detail As HS.FHIR.vR4.Model.Element.CarePlan.activity.detail(XMLNAME = "detail", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CarePlan.activity";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CarePlan.activity";

Storage Default
{
<Data name="activityDefaultData">
<Subscript>"activity"</Subscript>
<Value name="1">
<Value>reference</Value>
</Value>
<Value name="2">
<Value>detail</Value>
</Value>
</Data>
<Data name="outcomeCodeableConcept">
<Attribute>outcomeCodeableConcept</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.CarePlan.activity.outcomeCodeableConcept"</Subscript>
</Data>
<Data name="outcomeReference">
<Attribute>outcomeReference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.CarePlan.activity.outcomeReference"</Subscript>
</Data>
<Data name="progress">
<Attribute>progress</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.CarePlan.activity.progress"</Subscript>
</Data>
<DefaultData>activityDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
