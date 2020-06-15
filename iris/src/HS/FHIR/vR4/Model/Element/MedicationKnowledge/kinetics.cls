/// The time course of drug absorption, 
/// distribution, 
/// metabolism and excretion of a medication from the body.
Class HS.FHIR.vR4.Model.Element.MedicationKnowledge.kinetics Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Quantity
/// <p>
/// The drug concentration measured at certain discrete points in time.
Property areaUnderCurve As List Of HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "areaUnderCurve", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// The median lethal dose of a drug.
Property lethalDose50 As List Of HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "lethalDose50", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// Time required for concentration in the body to decrease by half.
Property halfLifePeriod As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "halfLifePeriod", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.kinetics";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.kinetics";

}
