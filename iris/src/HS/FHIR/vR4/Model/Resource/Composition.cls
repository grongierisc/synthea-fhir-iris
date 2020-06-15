/// A set of resources composed into a single coherent clinical statement with clinical attestation.
Class HS.FHIR.vR4.Model.Resource.Composition Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Version-independent identifier for the Composition.
Property identifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// preliminary | final | amended | entered-in-error
/// <p>
/// composition-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend composition-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Kind of composition (LOINC if possible)
/// <p>
/// doc-typecodes is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in doc-typecodes, 
/// you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Categorization of Composition.
/// <p>
/// any FHIR4 code may be used; 
/// document-classcodes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who and/or what the composition is about.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Context of the Composition.
/// <p>
/// Encounter
Property encounter As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Composition editing time.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Who and/or what authored the composition.
/// <p>
/// Practitioner | PractitionerRole | Device | Patient | RelatedPerson | Organization
Property author As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Human Readable name/title.
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// As defined by affinity domain.
/// <p>
/// v3-ConfidentialityClassification|2014-03-26 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend v3-ConfidentialityClassification|2014-03-26 and you may NOT use codes from other ValueSets.
Property confidentiality As %String(MAXLEN = 1000000, XMLNAME = "confidentiality", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Attests to accuracy of composition.
Property attester As List Of HS.FHIR.vR4.Model.Element.Composition.attester(XMLNAME = "attester", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization which maintains the composition.
/// <p>
/// Organization
Property custodian As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "custodian", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Relationships to other compositions/documents.
Property relatesTo As List Of HS.FHIR.vR4.Model.Element.Composition.relatesTo(XMLNAME = "relatesTo", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The clinical service(s) being documented.
Property event As List Of HS.FHIR.vR4.Model.Element.Composition.event(XMLNAME = "event", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Composition is broken into sections.
Property section As List Of HS.FHIR.vR4.Model.Element.Composition.section(XMLNAME = "section", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Composition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Composition";

}
