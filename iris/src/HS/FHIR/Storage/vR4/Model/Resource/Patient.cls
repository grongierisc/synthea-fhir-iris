/// Information about an individual or animal receiving health care services.
Class HS.FHIR.Storage.vR4.Model.Resource.Patient Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// An identifier for this patient.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether this patient's record is in active use.
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");

/// HumanName
/// <p>
/// A name associated with the patient.
Property name As array Of HS.FHIR.Storage.vR4.Model.Datatype.HumanName(XMLNAME = "name", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// A contact detail for the individual.
Property telecom As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactPoint(XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// male | female | other | unknown
/// <p>
/// administrative-gender|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend administrative-gender|4.0.1 and you may NOT use codes from other ValueSets.
Property gender As %String(MAXLEN = 1000000, XMLNAME = "gender", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// The date of birth for the individual.
Property birthDate As %String(MAXLEN = 1000000, XMLNAME = "birthDate", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Indicates if the individual is deceased or not.
Property deceasedBoolean As %Boolean(XMLNAME = "deceasedBoolean", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Indicates if the individual is deceased or not.
Property deceasedDateTime As %String(MAXLEN = 1000000, XMLNAME = "deceasedDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Address
/// <p>
/// An address for the individual.
Property address As array Of HS.FHIR.Storage.vR4.Model.Datatype.Address(XMLNAME = "address", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Marital (civil) status of a patient.
/// <p>
/// marital-status is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in marital-status, 
/// you may formally EXTEND marital-status to add codes to it.
Property maritalStatus As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "maritalStatus", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether patient is part of a multiple birth.
Property multipleBirthBoolean As %Boolean(XMLNAME = "multipleBirthBoolean", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Whether patient is part of a multiple birth.
Property multipleBirthInteger As %Integer(XMLNAME = "multipleBirthInteger", XMLPROJECTION = "ATTRIBUTE");

/// Attachment
/// <p>
/// Image of the patient.
Property photo As array Of HS.FHIR.Storage.vR4.Model.Datatype.Attachment(XMLNAME = "photo", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A contact party (e.g. 
/// guardian, 
/// partner, 
/// friend) for the patient.
Property contact As array Of HS.FHIR.Storage.vR4.Model.Element.Patient.contact(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A language which may be used to communicate with the patient about his or her health.
Property communication As array Of HS.FHIR.Storage.vR4.Model.Element.Patient.communication(XMLNAME = "communication", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Patient's nominated primary care provider.
/// <p>
/// Organization | Practitioner | PractitionerRole
Property generalPractitioner As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "generalPractitioner", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization that is the custodian of the patient record.
/// <p>
/// Organization
Property managingOrganization As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "managingOrganization", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Link to another patient resource that concerns the same actual person.
Property link As array Of HS.FHIR.Storage.vR4.Model.Element.Patient.link(XMLNAME = "link", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Patient";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Patient";

Storage Default
{
<Data name="PatientDefaultData">
<Subscript>"Patient"</Subscript>
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>gender</Value>
</Value>
<Value name="3">
<Value>birthDate</Value>
</Value>
<Value name="4">
<Value>deceasedBoolean</Value>
</Value>
<Value name="5">
<Value>deceasedDateTime</Value>
</Value>
<Value name="6">
<Value>maritalStatus</Value>
</Value>
<Value name="7">
<Value>multipleBirthBoolean</Value>
</Value>
<Value name="8">
<Value>multipleBirthInteger</Value>
</Value>
<Value name="9">
<Value>managingOrganization</Value>
</Value>
</Data>
<Data name="address">
<Attribute>address</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Patient.address"</Subscript>
</Data>
<Data name="communication">
<Attribute>communication</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Patient.communication"</Subscript>
</Data>
<Data name="contact">
<Attribute>contact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Patient.contact"</Subscript>
</Data>
<Data name="generalPractitioner">
<Attribute>generalPractitioner</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Patient.generalPractitioner"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Patient.identifier"</Subscript>
</Data>
<Data name="link">
<Attribute>link</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Patient.link"</Subscript>
</Data>
<Data name="name">
<Attribute>name</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Patient.name"</Subscript>
</Data>
<Data name="photo">
<Attribute>photo</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Patient.photo"</Subscript>
</Data>
<Data name="telecom">
<Attribute>telecom</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Patient.telecom"</Subscript>
</Data>
<DefaultData>PatientDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
