/// A photo, 
/// video, 
/// or audio recording acquired or used in healthcare. 
/// The actual content may be inline or provided by direct reference.
Class HS.FHIR.Storage.vR4.Model.Resource.Media Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Identifier(s) for the image.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Procedure that caused this media to be created.
/// <p>
/// ServiceRequest | CarePlan
Property basedOn As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Part of referenced event.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property partOf As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown
/// <p>
/// event-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend event-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Classification of media as image, 
/// video, 
/// or audio.
/// <p>
/// media-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in media-type, 
/// you may formally EXTEND media-type to add codes to it.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The type of acquisition equipment/process.
/// <p>
/// any FHIR4 code may be used; 
/// media-modality shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property modality As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "modality", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Imaging view, 
/// e.g. 
/// Lateral or Antero-posterior.
/// <p>
/// any FHIR4 code may be used; 
/// media-view shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property view As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "view", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who/What this Media is a record of.
/// <p>
/// Patient | Practitioner | PractitionerRole | Group | Device | Specimen | Location
Property subject As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Encounter associated with media.
/// <p>
/// Encounter
Property encounter As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When Media was collected.
Property createdDateTime As %String(MAXLEN = 1000000, XMLNAME = "createdDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When Media was collected.
Property createdPeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "createdPeriod", XMLPROJECTION = "ELEMENT");

/// instant
/// <p>
/// Date/Time this version was made available.
Property issued As %String(MAXLEN = 1000000, XMLNAME = "issued", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// The person who generated the image.
/// <p>
/// Practitioner | PractitionerRole | Organization | CareTeam | Patient | Device | RelatedPerson
Property operator As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "operator", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Why was event performed?
/// <p>
/// any FHIR4 code may be used; 
/// procedure-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Observed body part.
/// <p>
/// any FHIR4 code may be used; 
/// body-site shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property bodySite As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Name of the device/manufacturer.
Property deviceName As %String(MAXLEN = 1000000, XMLNAME = "deviceName", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Observing Device.
/// <p>
/// Device | DeviceMetric | Device
Property device As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "device", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Height of the image in pixels (photo/video)
Property height As %Integer(XMLNAME = "height", XMLPROJECTION = "ATTRIBUTE");

/// positiveInt
/// <p>
/// Width of the image in pixels (photo/video)
Property width As %Integer(XMLNAME = "width", XMLPROJECTION = "ATTRIBUTE");

/// positiveInt
/// <p>
/// Number of frames if > 1 (photo)
Property frames As %Integer(XMLNAME = "frames", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Length in seconds (audio / video)
Property duration As %Decimal(XMLNAME = "duration", XMLPROJECTION = "ATTRIBUTE");

/// Attachment
/// <p>
/// Actual Media - reference or data.
Property content As HS.FHIR.Storage.vR4.Model.Datatype.Attachment(XMLNAME = "content", XMLPROJECTION = "ELEMENT") [ Required ];

/// Annotation
/// <p>
/// Comments made about the media.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Media";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Media";

Storage Default
{
<Data name="MediaDefaultData">
<Subscript>"Media"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
<Value name="3">
<Value>modality</Value>
</Value>
<Value name="4">
<Value>view</Value>
</Value>
<Value name="5">
<Value>subject</Value>
</Value>
<Value name="6">
<Value>encounter</Value>
</Value>
<Value name="7">
<Value>createdDateTime</Value>
</Value>
<Value name="8">
<Value>createdPeriod</Value>
</Value>
<Value name="9">
<Value>issued</Value>
</Value>
<Value name="10">
<Value>operator</Value>
</Value>
<Value name="11">
<Value>bodySite</Value>
</Value>
<Value name="12">
<Value>deviceName</Value>
</Value>
<Value name="13">
<Value>device</Value>
</Value>
<Value name="14">
<Value>height</Value>
</Value>
<Value name="15">
<Value>width</Value>
</Value>
<Value name="16">
<Value>frames</Value>
</Value>
<Value name="17">
<Value>duration</Value>
</Value>
<Value name="18">
<Value>content</Value>
</Value>
</Data>
<Data name="basedOn">
<Attribute>basedOn</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Media.basedOn"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Media.identifier"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Media.note"</Subscript>
</Data>
<Data name="partOf">
<Attribute>partOf</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Media.partOf"</Subscript>
</Data>
<Data name="reasonCode">
<Attribute>reasonCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Media.reasonCode"</Subscript>
</Data>
<DefaultData>MediaDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
