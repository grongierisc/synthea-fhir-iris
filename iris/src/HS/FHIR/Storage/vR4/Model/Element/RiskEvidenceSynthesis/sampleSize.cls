/// What sample size was involved?
Class HS.FHIR.Storage.vR4.Model.Element.RiskEvidenceSynthesis.sampleSize Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Description of sample size.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// How many studies?
Property numberOfStudies As %Integer(XMLNAME = "numberOfStudies", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// How many participants?
Property numberOfParticipants As %Integer(XMLNAME = "numberOfParticipants", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "RiskEvidenceSynthesis.sampleSize";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "RiskEvidenceSynthesis.sampleSize";

Storage Default
{
<Data name="sampleSizeDefaultData">
<Subscript>"sampleSize"</Subscript>
<Value name="1">
<Value>description</Value>
</Value>
<Value name="2">
<Value>numberOfStudies</Value>
</Value>
<Value name="3">
<Value>numberOfParticipants</Value>
</Value>
</Data>
<DefaultData>sampleSizeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
