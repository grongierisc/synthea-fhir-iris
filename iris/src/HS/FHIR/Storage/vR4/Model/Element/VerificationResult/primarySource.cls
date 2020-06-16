/// Information about the primary source(s) involved in validation.
Class HS.FHIR.Storage.vR4.Model.Element.VerificationResult.primarySource Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Reference to the primary source.
/// <p>
/// Organization | Practitioner | PractitionerRole
Property who As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "who", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Type of primary source (License Board; 
/// Primary Education; 
/// Continuing Education; 
/// Postal Service; 
/// Relationship owner; 
/// Registration Authority; 
/// legal source; 
/// issuing source; 
/// authoritative source)
/// <p>
/// any FHIR4 code may be used; 
/// verificationresult-primary-source-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Method for exchanging information with the primary source.
/// <p>
/// any FHIR4 code may be used; 
/// verificationresult-communication-method shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property communicationMethod As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "communicationMethod", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// successful | failed | unknown
/// <p>
/// verificationresult-validation-status is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in verificationresult-validation-status, 
/// you may use codes from any ValueSet.
Property validationStatus As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "validationStatus", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the target was validated against the primary source.
Property validationDate As %String(MAXLEN = 1000000, XMLNAME = "validationDate", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// yes | no | undetermined
/// <p>
/// verificationresult-can-push-updates is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in verificationresult-can-push-updates, 
/// you may use codes from any ValueSet.
Property canPushUpdates As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "canPushUpdates", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// specific | any | source
/// <p>
/// verificationresult-push-type-available is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in verificationresult-push-type-available, 
/// you may use codes from any ValueSet.
Property pushTypeAvailable As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "pushTypeAvailable", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "VerificationResult.primarySource";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "VerificationResult.primarySource";

Storage Default
{
<Data name="communicationMethod">
<Attribute>communicationMethod</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.VerificationResult.primarySource.communicationMethod"</Subscript>
</Data>
<Data name="primarySourceDefaultData">
<Subscript>"primarySource"</Subscript>
<Value name="1">
<Value>who</Value>
</Value>
<Value name="2">
<Value>validationStatus</Value>
</Value>
<Value name="3">
<Value>validationDate</Value>
</Value>
<Value name="4">
<Value>canPushUpdates</Value>
</Value>
</Data>
<Data name="pushTypeAvailable">
<Attribute>pushTypeAvailable</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.VerificationResult.primarySource.pushTypeAvailable"</Subscript>
</Data>
<Data name="type">
<Attribute>type</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.VerificationResult.primarySource.type"</Subscript>
</Data>
<DefaultData>primarySourceDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
