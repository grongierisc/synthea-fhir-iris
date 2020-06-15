/// Information about the entity attesting to information.
Class HS.FHIR.vR4.Model.Element.VerificationResult.attestation Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// The individual or organization attesting to information.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property who As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "who", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// When the who is asserting on behalf of another (organization or individual)
/// <p>
/// Organization | Practitioner | PractitionerRole
Property onBehalfOf As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "onBehalfOf", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The method by which attested information was submitted/retrieved.
/// <p>
/// any FHIR4 code may be used; 
/// verificationresult-communication-method shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property communicationMethod As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "communicationMethod", XMLPROJECTION = "ELEMENT");

/// date
/// <p>
/// The date the information was attested to.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// A digital identity certificate associated with the attestation source.
Property sourceIdentityCertificate As %String(MAXLEN = 1000000, XMLNAME = "sourceIdentityCertificate", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// A digital identity certificate associated with the proxy entity submitting attested information on behalf of the attestation source.
Property proxyIdentityCertificate As %String(MAXLEN = 1000000, XMLNAME = "proxyIdentityCertificate", XMLPROJECTION = "ATTRIBUTE");

/// Signature
/// <p>
/// Proxy signature.
Property proxySignature As HS.FHIR.vR4.Model.Datatype.Signature(XMLNAME = "proxySignature", XMLPROJECTION = "ELEMENT");

/// Signature
/// <p>
/// Attester signature.
Property sourceSignature As HS.FHIR.vR4.Model.Datatype.Signature(XMLNAME = "sourceSignature", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "VerificationResult.attestation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "VerificationResult.attestation";

}
