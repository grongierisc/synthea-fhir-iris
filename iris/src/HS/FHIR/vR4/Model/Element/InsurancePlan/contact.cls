/// Contact for the product.
Class HS.FHIR.vR4.Model.Element.InsurancePlan.contact Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The type of contact.
/// <p>
/// contactentity-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in contactentity-type, 
/// you may formally EXTEND contactentity-type to add codes to it.
Property purpose As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "purpose", XMLPROJECTION = "ELEMENT");

/// HumanName
/// <p>
/// A name associated with the contact.
Property name As HS.FHIR.vR4.Model.Datatype.HumanName(XMLNAME = "name", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// Contact details (telephone, 
/// email, 
/// etc.)  for a contact.
Property telecom As List Of HS.FHIR.vR4.Model.Datatype.ContactPoint(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

/// Address
/// <p>
/// Visiting or postal addresses for the contact.
Property address As HS.FHIR.vR4.Model.Datatype.Address(XMLNAME = "address", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan.contact";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan.contact";

}
