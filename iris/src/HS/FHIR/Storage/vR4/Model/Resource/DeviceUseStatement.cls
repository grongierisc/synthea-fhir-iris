/// Record of use of a device.
Class HS.FHIR.Storage.vR4.Model.Resource.DeviceUseStatement Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External identifier for this record.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Fulfills plan, 
/// proposal or order.
/// <p>
/// ServiceRequest
Property basedOn As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | completed | entered-in-error +
/// <p>
/// device-statement-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend device-statement-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Patient using device.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Supporting information.
/// <p>
/// ServiceRequest | Procedure | Claim | Observation | QuestionnaireResponse | DocumentReference
Property derivedFrom As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "derivedFrom", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// How often  the device was used.
Property timingDateTime As %String(MAXLEN = 1000000, XMLNAME = "timingDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// How often  the device was used.
Property timingPeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "timingPeriod", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// How often  the device was used.
Property timingTiming As HS.FHIR.Storage.vR4.Model.Datatype.Timing(XMLNAME = "timingTiming", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When statement was recorded.
Property recordedOn As %String(MAXLEN = 1000000, XMLNAME = "recordedOn", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who made the statement.
/// <p>
/// Patient | Practitioner | PractitionerRole | RelatedPerson
Property source As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Reference to device used.
/// <p>
/// Device
Property device As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "device", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Why device was used.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property reasonCode As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why was DeviceUseStatement performed?
/// <p>
/// Condition | Observation | DiagnosticReport | DocumentReference | Media
Property reasonReference As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Target body site.
/// <p>
/// any FHIR4 code may be used; 
/// body-site shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property bodySite As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Addition details (comments, 
/// instructions)
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceUseStatement";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceUseStatement";

Storage Default
{
<Data name="DeviceUseStatementDefaultData">
<Subscript>"DeviceUseStatement"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>subject</Value>
</Value>
<Value name="3">
<Value>timingDateTime</Value>
</Value>
<Value name="4">
<Value>timingPeriod</Value>
</Value>
<Value name="5">
<Value>timingTiming</Value>
</Value>
<Value name="6">
<Value>recordedOn</Value>
</Value>
<Value name="7">
<Value>source</Value>
</Value>
<Value name="8">
<Value>device</Value>
</Value>
<Value name="9">
<Value>bodySite</Value>
</Value>
</Data>
<Data name="basedOn">
<Attribute>basedOn</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.DeviceUseStatement.basedOn"</Subscript>
</Data>
<Data name="derivedFrom">
<Attribute>derivedFrom</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.DeviceUseStatement.derivedFrom"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.DeviceUseStatement.identifier"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.DeviceUseStatement.note"</Subscript>
</Data>
<Data name="reasonCode">
<Attribute>reasonCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.DeviceUseStatement.reasonCode"</Subscript>
</Data>
<Data name="reasonReference">
<Attribute>reasonReference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.DeviceUseStatement.reasonReference"</Subscript>
</Data>
<DefaultData>DeviceUseStatementDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
