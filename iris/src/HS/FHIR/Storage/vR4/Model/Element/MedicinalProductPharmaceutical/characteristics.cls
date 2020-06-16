/// Characteristics e.g. 
/// a products onset of action.
Class HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPharmaceutical.characteristics Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// A coded characteristic.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// The status of characteristic e.g. 
/// assigned or pending.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property status As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductPharmaceutical.characteristics";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductPharmaceutical.characteristics";

Storage Default
{
<Data name="characteristicsDefaultData">
<Subscript>"characteristics"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>status</Value>
</Value>
</Data>
<DefaultData>characteristicsDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
