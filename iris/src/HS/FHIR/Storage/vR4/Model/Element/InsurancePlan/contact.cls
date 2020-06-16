/// Contact for the product.
Class HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.contact Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The type of contact.
/// <p>
/// contactentity-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in contactentity-type, 
/// you may formally EXTEND contactentity-type to add codes to it.
Property purpose As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "purpose", XMLPROJECTION = "ELEMENT");

/// HumanName
/// <p>
/// A name associated with the contact.
Property name As HS.FHIR.Storage.vR4.Model.Datatype.HumanName(XMLNAME = "name", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// Contact details (telephone, 
/// email, 
/// etc.)  for a contact.
Property telecom As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactPoint(XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

/// Address
/// <p>
/// Visiting or postal addresses for the contact.
Property address As HS.FHIR.Storage.vR4.Model.Datatype.Address(XMLNAME = "address", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan.contact";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan.contact";

Storage Default
{
<Data name="contactDefaultData">
<Subscript>"contact"</Subscript>
<Value name="1">
<Value>purpose</Value>
</Value>
<Value name="2">
<Value>name</Value>
</Value>
<Value name="3">
<Value>address</Value>
</Value>
</Data>
<Data name="telecom">
<Attribute>telecom</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.contact.telecom"</Subscript>
</Data>
<DefaultData>contactDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
