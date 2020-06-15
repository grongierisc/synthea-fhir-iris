/// The maximum number of units of the medication that can be dispensed in a period.
Class HS.FHIR.vR4.Model.Element.MedicationKnowledge.regulatory.maxDispense Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Quantity
/// <p>
/// The maximum number of units of the medication that can be dispensed.
Property quantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT") [ Required ];

/// Duration
/// <p>
/// The period that applies to the maximum number of units.
Property period As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.regulatory.maxDispense";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.regulatory.maxDispense";

}
