/// Immunization event information.
Class HS.FHIR.Storage.vR4.Model.Resource.Immunization Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business identifier.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// completed | entered-in-error | not-done
/// <p>
/// immunization-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend immunization-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Reason not done.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-status-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property statusReason As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "statusReason", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Vaccine product administered.
/// <p>
/// any FHIR4 code may be used; 
/// vaccine-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property vaccineCode As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "vaccineCode", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Who was immunized.
/// <p>
/// Patient
Property patient As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Encounter immunization was part of.
/// <p>
/// Encounter
Property encounter As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Vaccine administration date.
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Vaccine administration date.
Property occurrenceString As %String(MAXLEN = 1000000, XMLNAME = "occurrenceString", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// dateTime
/// <p>
/// When the immunization was first captured in the subject's record.
Property recorded As %String(MAXLEN = 1000000, XMLNAME = "recorded", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Indicates context the data was recorded in.
Property primarySource As %Boolean(XMLNAME = "primarySource", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Indicates the source of a secondarily reported record.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-origin shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reportOrigin As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reportOrigin", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where immunization occurred.
/// <p>
/// Location
Property location As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Vaccine manufacturer.
/// <p>
/// Organization
Property manufacturer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "manufacturer", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Vaccine lot number.
Property lotNumber As %String(MAXLEN = 1000000, XMLNAME = "lotNumber", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// Vaccine expiration date.
Property expirationDate As %String(MAXLEN = 1000000, XMLNAME = "expirationDate", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Body site vaccine  was administered.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-site shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property site As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "site", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// How vaccine entered body.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-route shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property route As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "route", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Amount of vaccine administered.
Property doseQuantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "doseQuantity", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Who performed event.
Property performer As array Of HS.FHIR.Storage.vR4.Model.Element.Immunization.performer(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Additional immunization notes.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Why immunization occurred.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why immunization occurred.
/// <p>
/// Condition | Observation | DiagnosticReport
Property reasonReference As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Dose potency.
Property isSubpotent As %Boolean(XMLNAME = "isSubpotent", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Reason for being subpotent.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-subpotent-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property subpotentReason As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "subpotentReason", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Educational material presented to patient.
Property education As array Of HS.FHIR.Storage.vR4.Model.Element.Immunization.education(XMLNAME = "education", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Patient eligibility for a vaccination program.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-program-eligibility shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property programEligibility As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "programEligibility", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Funding source for the vaccine.
/// <p>
/// any FHIR4 code may be used; 
/// immunization-funding-source shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property fundingSource As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "fundingSource", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Details of a reaction that follows immunization.
Property reaction As array Of HS.FHIR.Storage.vR4.Model.Element.Immunization.reaction(XMLNAME = "reaction", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Protocol followed by the provider.
Property protocolApplied As array Of HS.FHIR.Storage.vR4.Model.Element.Immunization.protocolApplied(XMLNAME = "protocolApplied", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Immunization";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Immunization";

Storage Default
{
<Data name="ImmunizationDefaultData">
<Subscript>"Immunization"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>statusReason</Value>
</Value>
<Value name="3">
<Value>vaccineCode</Value>
</Value>
<Value name="4">
<Value>patient</Value>
</Value>
<Value name="5">
<Value>encounter</Value>
</Value>
<Value name="6">
<Value>occurrenceDateTime</Value>
</Value>
<Value name="7">
<Value>occurrenceString</Value>
</Value>
<Value name="8">
<Value>recorded</Value>
</Value>
<Value name="9">
<Value>primarySource</Value>
</Value>
<Value name="10">
<Value>reportOrigin</Value>
</Value>
<Value name="11">
<Value>location</Value>
</Value>
<Value name="12">
<Value>manufacturer</Value>
</Value>
<Value name="13">
<Value>lotNumber</Value>
</Value>
<Value name="14">
<Value>expirationDate</Value>
</Value>
<Value name="15">
<Value>site</Value>
</Value>
<Value name="16">
<Value>route</Value>
</Value>
<Value name="17">
<Value>doseQuantity</Value>
</Value>
<Value name="18">
<Value>isSubpotent</Value>
</Value>
<Value name="19">
<Value>fundingSource</Value>
</Value>
</Data>
<Data name="education">
<Attribute>education</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Immunization.education"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Immunization.identifier"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Immunization.note"</Subscript>
</Data>
<Data name="performer">
<Attribute>performer</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Immunization.performer"</Subscript>
</Data>
<Data name="programEligibility">
<Attribute>programEligibility</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Immunization.programEligibility"</Subscript>
</Data>
<Data name="protocolApplied">
<Attribute>protocolApplied</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Immunization.protocolApplied"</Subscript>
</Data>
<Data name="reaction">
<Attribute>reaction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Immunization.reaction"</Subscript>
</Data>
<Data name="reasonCode">
<Attribute>reasonCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Immunization.reasonCode"</Subscript>
</Data>
<Data name="reasonReference">
<Attribute>reasonReference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Immunization.reasonReference"</Subscript>
</Data>
<Data name="subpotentReason">
<Attribute>subpotentReason</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Immunization.subpotentReason"</Subscript>
</Data>
<DefaultData>ImmunizationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
