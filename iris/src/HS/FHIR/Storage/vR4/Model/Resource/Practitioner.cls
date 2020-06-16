/// A person with a  formal responsibility in the provisioning of healthcare or related services.
Class HS.FHIR.Storage.vR4.Model.Resource.Practitioner Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// An identifier for the person as this agent.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether this practitioner's record is in active use.
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");

/// HumanName
/// <p>
/// The name(s) associated with the practitioner.
Property name As array Of HS.FHIR.Storage.vR4.Model.Datatype.HumanName(XMLNAME = "name", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// A contact detail for the practitioner (that apply to all roles)
Property telecom As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactPoint(XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

/// Address
/// <p>
/// Address(es) of the practitioner that are not role specific (typically home address)
Property address As array Of HS.FHIR.Storage.vR4.Model.Datatype.Address(XMLNAME = "address", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// male | female | other | unknown
/// <p>
/// administrative-gender|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend administrative-gender|4.0.1 and you may NOT use codes from other ValueSets.
Property gender As %String(MAXLEN = 1000000, XMLNAME = "gender", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// The date  on which the practitioner was born.
Property birthDate As %String(MAXLEN = 1000000, XMLNAME = "birthDate", XMLPROJECTION = "ATTRIBUTE");

/// Attachment
/// <p>
/// Image of the person.
Property photo As array Of HS.FHIR.Storage.vR4.Model.Datatype.Attachment(XMLNAME = "photo", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Certification, 
/// licenses, 
/// or training pertaining to the provision of care.
Property qualification As array Of HS.FHIR.Storage.vR4.Model.Element.Practitioner.qualification(XMLNAME = "qualification", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// A language the practitioner can use in patient communication.
/// <p>
/// languages is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in languages, 
/// you may use codes from any ValueSet.
Property communication As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "communication", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Practitioner";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Practitioner";

Storage Default
{
<Data name="PractitionerDefaultData">
<Subscript>"Practitioner"</Subscript>
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>gender</Value>
</Value>
<Value name="3">
<Value>birthDate</Value>
</Value>
</Data>
<Data name="address">
<Attribute>address</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Practitioner.address"</Subscript>
</Data>
<Data name="communication">
<Attribute>communication</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Practitioner.communication"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Practitioner.identifier"</Subscript>
</Data>
<Data name="name">
<Attribute>name</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Practitioner.name"</Subscript>
</Data>
<Data name="photo">
<Attribute>photo</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Practitioner.photo"</Subscript>
</Data>
<Data name="qualification">
<Attribute>qualification</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Practitioner.qualification"</Subscript>
</Data>
<Data name="telecom">
<Attribute>telecom</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Practitioner.telecom"</Subscript>
</Data>
<DefaultData>PractitionerDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
