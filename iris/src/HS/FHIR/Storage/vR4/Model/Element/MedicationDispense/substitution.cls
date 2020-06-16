/// Whether a substitution was performed on the dispense.
Class HS.FHIR.Storage.vR4.Model.Element.MedicationDispense.substitution Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// Whether a substitution was or was not performed on the dispense.
Property wasSubstituted As %Boolean(XMLNAME = "wasSubstituted", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Code signifying whether a different drug was dispensed from what was prescribed.
/// <p>
/// any FHIR4 code may be used; 
/// v3-ActSubstanceAdminSubstitutionCode shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Why was substitution made.
/// <p>
/// any FHIR4 code may be used; 
/// v3-SubstanceAdminSubstitutionReason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reason As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who is responsible for the substitution.
/// <p>
/// Practitioner | PractitionerRole
Property responsibleParty As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "responsibleParty", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationDispense.substitution";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationDispense.substitution";

Storage Default
{
<Data name="reason">
<Attribute>reason</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicationDispense.substitution.reason"</Subscript>
</Data>
<Data name="responsibleParty">
<Attribute>responsibleParty</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicationDispense.substitution.responsibleParty"</Subscript>
</Data>
<Data name="substitutionDefaultData">
<Subscript>"substitution"</Subscript>
<Value name="1">
<Value>wasSubstituted</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
</Data>
<DefaultData>substitutionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
