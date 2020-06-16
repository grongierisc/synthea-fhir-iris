/// Todo.
Class HS.FHIR.Storage.vR4.Model.Element.SubstancePolymer.repeat.repeatUnit.structuralRepresentation Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Todo.
Property representation As %String(MAXLEN = 1000000, XMLNAME = "representation", XMLPROJECTION = "ATTRIBUTE");

/// Attachment
/// <p>
/// Todo.
Property attachment As HS.FHIR.Storage.vR4.Model.Datatype.Attachment(XMLNAME = "attachment", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstancePolymer.repeat.repeatUnit.structuralRepresentation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstancePolymer.repeat.repeatUnit.structuralRepresentation";

Storage Default
{
<Data name="structuralRepresentationDefaultData">
<Subscript>"structuralRepresentation"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>representation</Value>
</Value>
<Value name="3">
<Value>attachment</Value>
</Value>
</Data>
<DefaultData>structuralRepresentationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
