/// Ordered item details.
Class HS.FHIR.vR4.Model.Element.SupplyRequest.parameter Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Item detail.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Value of detail.
Property valueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Value of detail.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "valueCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Value of detail.
Property valueQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Value of detail.
Property valueRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "valueRange", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SupplyRequest.parameter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SupplyRequest.parameter";

}
