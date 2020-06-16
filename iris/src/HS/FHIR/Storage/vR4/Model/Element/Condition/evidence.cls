/// Supporting evidence.
Class HS.FHIR.Storage.vR4.Model.Element.Condition.evidence Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Manifestation/symptom.
/// <p>
/// any FHIR4 code may be used; 
/// manifestation-or-symptom shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Supporting information found elsewhere.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property detail As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "detail", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Condition.evidence";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Condition.evidence";

Storage Default
{
<Data name="code">
<Attribute>code</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Condition.evidence.code"</Subscript>
</Data>
<Data name="detail">
<Attribute>detail</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Condition.evidence.detail"</Subscript>
</Data>
<Type>%Storage.Persistent</Type>
}

}
