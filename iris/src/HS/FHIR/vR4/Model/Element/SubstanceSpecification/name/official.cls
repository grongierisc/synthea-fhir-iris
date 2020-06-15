/// Details of the official nature of this name.
Class HS.FHIR.vR4.Model.Element.SubstanceSpecification.name.official Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Which authority uses this official name.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property authority As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "authority", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The status of the official name.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property status As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Date of official name change.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSpecification.name.official";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSpecification.name.official";

}
