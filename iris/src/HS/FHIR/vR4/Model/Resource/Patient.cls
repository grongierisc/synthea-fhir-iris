/// Information about an individual or animal receiving health care services.
Class HS.FHIR.vR4.Model.Resource.Patient Extends HS.FHIR.vR4.Model.Base.DomainResource
{

/// Identifier
/// <p>
/// An identifier for this patient.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether this patient's record is in active use.
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");

/// HumanName
/// <p>
/// A name associated with the patient.
Property name As List Of HS.FHIR.vR4.Model.Datatype.HumanName(XMLNAME = "name", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// A contact detail for the individual.
Property telecom As List Of HS.FHIR.vR4.Model.Datatype.ContactPoint(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

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
Property address As List Of HS.FHIR.vR4.Model.Datatype.Address(XMLNAME = "address", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Marital (civil) status of a patient.
/// <p>
/// marital-status is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in marital-status, 
/// you may formally EXTEND marital-status to add codes to it.
Property maritalStatus As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "maritalStatus", XMLPROJECTION = "ELEMENT");

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
Property photo As List Of HS.FHIR.vR4.Model.Datatype.Attachment(XMLNAME = "photo", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A contact party (e.g. 
/// guardian, 
/// partner, 
/// friend) for the patient.
Property contact As List Of HS.FHIR.vR4.Model.Element.Patient.contact(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A language which may be used to communicate with the patient about his or her health.
Property communication As List Of HS.FHIR.vR4.Model.Element.Patient.communication(XMLNAME = "communication", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Patient's nominated primary care provider.
/// <p>
/// Organization | Practitioner | PractitionerRole
Property generalPractitioner As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "generalPractitioner", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization that is the custodian of the patient record.
/// <p>
/// Organization
Property managingOrganization As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "managingOrganization", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Link to another patient resource that concerns the same actual person.
Property link As List Of HS.FHIR.vR4.Model.Element.Patient.link(XMLNAME = "link", XMLPROJECTION = "ELEMENT");

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
<Value>identifier</Value>
</Value>
<Value name="2">
<Value>active</Value>
</Value>
<Value name="3">
<Value>name</Value>
</Value>
<Value name="4">
<Value>telecom</Value>
</Value>
<Value name="5">
<Value>gender</Value>
</Value>
<Value name="6">
<Value>birthDate</Value>
</Value>
<Value name="7">
<Value>deceasedBoolean</Value>
</Value>
<Value name="8">
<Value>deceasedDateTime</Value>
</Value>
<Value name="9">
<Value>address</Value>
</Value>
<Value name="10">
<Value>maritalStatus</Value>
</Value>
<Value name="11">
<Value>multipleBirthBoolean</Value>
</Value>
<Value name="12">
<Value>multipleBirthInteger</Value>
</Value>
<Value name="13">
<Value>photo</Value>
</Value>
<Value name="14">
<Value>contact</Value>
</Value>
<Value name="15">
<Value>communication</Value>
</Value>
<Value name="16">
<Value>generalPractitioner</Value>
</Value>
<Value name="17">
<Value>managingOrganization</Value>
</Value>
<Value name="18">
<Value>link</Value>
</Value>
</Data>
<DefaultData>PatientDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
