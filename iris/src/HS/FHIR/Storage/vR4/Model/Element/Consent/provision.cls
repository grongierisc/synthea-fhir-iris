/// Constraints to the base Consent.policyRule.
Class HS.FHIR.Storage.vR4.Model.Element.Consent.provision Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// deny | permit
/// <p>
/// consent-provision-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend consent-provision-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Timeframe for this rule.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Who|what controlled by this rule (or group, 
/// by role)
Property actor As array Of HS.FHIR.Storage.vR4.Model.Element.Consent.provision.actor(XMLNAME = "actor", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Actions controlled by this rule.
/// <p>
/// any FHIR4 code may be used; 
/// consent-action shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property action As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "action", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Security Labels that define affected resources.
/// <p>
/// security-labels is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in security-labels, 
/// you may formally EXTEND security-labels to add codes to it.
Property securityLabel As array Of HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "securityLabel", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Context of activities covered by this rule.
/// <p>
/// v3-PurposeOfUse is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in v3-PurposeOfUse, 
/// you may formally EXTEND v3-PurposeOfUse to add codes to it.
Property purpose As array Of HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "purpose", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// e.g. 
/// Resource Type, 
/// Profile, 
/// CDA, 
/// etc.
/// <p>
/// consent-content-class is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in consent-content-class, 
/// you may formally EXTEND consent-content-class to add codes to it.
Property class As array Of HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "class", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// e.g. 
/// LOINC or SNOMED CT code, 
/// etc. 
/// in the content.
/// <p>
/// any FHIR4 code may be used; 
/// consent-content-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Timeframe for data controlled by this rule.
Property dataPeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "dataPeriod", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Data controlled by this rule.
Property data As array Of HS.FHIR.Storage.vR4.Model.Element.Consent.provision.data(XMLNAME = "data", XMLPROJECTION = "ELEMENT");

/// Consent:provision
/// <p>
/// Nested Exception Rules.
Property provision As array Of HS.FHIR.Storage.vR4.Model.Element.Consent.provision(XMLNAME = "provision", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Consent.provision";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Consent.provision";

Storage Default
{
<Data name="action">
<Attribute>action</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Consent.provision.action"</Subscript>
</Data>
<Data name="actor">
<Attribute>actor</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Consent.provision.actor"</Subscript>
</Data>
<Data name="class">
<Attribute>class</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Consent.provision.class"</Subscript>
</Data>
<Data name="code">
<Attribute>code</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Consent.provision.code"</Subscript>
</Data>
<Data name="data">
<Attribute>data</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Consent.provision.data"</Subscript>
</Data>
<Data name="provision">
<Attribute>provision</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Consent.provision.provision"</Subscript>
</Data>
<Data name="provisionDefaultData">
<Subscript>"provision"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>period</Value>
</Value>
<Value name="3">
<Value>dataPeriod</Value>
</Value>
</Data>
<Data name="purpose">
<Attribute>purpose</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Consent.provision.purpose"</Subscript>
</Data>
<Data name="securityLabel">
<Attribute>securityLabel</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Consent.provision.securityLabel"</Subscript>
</Data>
<DefaultData>provisionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
