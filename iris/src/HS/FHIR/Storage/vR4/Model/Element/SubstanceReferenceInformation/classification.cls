/// Todo.
Class HS.FHIR.Storage.vR4.Model.Element.SubstanceReferenceInformation.classification Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property domain As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "domain", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property classification As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "classification", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property subtype As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "subtype", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Todo.
/// <p>
/// DocumentReference
Property source As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceReferenceInformation.classification";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceReferenceInformation.classification";

Storage Default
{
<Data name="classificationDefaultData">
<Subscript>"classification"</Subscript>
<Value name="1">
<Value>domain</Value>
</Value>
<Value name="2">
<Value>classification</Value>
</Value>
</Data>
<Data name="source">
<Attribute>source</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstanceReferenceInformation.classification.source"</Subscript>
</Data>
<Data name="subtype">
<Attribute>subtype</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstanceReferenceInformation.classification.subtype"</Subscript>
</Data>
<DefaultData>classificationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
