/// Processing and processing step details.
Class HS.FHIR.Storage.vR4.Model.Element.Specimen.processing Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Textual description of procedure.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Indicates the treatment step  applied to the specimen.
/// <p>
/// any FHIR4 code may be used; 
/// specimen-processing-procedure shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property procedure As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "procedure", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Material used in the processing step.
/// <p>
/// Substance
Property additive As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "additive", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Date and time of specimen processing.
Property timeDateTime As %String(MAXLEN = 1000000, XMLNAME = "timeDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Date and time of specimen processing.
Property timePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "timePeriod", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Specimen.processing";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Specimen.processing";

Storage Default
{
<Data name="additive">
<Attribute>additive</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Specimen.processing.additive"</Subscript>
</Data>
<Data name="processingDefaultData">
<Subscript>"processing"</Subscript>
<Value name="1">
<Value>description</Value>
</Value>
<Value name="2">
<Value>procedure</Value>
</Value>
<Value name="3">
<Value>timeDateTime</Value>
</Value>
<Value name="4">
<Value>timePeriod</Value>
</Value>
</Data>
<DefaultData>processingDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
