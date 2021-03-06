/// Specifies if changes are allowed when dispensing a medication from a regulatory perspective.
Class HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.regulatory.substitution Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Specifies the type of substitution allowed.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// boolean
/// <p>
/// Specifies if regulation allows for changes in the medication when dispensing.
Property allowed As %Boolean(XMLNAME = "allowed", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.regulatory.substitution";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.regulatory.substitution";

Storage Default
{
<Data name="substitutionDefaultData">
<Subscript>"substitution"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>allowed</Value>
</Value>
</Data>
<DefaultData>substitutionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
