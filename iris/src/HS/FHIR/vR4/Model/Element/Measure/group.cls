/// Population criteria group.
Class HS.FHIR.vR4.Model.Element.Measure.group Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Meaning of the group.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Summary description.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Population criteria.
Property population As List Of HS.FHIR.vR4.Model.Element.Measure.group.population(XMLNAME = "population", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Stratifier criteria for the measure.
Property stratifier As List Of HS.FHIR.vR4.Model.Element.Measure.group.stratifier(XMLNAME = "stratifier", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Measure.group";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Measure.group";

}
