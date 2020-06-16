/// What was the estimated effect.
Class HS.FHIR.Storage.vR4.Model.Element.EffectEvidenceSynthesis.effectEstimate Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Description of effect estimate.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Type of efffect estimate.
/// <p>
/// effect-estimate-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in effect-estimate-type, 
/// you may formally EXTEND effect-estimate-type to add codes to it.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Variant exposure states.
/// <p>
/// evidence-variant-state is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in evidence-variant-state, 
/// you may formally EXTEND evidence-variant-state to add codes to it.
Property variantState As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "variantState", XMLPROJECTION = "ELEMENT");

/// decimal
/// <p>
/// Point estimate.
Property value As %Decimal(XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// What unit is the outcome described in?
/// <p>
/// ucum-units|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend ucum-units|4.0.1 and you may NOT use codes from other ValueSets.
Property unitOfMeasure As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "unitOfMeasure", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// How precise the estimate is.
Property precisionEstimate As array Of HS.FHIR.Storage.vR4.Model.Element.EffectEvidenceSynthesis.effectEstimate.precisionEstimate(XMLNAME = "precisionEstimate", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "EffectEvidenceSynthesis.effectEstimate";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "EffectEvidenceSynthesis.effectEstimate";

Storage Default
{
<Data name="effectEstimateDefaultData">
<Subscript>"effectEstimate"</Subscript>
<Value name="1">
<Value>description</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
<Value name="3">
<Value>variantState</Value>
</Value>
<Value name="4">
<Value>value</Value>
</Value>
<Value name="5">
<Value>unitOfMeasure</Value>
</Value>
</Data>
<Data name="precisionEstimate">
<Attribute>precisionEstimate</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.EffectEvidenceSynthesis.effectEstimate.precisionEstimate"</Subscript>
</Data>
<DefaultData>effectEstimateDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
