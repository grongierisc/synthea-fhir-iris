/// Prescription for vision correction products for a patient.
Class HS.FHIR.Storage.vR4.Model.Resource.VisionPrescription Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier for vision prescription.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | cancelled | draft | entered-in-error
/// <p>
/// fm-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend fm-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// dateTime
/// <p>
/// Response creation date.
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Who prescription is for.
/// <p>
/// Patient
Property patient As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Created during encounter / admission / stay.
/// <p>
/// Encounter
Property encounter As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When prescription was authorized.
Property dateWritten As %String(MAXLEN = 1000000, XMLNAME = "dateWritten", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Who authorized the vision prescription.
/// <p>
/// Practitioner | PractitionerRole
Property prescriber As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "prescriber", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Vision lens authorization.
Property lensSpecification As array Of HS.FHIR.Storage.vR4.Model.Element.VisionPrescription.lensSpecification(XMLNAME = "lensSpecification", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "VisionPrescription";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "VisionPrescription";

Storage Default
{
<Data name="VisionPrescriptionDefaultData">
<Subscript>"VisionPrescription"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>created</Value>
</Value>
<Value name="3">
<Value>patient</Value>
</Value>
<Value name="4">
<Value>encounter</Value>
</Value>
<Value name="5">
<Value>dateWritten</Value>
</Value>
<Value name="6">
<Value>prescriber</Value>
</Value>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.VisionPrescription.identifier"</Subscript>
</Data>
<Data name="lensSpecification">
<Attribute>lensSpecification</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.VisionPrescription.lensSpecification"</Subscript>
</Data>
<DefaultData>VisionPrescriptionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
