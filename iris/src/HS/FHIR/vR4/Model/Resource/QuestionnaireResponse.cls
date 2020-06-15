/// A structured set of questions and their answers.
Class HS.FHIR.vR4.Model.Resource.QuestionnaireResponse Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Unique id for this set of answers.
Property identifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Request fulfilled by this QuestionnaireResponse.
/// <p>
/// CarePlan | ServiceRequest
Property basedOn As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Part of this action.
/// <p>
/// Observation | Procedure
Property partOf As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Form being answered.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property questionnaire As %String(MAXLEN = 1000000, XMLNAME = "questionnaire", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// in-progress | completed | amended | entered-in-error | stopped
/// <p>
/// questionnaire-answers-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend questionnaire-answers-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// The subject of the questions.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Encounter created as part of.
/// <p>
/// Encounter
Property encounter As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Date the answers were gathered.
Property authored As %String(MAXLEN = 1000000, XMLNAME = "authored", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Person who received and recorded the answers.
/// <p>
/// Device | Practitioner | PractitionerRole | Patient | RelatedPerson | Organization
Property author As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The person who answered the questions.
/// <p>
/// Patient | Practitioner | PractitionerRole | RelatedPerson
Property source As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Groups and questions.
Property item As List Of HS.FHIR.vR4.Model.Element.QuestionnaireResponse.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "QuestionnaireResponse";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "QuestionnaireResponse";

}
