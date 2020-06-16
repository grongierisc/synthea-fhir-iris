/// Describes validation requirements, 
/// source(s), 
/// status and dates for one or more elements.
Class HS.FHIR.Storage.vR4.Model.Resource.VerificationResult Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// A resource that was validated.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property target As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "target", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The fhirpath location(s) within the resource that was validated.
Property targetLocation As array Of %String(MAXLEN = 1000000, XMLNAME = "targetLocation", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// none | initial | periodic
/// <p>
/// verificationresult-need is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in verificationresult-need, 
/// you may use codes from any ValueSet.
Property need As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "need", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// attested | validated | in-process | req-revalid | val-fail | reval-fail
/// <p>
/// verificationresult-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend verificationresult-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// dateTime
/// <p>
/// When the validation status was updated.
Property statusDate As %String(MAXLEN = 1000000, XMLNAME = "statusDate", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// nothing | primary | multiple
/// <p>
/// verificationresult-validation-type is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in verificationresult-validation-type, 
/// you may use codes from any ValueSet.
Property validationType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "validationType", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The primary process by which the target is validated (edit check; 
/// value set; 
/// primary source; 
/// multiple sources; 
/// standalone; 
/// in context)
/// <p>
/// any FHIR4 code may be used; 
/// verificationresult-validation-process shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property validationProcess As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "validationProcess", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// Frequency of revalidation.
Property frequency As HS.FHIR.Storage.vR4.Model.Datatype.Timing(XMLNAME = "frequency", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// The date/time validation was last completed (including failed validations)
Property lastPerformed As %String(MAXLEN = 1000000, XMLNAME = "lastPerformed", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// The date when target is next validated, 
/// if appropriate.
Property nextScheduled As %String(MAXLEN = 1000000, XMLNAME = "nextScheduled", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// fatal | warn | rec-only | none
/// <p>
/// verificationresult-failure-action is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in verificationresult-failure-action, 
/// you may use codes from any ValueSet.
Property failureAction As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "failureAction", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Information about the primary source(s) involved in validation.
Property primarySource As array Of HS.FHIR.Storage.vR4.Model.Element.VerificationResult.primarySource(XMLNAME = "primarySource", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Information about the entity attesting to information.
Property attestation As HS.FHIR.Storage.vR4.Model.Element.VerificationResult.attestation(XMLNAME = "attestation", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Information about the entity validating information.
Property validator As array Of HS.FHIR.Storage.vR4.Model.Element.VerificationResult.validator(XMLNAME = "validator", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "VerificationResult";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "VerificationResult";

Storage Default
{
<Data name="VerificationResultDefaultData">
<Subscript>"VerificationResult"</Subscript>
<Value name="1">
<Value>need</Value>
</Value>
<Value name="2">
<Value>status</Value>
</Value>
<Value name="3">
<Value>statusDate</Value>
</Value>
<Value name="4">
<Value>validationType</Value>
</Value>
<Value name="5">
<Value>frequency</Value>
</Value>
<Value name="6">
<Value>lastPerformed</Value>
</Value>
<Value name="7">
<Value>nextScheduled</Value>
</Value>
<Value name="8">
<Value>failureAction</Value>
</Value>
<Value name="9">
<Value>attestation</Value>
</Value>
</Data>
<Data name="primarySource">
<Attribute>primarySource</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.VerificationResult.primarySource"</Subscript>
</Data>
<Data name="target">
<Attribute>target</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.VerificationResult.target"</Subscript>
</Data>
<Data name="targetLocation">
<Attribute>targetLocation</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.VerificationResult.targetLocation"</Subscript>
</Data>
<Data name="validationProcess">
<Attribute>validationProcess</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.VerificationResult.validationProcess"</Subscript>
</Data>
<Data name="validator">
<Attribute>validator</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.VerificationResult.validator"</Subscript>
</Data>
<DefaultData>VerificationResultDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
