/// Program under which a medication is reviewed.
Class HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.monitoringProgram Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of program under which the medication is monitored.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Name of the reviewing program.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.monitoringProgram";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.monitoringProgram";

Storage Default
{
<Data name="monitoringProgramDefaultData">
<Subscript>"monitoringProgram"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>name</Value>
</Value>
</Data>
<DefaultData>monitoringProgramDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
