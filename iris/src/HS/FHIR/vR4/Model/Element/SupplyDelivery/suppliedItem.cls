/// The item that is delivered or supplied.
Class HS.FHIR.vR4.Model.Element.SupplyDelivery.suppliedItem Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Quantity
/// <p>
/// Amount dispensed.
Property quantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Medication, 
/// Substance, 
/// or Device supplied.
/// <p>
/// any FHIR4 code may be used; 
/// supply-item shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property itemCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "itemCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Medication, 
/// Substance, 
/// or Device supplied.
/// <p>
/// Medication | Substance | Device
Property itemReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "itemReference", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SupplyDelivery.suppliedItem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SupplyDelivery.suppliedItem";

}
