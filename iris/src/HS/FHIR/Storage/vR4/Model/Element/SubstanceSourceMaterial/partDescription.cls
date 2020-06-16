/// To do.
Class HS.FHIR.Storage.vR4.Model.Element.SubstanceSourceMaterial.partDescription Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Entity of anatomical origin of source material within an organism.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property part As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "part", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The detailed anatomic location when the part can be extracted from different anatomical locations of the organism. 
/// Multiple alternative locations may apply.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property partLocation As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "partLocation", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSourceMaterial.partDescription";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSourceMaterial.partDescription";

Storage Default
{
<Data name="partDescriptionDefaultData">
<Subscript>"partDescription"</Subscript>
<Value name="1">
<Value>part</Value>
</Value>
<Value name="2">
<Value>partLocation</Value>
</Value>
</Data>
<DefaultData>partDescriptionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
