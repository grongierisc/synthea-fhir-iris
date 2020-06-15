/// First fill details.
Class HS.FHIR.vR4.Model.Element.MedicationRequest.dispenseRequest.initialFill Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Quantity
/// <p>
/// First fill quantity.
Property quantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// First fill duration.
Property duration As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "duration", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationRequest.dispenseRequest.initialFill";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationRequest.dispenseRequest.initialFill";

}
