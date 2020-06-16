/// Who performed event.
Class HS.FHIR.Storage.vR4.Model.Element.MedicationDispense.performer Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Who performed the dispense and what they did.
/// <p>
/// any FHIR4 code may be used; 
/// medicationdispense-performer-function shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property function As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "function", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Individual who was performing.
/// <p>
/// Practitioner | PractitionerRole | Organization | Patient | Device | RelatedPerson
Property actor As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "actor", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationDispense.performer";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationDispense.performer";

Storage Default
{
<Data name="performerDefaultData">
<Subscript>"performer"</Subscript>
<Value name="1">
<Value>function</Value>
</Value>
<Value name="2">
<Value>actor</Value>
</Value>
</Data>
<DefaultData>performerDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
