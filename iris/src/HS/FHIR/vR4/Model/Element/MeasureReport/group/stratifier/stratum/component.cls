/// Stratifier component values.
Class HS.FHIR.vR4.Model.Element.MeasureReport.group.stratifier.stratum.component Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// What stratifier component of the group.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// The stratum component value, 
/// e.g. 
/// male.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property value As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "value", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MeasureReport.group.stratifier.stratum.component";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MeasureReport.group.stratifier.stratum.component";

}
