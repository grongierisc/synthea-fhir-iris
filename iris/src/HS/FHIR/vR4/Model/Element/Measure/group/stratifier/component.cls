/// Stratifier criteria component for the measure.
Class HS.FHIR.vR4.Model.Element.Measure.group.stratifier.component Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Meaning of the stratifier component.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The human readable description of this stratifier component.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// Expression
/// <p>
/// Component of how the measure should be stratified.
Property criteria As HS.FHIR.vR4.Model.Datatype.Expression(XMLNAME = "criteria", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Measure.group.stratifier.component";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Measure.group.stratifier.component";

}
