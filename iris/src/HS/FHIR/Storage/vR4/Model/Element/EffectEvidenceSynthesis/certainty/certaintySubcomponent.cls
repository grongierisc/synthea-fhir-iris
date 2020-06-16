/// A component that contributes to the overall certainty.
Class HS.FHIR.Storage.vR4.Model.Element.EffectEvidenceSynthesis.certainty.certaintySubcomponent Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of subcomponent of certainty rating.
/// <p>
/// certainty-subcomponent-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in certainty-subcomponent-type, 
/// you may formally EXTEND certainty-subcomponent-type to add codes to it.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Subcomponent certainty rating.
/// <p>
/// certainty-subcomponent-rating is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in certainty-subcomponent-rating, 
/// you may formally EXTEND certainty-subcomponent-rating to add codes to it.
Property rating As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "rating", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Used for footnotes or explanatory notes.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EffectEvidenceSynthesis.certainty.certaintySubcomponent";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EffectEvidenceSynthesis.certainty.certaintySubcomponent";

Storage Default
{
<Data name="certaintySubcomponentDefaultData">
<Subscript>"certaintySubcomponent"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.EffectEvidenceSynthesis.certainty.certaintySubcomponent.note"</Subscript>
</Data>
<Data name="rating">
<Attribute>rating</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.EffectEvidenceSynthesis.certainty.certaintySubcomponent.rating"</Subscript>
</Data>
<DefaultData>certaintySubcomponentDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
