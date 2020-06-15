/// Specifies descriptive properties of the medicine.
Class HS.FHIR.vR4.Model.Element.MedicationKnowledge.drugCharacteristic Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Code specifying the type of characteristic of medication.
/// <p>
/// any FHIR4 code may be used; 
/// medicationknowledge-characteristic shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// base64Binary
/// <p>
/// Description of the characteristic.
Property valueBase64Binary As %Binary(XMLNAME = "valueBase64Binary", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Description of the characteristic.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "valueCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Description of the characteristic.
Property valueQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Description of the characteristic.
Property valueString As %String(MAXLEN = 1000000, XMLNAME = "valueString", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.drugCharacteristic";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.drugCharacteristic";

}
