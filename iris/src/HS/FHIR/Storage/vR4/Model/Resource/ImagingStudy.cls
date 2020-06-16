/// A set of images produced in single study (one or more series of references images)
Class HS.FHIR.Storage.vR4.Model.Resource.ImagingStudy Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Identifiers for the whole study.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// registered | available | cancelled | entered-in-error | unknown
/// <p>
/// imagingstudy-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend imagingstudy-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Coding
/// <p>
/// All series modality if actual acquisition modalities.
/// <p>
/// sect_CID_29.html is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in sect_CID_29.html, 
/// you may formally EXTEND sect_CID_29.html to add codes to it.
Property modality As array Of HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "modality", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who or what is the subject of the study.
/// <p>
/// Patient | Device | Group
Property subject As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Encounter with which this imaging study is associated.
/// <p>
/// Encounter
Property encounter As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the study was started.
Property started As %String(MAXLEN = 1000000, XMLNAME = "started", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Request fulfilled.
/// <p>
/// CarePlan | ServiceRequest | Appointment | AppointmentResponse | Task
Property basedOn As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Referring physician.
/// <p>
/// Practitioner | PractitionerRole
Property referrer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "referrer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who interpreted images.
/// <p>
/// Practitioner | PractitionerRole
Property interpreter As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "interpreter", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Study access endpoint.
/// <p>
/// Endpoint
Property endpoint As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// Number of Study Related Series.
Property numberOfSeries As %Integer(XMLNAME = "numberOfSeries", XMLPROJECTION = "ATTRIBUTE");

/// unsignedInt
/// <p>
/// Number of Study Related Instances.
Property numberOfInstances As %Integer(XMLNAME = "numberOfInstances", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// The performed Procedure reference.
/// <p>
/// Procedure
Property procedureReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "procedureReference", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The performed procedure code.
/// <p>
/// RadLex_Playbook.aspx is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in RadLex_Playbook.aspx, 
/// you may formally EXTEND RadLex_Playbook.aspx to add codes to it.
Property procedureCode As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "procedureCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where ImagingStudy occurred.
/// <p>
/// Location
Property location As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Why the study was requested.
/// <p>
/// any FHIR4 code may be used; 
/// procedure-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why was study performed.
/// <p>
/// Condition | Observation | Media | DiagnosticReport | DocumentReference
Property reasonReference As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// User-defined comments.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Institution-generated description.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Each study has one or more series of instances.
Property series As array Of HS.FHIR.Storage.vR4.Model.Element.ImagingStudy.series(XMLNAME = "series", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImagingStudy";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImagingStudy";

Storage Default
{
<Data name="ImagingStudyDefaultData">
<Subscript>"ImagingStudy"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>subject</Value>
</Value>
<Value name="3">
<Value>encounter</Value>
</Value>
<Value name="4">
<Value>started</Value>
</Value>
<Value name="5">
<Value>referrer</Value>
</Value>
<Value name="6">
<Value>numberOfSeries</Value>
</Value>
<Value name="7">
<Value>numberOfInstances</Value>
</Value>
<Value name="8">
<Value>procedureReference</Value>
</Value>
<Value name="9">
<Value>location</Value>
</Value>
<Value name="10">
<Value>description</Value>
</Value>
</Data>
<Data name="basedOn">
<Attribute>basedOn</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ImagingStudy.basedOn"</Subscript>
</Data>
<Data name="endpoint">
<Attribute>endpoint</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ImagingStudy.endpoint"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ImagingStudy.identifier"</Subscript>
</Data>
<Data name="interpreter">
<Attribute>interpreter</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ImagingStudy.interpreter"</Subscript>
</Data>
<Data name="modality">
<Attribute>modality</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ImagingStudy.modality"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ImagingStudy.note"</Subscript>
</Data>
<Data name="procedureCode">
<Attribute>procedureCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ImagingStudy.procedureCode"</Subscript>
</Data>
<Data name="reasonCode">
<Attribute>reasonCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ImagingStudy.reasonCode"</Subscript>
</Data>
<Data name="reasonReference">
<Attribute>reasonReference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ImagingStudy.reasonReference"</Subscript>
</Data>
<Data name="series">
<Attribute>series</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ImagingStudy.series"</Subscript>
</Data>
<DefaultData>ImagingStudyDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
