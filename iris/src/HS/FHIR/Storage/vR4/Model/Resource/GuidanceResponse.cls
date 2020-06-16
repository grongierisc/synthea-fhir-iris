/// The formal response to a guidance request.
Class HS.FHIR.Storage.vR4.Model.Resource.GuidanceResponse Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// The identifier of the request associated with this response, 
/// if any.
Property requestIdentifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "requestIdentifier", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Business identifier.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// What guidance was requested.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property moduleCanonical As %String(MAXLEN = 1000000, XMLNAME = "moduleCanonical", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// What guidance was requested.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property moduleCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "moduleCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// uri
/// <p>
/// What guidance was requested.
Property moduleUri As %String(MAXLEN = 1000000, XMLNAME = "moduleUri", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// success | data-requested | data-required | in-progress | failure | entered-in-error
/// <p>
/// guidance-response-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend guidance-response-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Patient the request was performed for.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Encounter during which the response was returned.
/// <p>
/// Encounter
Property encounter As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the guidance response was processed.
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Device returning the guidance.
/// <p>
/// Device
Property performer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Why guidance is needed.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property reasonCode As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why guidance is needed.
/// <p>
/// Condition | Observation | DiagnosticReport | DocumentReference
Property reasonReference As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Additional notes about the response.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Messages resulting from the evaluation of the artifact or artifacts.
/// <p>
/// OperationOutcome
Property evaluationMessage As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "evaluationMessage", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The output parameters of the evaluation, 
/// if any.
/// <p>
/// Parameters
Property outputParameters As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "outputParameters", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Proposed actions, 
/// if any.
/// <p>
/// CarePlan | RequestGroup
Property result As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "result", XMLPROJECTION = "ELEMENT");

/// DataRequirement
/// <p>
/// Additional required data.
Property dataRequirement As array Of HS.FHIR.Storage.vR4.Model.Datatype.DataRequirement(XMLNAME = "dataRequirement", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "GuidanceResponse";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "GuidanceResponse";

Storage Default
{
<Data name="GuidanceResponseDefaultData">
<Subscript>"GuidanceResponse"</Subscript>
<Value name="1">
<Value>requestIdentifier</Value>
</Value>
<Value name="2">
<Value>moduleCanonical</Value>
</Value>
<Value name="3">
<Value>moduleCodeableConcept</Value>
</Value>
<Value name="4">
<Value>moduleUri</Value>
</Value>
<Value name="5">
<Value>status</Value>
</Value>
<Value name="6">
<Value>subject</Value>
</Value>
<Value name="7">
<Value>encounter</Value>
</Value>
<Value name="8">
<Value>occurrenceDateTime</Value>
</Value>
<Value name="9">
<Value>performer</Value>
</Value>
<Value name="10">
<Value>outputParameters</Value>
</Value>
<Value name="11">
<Value>result</Value>
</Value>
</Data>
<Data name="dataRequirement">
<Attribute>dataRequirement</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.GuidanceResponse.dataRequirement"</Subscript>
</Data>
<Data name="evaluationMessage">
<Attribute>evaluationMessage</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.GuidanceResponse.evaluationMessage"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.GuidanceResponse.identifier"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.GuidanceResponse.note"</Subscript>
</Data>
<Data name="reasonCode">
<Attribute>reasonCode</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.GuidanceResponse.reasonCode"</Subscript>
</Data>
<Data name="reasonReference">
<Attribute>reasonReference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.GuidanceResponse.reasonReference"</Subscript>
</Data>
<DefaultData>GuidanceResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
