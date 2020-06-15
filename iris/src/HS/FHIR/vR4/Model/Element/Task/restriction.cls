/// Constraints on fulfillment tasks.
Class HS.FHIR.vR4.Model.Element.Task.restriction Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// How many times to repeat.
Property repetitions As %Integer(XMLNAME = "repetitions", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When fulfillment sought.
Property period As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// For whom is fulfillment sought?
/// <p>
/// Patient | Practitioner | PractitionerRole | RelatedPerson | Group | Organization
Property recipient As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "recipient", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Task.restriction";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Task.restriction";

}
