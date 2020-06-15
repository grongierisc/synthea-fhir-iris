/// A contact party (e.g. 
/// guardian, 
/// partner, 
/// friend) for the patient.
Class HS.FHIR.vR4.Model.Element.Patient.contact Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The kind of relationship.
/// <p>
/// patient-contactrelationship is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in patient-contactrelationship, 
/// you may formally EXTEND patient-contactrelationship to add codes to it.
Property relationship As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "relationship", XMLPROJECTION = "ELEMENT");

/// HumanName
/// <p>
/// A name associated with the contact person.
Property name As HS.FHIR.vR4.Model.Datatype.HumanName(XMLNAME = "name", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// A contact detail for the person.
Property telecom As List Of HS.FHIR.vR4.Model.Datatype.ContactPoint(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

/// Address
/// <p>
/// Address for the contact person.
Property address As HS.FHIR.vR4.Model.Datatype.Address(XMLNAME = "address", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// male | female | other | unknown
/// <p>
/// administrative-gender|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend administrative-gender|4.0.1 and you may NOT use codes from other ValueSets.
Property gender As %String(MAXLEN = 1000000, XMLNAME = "gender", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Organization that is associated with the contact.
/// <p>
/// Organization
Property organization As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "organization", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// The period during which this contact person or organization is valid to be contacted relating to this patient.
Property period As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Patient.contact";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Patient.contact";

}
