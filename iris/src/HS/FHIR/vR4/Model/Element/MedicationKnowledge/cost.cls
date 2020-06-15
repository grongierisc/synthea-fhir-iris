/// The pricing of the medication.
Class HS.FHIR.vR4.Model.Element.MedicationKnowledge.cost Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The category of the cost information.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// The source or owner for the price information.
Property source As %String(MAXLEN = 1000000, XMLNAME = "source", XMLPROJECTION = "ATTRIBUTE");

/// Money
/// <p>
/// The price of the medication.
Property cost As HS.FHIR.vR4.Model.Datatype.Money(XMLNAME = "cost", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.cost";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.cost";

}
