/// Characteristics e.g. 
/// a products onset of action.
Class HS.FHIR.vR4.Model.Element.MedicinalProductPharmaceutical.characteristics Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// A coded characteristic.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// The status of characteristic e.g. 
/// assigned or pending.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property status As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductPharmaceutical.characteristics";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductPharmaceutical.characteristics";

}
