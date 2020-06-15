/// The formal response to a guidance request.
Class HS.FHIR.vR4.Model.Resource.GuidanceResponse Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// The identifier of the request associated with this response, 
/// if any.
Property requestIdentifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "requestIdentifier", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Business identifier.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

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
Property moduleCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "moduleCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

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
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Encounter during which the response was returned.
/// <p>
/// Encounter
Property encounter As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the guidance response was processed.
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Device returning the guidance.
/// <p>
/// Device
Property performer As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Why guidance is needed.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property reasonCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why guidance is needed.
/// <p>
/// Condition | Observation | DiagnosticReport | DocumentReference
Property reasonReference As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Additional notes about the response.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Messages resulting from the evaluation of the artifact or artifacts.
/// <p>
/// OperationOutcome
Property evaluationMessage As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "evaluationMessage", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The output parameters of the evaluation, 
/// if any.
/// <p>
/// Parameters
Property outputParameters As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "outputParameters", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Proposed actions, 
/// if any.
/// <p>
/// CarePlan | RequestGroup
Property result As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "result", XMLPROJECTION = "ELEMENT");

/// DataRequirement
/// <p>
/// Additional required data.
Property dataRequirement As List Of HS.FHIR.vR4.Model.Datatype.DataRequirement(XMLNAME = "dataRequirement", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "GuidanceResponse";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "GuidanceResponse";

}
