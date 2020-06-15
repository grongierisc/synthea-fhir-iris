/// Processing and processing step details.
Class HS.FHIR.vR4.Model.Element.Specimen.processing Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Textual description of procedure.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Indicates the treatment step  applied to the specimen.
/// <p>
/// any FHIR4 code may be used; 
/// specimen-processing-procedure shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property procedure As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "procedure", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Material used in the processing step.
/// <p>
/// Substance
Property additive As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "additive", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Date and time of specimen processing.
Property timeDateTime As %String(MAXLEN = 1000000, XMLNAME = "timeDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Date and time of specimen processing.
Property timePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "timePeriod", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Specimen.processing";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Specimen.processing";

}
