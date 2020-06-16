/// Information about the entity validating information.
Class HS.FHIR.Storage.vR4.Model.Element.VerificationResult.validator Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Reference to the organization validating information.
/// <p>
/// Organization
Property organization As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "organization", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// A digital identity certificate associated with the validator.
Property identityCertificate As %String(MAXLEN = 1000000, XMLNAME = "identityCertificate", XMLPROJECTION = "ATTRIBUTE");

/// Signature
/// <p>
/// Validator signature.
Property attestationSignature As HS.FHIR.Storage.vR4.Model.Datatype.Signature(XMLNAME = "attestationSignature", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "VerificationResult.validator";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "VerificationResult.validator";

Storage Default
{
<Data name="validatorDefaultData">
<Subscript>"validator"</Subscript>
<Value name="1">
<Value>organization</Value>
</Value>
<Value name="2">
<Value>identityCertificate</Value>
</Value>
<Value name="3">
<Value>attestationSignature</Value>
</Value>
</Data>
<DefaultData>validatorDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
