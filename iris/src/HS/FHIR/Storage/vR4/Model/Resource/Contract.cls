/// Legal Agreement.
Class HS.FHIR.Storage.vR4.Model.Resource.Contract Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Contract number.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Basal definition.
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Business edition.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// amended | appended | cancelled | disputed | entered-in-error | executable | executed | negotiable | offered | policy | rejected | renewed | revoked | resolved | terminated
/// <p>
/// contract-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend contract-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Negotiation status.
/// <p>
/// contract-legalstate is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in contract-legalstate, 
/// you may formally EXTEND contract-legalstate to add codes to it.
Property legalState As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "legalState", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Source Contract Definition.
/// <p>
/// Contract
Property instantiatesCanonical As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "instantiatesCanonical", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// External Contract Definition.
Property instantiatesUri As %String(MAXLEN = 1000000, XMLNAME = "instantiatesUri", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Content derived from the basal information.
/// <p>
/// any FHIR4 code may be used; 
/// contract-content-derivative shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property contentDerivative As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "contentDerivative", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When this Contract was issued.
Property issued As %String(MAXLEN = 1000000, XMLNAME = "issued", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Effective time.
Property applies As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "applies", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Contract cessation cause.
/// <p>
/// any FHIR4 code may be used; 
/// contract-expiration-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property expirationType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "expirationType", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Contract Target Entity.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property subject As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Authority under which this Contract has standing.
/// <p>
/// Organization
Property authority As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "authority", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// A sphere of control governed by an authoritative jurisdiction, 
/// organization, 
/// or person.
/// <p>
/// Location
Property domain As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "domain", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Specific Location.
/// <p>
/// Location
Property site As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "site", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Computer friendly designation.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Human Friendly name.
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Subordinate Friendly name.
Property subtitle As %String(MAXLEN = 1000000, XMLNAME = "subtitle", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Acronym or short name.
Property alias As array Of %String(MAXLEN = 1000000, XMLNAME = "alias", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Source of Contract.
/// <p>
/// Patient | Practitioner | PractitionerRole | Organization
Property author As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Range of Legal Concerns.
/// <p>
/// any FHIR4 code may be used; 
/// contract-scope shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property scope As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "scope", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Focus of contract interest.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property topicCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "topicCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Focus of contract interest.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property topicReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "topicReference", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Legal instrument category.
/// <p>
/// any FHIR4 code may be used; 
/// contract-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Subtype within the context of type.
/// <p>
/// any FHIR4 code may be used; 
/// contract-subtype shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property subType As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "subType", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Contract precursor content.
Property contentDefinition As HS.FHIR.Storage.vR4.Model.Element.Contract.contentDefinition(XMLNAME = "contentDefinition", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Contract Term List.
Property term As array Of HS.FHIR.Storage.vR4.Model.Element.Contract.term(XMLNAME = "term", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Extra Information.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property supportingInfo As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "supportingInfo", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Key event in Contract History.
/// <p>
/// Provenance
Property relevantHistory As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "relevantHistory", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Contract Signatory.
Property signer As array Of HS.FHIR.Storage.vR4.Model.Element.Contract.signer(XMLNAME = "signer", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Contract Friendly Language.
Property friendly As array Of HS.FHIR.Storage.vR4.Model.Element.Contract.friendly(XMLNAME = "friendly", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Contract Legal Language.
Property legal As array Of HS.FHIR.Storage.vR4.Model.Element.Contract.legal(XMLNAME = "legal", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Computable Contract Language.
Property rule As array Of HS.FHIR.Storage.vR4.Model.Element.Contract.rule(XMLNAME = "rule", XMLPROJECTION = "ELEMENT");

/// Attachment
/// <p>
/// Binding Contract.
Property legallyBindingAttachment As HS.FHIR.Storage.vR4.Model.Datatype.Attachment(XMLNAME = "legallyBindingAttachment", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Binding Contract.
/// <p>
/// Composition | DocumentReference | QuestionnaireResponse | Contract
Property legallyBindingReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "legallyBindingReference", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract";

Storage Default
{
<Data name="ContractDefaultData">
<Subscript>"Contract"</Subscript>
<Value name="1">
<Value>url</Value>
</Value>
<Value name="2">
<Value>version</Value>
</Value>
<Value name="3">
<Value>status</Value>
</Value>
<Value name="4">
<Value>legalState</Value>
</Value>
<Value name="5">
<Value>instantiatesCanonical</Value>
</Value>
<Value name="6">
<Value>instantiatesUri</Value>
</Value>
<Value name="7">
<Value>contentDerivative</Value>
</Value>
<Value name="8">
<Value>issued</Value>
</Value>
<Value name="9">
<Value>applies</Value>
</Value>
<Value name="10">
<Value>expirationType</Value>
</Value>
<Value name="11">
<Value>name</Value>
</Value>
<Value name="12">
<Value>title</Value>
</Value>
<Value name="13">
<Value>subtitle</Value>
</Value>
<Value name="14">
<Value>author</Value>
</Value>
<Value name="15">
<Value>scope</Value>
</Value>
<Value name="16">
<Value>topicCodeableConcept</Value>
</Value>
<Value name="17">
<Value>topicReference</Value>
</Value>
<Value name="18">
<Value>type</Value>
</Value>
<Value name="19">
<Value>contentDefinition</Value>
</Value>
<Value name="20">
<Value>legallyBindingAttachment</Value>
</Value>
<Value name="21">
<Value>legallyBindingReference</Value>
</Value>
</Data>
<Data name="alias">
<Attribute>alias</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Contract.alias"</Subscript>
</Data>
<Data name="authority">
<Attribute>authority</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Contract.authority"</Subscript>
</Data>
<Data name="domain">
<Attribute>domain</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Contract.domain"</Subscript>
</Data>
<Data name="friendly">
<Attribute>friendly</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Contract.friendly"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Contract.identifier"</Subscript>
</Data>
<Data name="legal">
<Attribute>legal</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Contract.legal"</Subscript>
</Data>
<Data name="relevantHistory">
<Attribute>relevantHistory</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Contract.relevantHistory"</Subscript>
</Data>
<Data name="rule">
<Attribute>rule</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Contract.rule"</Subscript>
</Data>
<Data name="signer">
<Attribute>signer</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Contract.signer"</Subscript>
</Data>
<Data name="site">
<Attribute>site</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Contract.site"</Subscript>
</Data>
<Data name="subType">
<Attribute>subType</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Contract.subType"</Subscript>
</Data>
<Data name="subject">
<Attribute>subject</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Contract.subject"</Subscript>
</Data>
<Data name="supportingInfo">
<Attribute>supportingInfo</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Contract.supportingInfo"</Subscript>
</Data>
<Data name="term">
<Attribute>term</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Contract.term"</Subscript>
</Data>
<DefaultData>ContractDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
