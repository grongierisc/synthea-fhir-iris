/// Specimen handling before testing.
Class HS.FHIR.Storage.vR4.Model.Element.SpecimenDefinition.typeTested.handling Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Temperature qualifier.
/// <p>
/// any FHIR4 code may be used; 
/// handling-condition shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property temperatureQualifier As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "temperatureQualifier", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Temperature range.
Property temperatureRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "temperatureRange", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// Maximum preservation time.
Property maxDuration As HS.FHIR.Storage.vR4.Model.Datatype.Duration(XMLNAME = "maxDuration", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Preservation instruction.
Property instruction As %String(MAXLEN = 1000000, XMLNAME = "instruction", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SpecimenDefinition.typeTested.handling";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SpecimenDefinition.typeTested.handling";

Storage Default
{
<Data name="handlingDefaultData">
<Subscript>"handling"</Subscript>
<Value name="1">
<Value>temperatureQualifier</Value>
</Value>
<Value name="2">
<Value>temperatureRange</Value>
</Value>
<Value name="3">
<Value>maxDuration</Value>
</Value>
<Value name="4">
<Value>instruction</Value>
</Value>
</Data>
<DefaultData>handlingDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
