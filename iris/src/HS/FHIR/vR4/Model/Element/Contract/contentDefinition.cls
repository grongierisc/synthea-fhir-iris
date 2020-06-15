/// Contract precursor content.
Class HS.FHIR.vR4.Model.Element.Contract.contentDefinition Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Content structure and use.
/// <p>
/// any FHIR4 code may be used; 
/// contract-definition-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Detailed Content Type Definition.
/// <p>
/// any FHIR4 code may be used; 
/// contract-definition-subtype shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property subType As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "subType", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Publisher Entity.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property publisher As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "publisher", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When published.
Property publicationDate As %String(MAXLEN = 1000000, XMLNAME = "publicationDate", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// amended | appended | cancelled | disputed | entered-in-error | executable | executed | negotiable | offered | policy | rejected | renewed | revoked | resolved | terminated
/// <p>
/// contract-publicationstatus|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend contract-publicationstatus|4.0.1 and you may NOT use codes from other ValueSets.
Property publicationStatus As %String(MAXLEN = 1000000, XMLNAME = "publicationStatus", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// markdown
/// <p>
/// Publication Ownership.
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.contentDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.contentDefinition";

}
