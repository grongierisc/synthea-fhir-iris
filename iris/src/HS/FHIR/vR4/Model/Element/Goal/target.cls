/// Target outcome for the goal.
Class HS.FHIR.vR4.Model.Element.Goal.target Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The parameter whose value is being tracked.
/// <p>
/// any FHIR4 code may be used; 
/// observation-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property measure As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "measure", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// The target value to be achieved.
Property detailBoolean As %Boolean(XMLNAME = "detailBoolean", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// The target value to be achieved.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property detailCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "detailCodeableConcept", XMLPROJECTION = "ELEMENT");

/// integer
/// <p>
/// The target value to be achieved.
Property detailInteger As %Integer(XMLNAME = "detailInteger", XMLPROJECTION = "ATTRIBUTE");

/// Quantity
/// <p>
/// The target value to be achieved.
Property detailQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "detailQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// The target value to be achieved.
Property detailRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "detailRange", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// The target value to be achieved.
Property detailRatio As HS.FHIR.vR4.Model.Datatype.Ratio(XMLNAME = "detailRatio", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The target value to be achieved.
Property detailString As %String(MAXLEN = 1000000, XMLNAME = "detailString", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// Reach goal on or before.
Property dueDate As %String(MAXLEN = 1000000, XMLNAME = "dueDate", XMLPROJECTION = "ATTRIBUTE");

/// Duration
/// <p>
/// Reach goal on or before.
Property dueDuration As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "dueDuration", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Goal.target";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Goal.target";

}
