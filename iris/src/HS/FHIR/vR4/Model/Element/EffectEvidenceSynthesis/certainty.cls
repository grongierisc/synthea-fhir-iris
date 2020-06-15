/// How certain is the effect.
Class HS.FHIR.vR4.Model.Element.EffectEvidenceSynthesis.certainty Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Certainty rating.
/// <p>
/// evidence-quality is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in evidence-quality, 
/// you may formally EXTEND evidence-quality to add codes to it.
Property rating As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "rating", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Used for footnotes or explanatory notes.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A component that contributes to the overall certainty.
Property certaintySubcomponent As List Of HS.FHIR.vR4.Model.Element.EffectEvidenceSynthesis.certainty.certaintySubcomponent(XMLNAME = "certaintySubcomponent", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EffectEvidenceSynthesis.certainty";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EffectEvidenceSynthesis.certainty";

}
