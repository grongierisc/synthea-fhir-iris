/// A reference to a document.
Class HS.FHIR.Storage.vR4.Model.Resource.DocumentReference Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Master Version Specific Identifier.
Property masterIdentifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "masterIdentifier", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Other identifiers for the document.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// current | superseded | entered-in-error
/// <p>
/// document-reference-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend document-reference-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// preliminary | final | amended | entered-in-error
/// <p>
/// composition-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend composition-status|4.0.1 and you may NOT use codes from other ValueSets.
Property docStatus As %String(MAXLEN = 1000000, XMLNAME = "docStatus", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Kind of document (LOINC if possible)
/// <p>
/// c80-doc-typecodes is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in c80-doc-typecodes, 
/// you may use codes from any ValueSet.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Categorization of document.
/// <p>
/// any FHIR4 code may be used; 
/// document-classcodes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who/what is the subject of the document.
/// <p>
/// Patient | Practitioner | Group | Device
Property subject As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// instant
/// <p>
/// When this document reference was created.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who and/or what authored the document.
/// <p>
/// Practitioner | PractitionerRole | Organization | Device | Patient | RelatedPerson
Property author As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who/what authenticated the document.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property authenticator As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "authenticator", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization which maintains the document.
/// <p>
/// Organization
Property custodian As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "custodian", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Relationships to other documents.
Property relatesTo As array Of HS.FHIR.Storage.vR4.Model.Element.DocumentReference.relatesTo(XMLNAME = "relatesTo", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Human-readable description.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Document security-tags.
/// <p>
/// security-labels is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in security-labels, 
/// you may formally EXTEND security-labels to add codes to it.
Property securityLabel As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "securityLabel", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Document referenced.
Property content As array Of HS.FHIR.Storage.vR4.Model.Element.DocumentReference.content(XMLNAME = "content", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Clinical context of document.
Property context As HS.FHIR.Storage.vR4.Model.Element.DocumentReference.context(XMLNAME = "context", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DocumentReference";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DocumentReference";

Storage Default
{
<Data name="DocumentReferenceDefaultData">
<Subscript>"DocumentReference"</Subscript>
<Value name="1">
<Value>masterIdentifier</Value>
</Value>
<Value name="2">
<Value>status</Value>
</Value>
<Value name="3">
<Value>docStatus</Value>
</Value>
<Value name="4">
<Value>type</Value>
</Value>
<Value name="5">
<Value>subject</Value>
</Value>
<Value name="6">
<Value>date</Value>
</Value>
<Value name="7">
<Value>authenticator</Value>
</Value>
<Value name="8">
<Value>custodian</Value>
</Value>
<Value name="9">
<Value>description</Value>
</Value>
<Value name="10">
<Value>context</Value>
</Value>
</Data>
<Data name="author">
<Attribute>author</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.DocumentReference.author"</Subscript>
</Data>
<Data name="category">
<Attribute>category</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.DocumentReference.category"</Subscript>
</Data>
<Data name="content">
<Attribute>content</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.DocumentReference.content"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.DocumentReference.identifier"</Subscript>
</Data>
<Data name="relatesTo">
<Attribute>relatesTo</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.DocumentReference.relatesTo"</Subscript>
</Data>
<Data name="securityLabel">
<Attribute>securityLabel</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.DocumentReference.securityLabel"</Subscript>
</Data>
<DefaultData>DocumentReferenceDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
