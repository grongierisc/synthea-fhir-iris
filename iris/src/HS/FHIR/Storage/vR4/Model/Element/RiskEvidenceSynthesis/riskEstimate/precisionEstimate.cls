/// How precise the estimate is.
Class HS.FHIR.Storage.vR4.Model.Element.RiskEvidenceSynthesis.riskEstimate.precisionEstimate Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of precision estimate.
/// <p>
/// precision-estimate-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in precision-estimate-type, 
/// you may formally EXTEND precision-estimate-type to add codes to it.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// decimal
/// <p>
/// Level of confidence interval.
Property level As %Decimal(XMLNAME = "level", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Lower bound.
Property from As %Decimal(XMLNAME = "from", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Upper bound.
Property to As %Decimal(XMLNAME = "to", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "RiskEvidenceSynthesis.riskEstimate.precisionEstimate";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "RiskEvidenceSynthesis.riskEstimate.precisionEstimate";

Storage Default
{
<Data name="precisionEstimateDefaultData">
<Subscript>"precisionEstimate"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>level</Value>
</Value>
<Value name="3">
<Value>from</Value>
</Value>
<Value name="4">
<Value>to</Value>
</Value>
</Data>
<DefaultData>precisionEstimateDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
