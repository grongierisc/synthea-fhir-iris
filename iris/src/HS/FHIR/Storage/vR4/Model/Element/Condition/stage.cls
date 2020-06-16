/// Stage/grade, 
/// usually assessed formally.
Class HS.FHIR.Storage.vR4.Model.Element.Condition.stage Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Simple summary (disease specific)
/// <p>
/// any FHIR4 code may be used; 
/// condition-stage shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property summary As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "summary", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Formal record of assessment.
/// <p>
/// ClinicalImpression | DiagnosticReport | Observation
Property assessment As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "assessment", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Kind of staging.
/// <p>
/// any FHIR4 code may be used; 
/// condition-stage-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Condition.stage";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Condition.stage";

Storage Default
{
<Data name="assessment">
<Attribute>assessment</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Condition.stage.assessment"</Subscript>
</Data>
<Data name="stageDefaultData">
<Subscript>"stage"</Subscript>
<Value name="1">
<Value>summary</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
</Data>
<DefaultData>stageDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
