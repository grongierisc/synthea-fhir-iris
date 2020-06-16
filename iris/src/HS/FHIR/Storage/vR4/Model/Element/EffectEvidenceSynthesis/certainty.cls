/// How certain is the effect.
Class HS.FHIR.Storage.vR4.Model.Element.EffectEvidenceSynthesis.certainty Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Certainty rating.
/// <p>
/// evidence-quality is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in evidence-quality, 
/// you may formally EXTEND evidence-quality to add codes to it.
Property rating As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "rating", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Used for footnotes or explanatory notes.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A component that contributes to the overall certainty.
Property certaintySubcomponent As array Of HS.FHIR.Storage.vR4.Model.Element.EffectEvidenceSynthesis.certainty.certaintySubcomponent(XMLNAME = "certaintySubcomponent", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EffectEvidenceSynthesis.certainty";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EffectEvidenceSynthesis.certainty";

Storage Default
{
<Data name="certaintySubcomponent">
<Attribute>certaintySubcomponent</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.EffectEvidenceSynthesis.certainty.certaintySubcomponent"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.EffectEvidenceSynthesis.certainty.note"</Subscript>
</Data>
<Data name="rating">
<Attribute>rating</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.EffectEvidenceSynthesis.certainty.rating"</Subscript>
</Data>
<Type>%Storage.Persistent</Type>
}

}
