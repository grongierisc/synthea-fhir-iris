/// Todo.
Class HS.FHIR.Storage.vR4.Model.Element.SubstanceReferenceInformation.target Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Todo.
Property target As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "target", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property interaction As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "interaction", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property organism As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "organism", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property organismType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "organismType", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Todo.
Property amountQuantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "amountQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Todo.
Property amountRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "amountRange", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Todo.
Property amountString As %String(MAXLEN = 1000000, XMLNAME = "amountString", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property amountType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "amountType", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Todo.
/// <p>
/// DocumentReference
Property source As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceReferenceInformation.target";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceReferenceInformation.target";

Storage Default
{
<Data name="source">
<Attribute>source</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstanceReferenceInformation.target.source"</Subscript>
</Data>
<Data name="targetDefaultData">
<Subscript>"target"</Subscript>
<Value name="1">
<Value>target</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
<Value name="3">
<Value>interaction</Value>
</Value>
<Value name="4">
<Value>organism</Value>
</Value>
<Value name="5">
<Value>organismType</Value>
</Value>
<Value name="6">
<Value>amountQuantity</Value>
</Value>
<Value name="7">
<Value>amountRange</Value>
</Value>
<Value name="8">
<Value>amountString</Value>
</Value>
<Value name="9">
<Value>amountType</Value>
</Value>
</Data>
<DefaultData>targetDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
