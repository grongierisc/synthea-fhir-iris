/// Names applicable to this substance.
Class HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.name Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// The actual name.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Name type.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The status of the name.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property status As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// If this is the preferred name for this substance.
Property preferred As %Boolean(XMLNAME = "preferred", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Language of the name.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property language As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "language", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The use context of this name for example if there is a different name a drug active ingredient as opposed to a food colour additive.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property domain As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "domain", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The jurisdiction where this name applies.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property jurisdiction As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// SubstanceSpecification:name
/// <p>
/// A synonym of this name.
Property synonym As array Of HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.name(XMLNAME = "synonym", XMLPROJECTION = "ELEMENT");

/// SubstanceSpecification:name
/// <p>
/// A translation for this name.
Property translation As array Of HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.name(XMLNAME = "translation", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Details of the official nature of this name.
Property official As array Of HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.name.official(XMLNAME = "official", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Supporting literature.
/// <p>
/// DocumentReference
Property source As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSpecification.name";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSpecification.name";

Storage Default
{
<Data name="domain">
<Attribute>domain</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.name.domain"</Subscript>
</Data>
<Data name="jurisdiction">
<Attribute>jurisdiction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.name.jurisdiction"</Subscript>
</Data>
<Data name="language">
<Attribute>language</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.name.language"</Subscript>
</Data>
<Data name="nameDefaultData">
<Subscript>"name"</Subscript>
<Value name="1">
<Value>name</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
<Value name="3">
<Value>status</Value>
</Value>
<Value name="4">
<Value>preferred</Value>
</Value>
</Data>
<Data name="official">
<Attribute>official</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.name.official"</Subscript>
</Data>
<Data name="source">
<Attribute>source</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.name.source"</Subscript>
</Data>
<Data name="synonym">
<Attribute>synonym</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.name.synonym"</Subscript>
</Data>
<Data name="translation">
<Attribute>translation</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.name.translation"</Subscript>
</Data>
<DefaultData>nameDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
