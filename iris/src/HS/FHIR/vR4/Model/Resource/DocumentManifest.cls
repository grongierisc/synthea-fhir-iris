/// A list that defines a set of documents.
Class HS.FHIR.vR4.Model.Resource.DocumentManifest Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Unique Identifier for the set of documents.
Property masterIdentifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "masterIdentifier", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Other identifiers for the manifest.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// current | superseded | entered-in-error
/// <p>
/// document-reference-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend document-reference-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Kind of document set.
/// <p>
/// any FHIR4 code may be used; 
/// v3-ActCode shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The subject of the set of documents.
/// <p>
/// Patient | Practitioner | Group | Device
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When this document manifest created.
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who and/or what authored the DocumentManifest.
/// <p>
/// Practitioner | PractitionerRole | Organization | Device | Patient | RelatedPerson
Property author As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Intended to get notified about this set of documents.
/// <p>
/// Patient | Practitioner | PractitionerRole | RelatedPerson | Organization
Property recipient As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "recipient", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// The source system/application/software.
Property source As %String(MAXLEN = 1000000, XMLNAME = "source", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Human-readable description (title)
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Items in manifest.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property content As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "content", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Related things.
Property related As List Of HS.FHIR.vR4.Model.Element.DocumentManifest.related(XMLNAME = "related", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DocumentManifest";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DocumentManifest";

}
