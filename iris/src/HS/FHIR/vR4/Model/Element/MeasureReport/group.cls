/// Measure results for each group.
Class HS.FHIR.vR4.Model.Element.MeasureReport.group Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Meaning of the group.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The populations in the group.
Property population As List Of HS.FHIR.vR4.Model.Element.MeasureReport.group.population(XMLNAME = "population", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// What score this group achieved.
Property measureScore As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "measureScore", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Stratification results.
Property stratifier As List Of HS.FHIR.vR4.Model.Element.MeasureReport.group.stratifier(XMLNAME = "stratifier", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MeasureReport.group";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MeasureReport.group";

}
