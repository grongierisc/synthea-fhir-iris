/// Physical entity which is the primary unit of interest in the study.
Class HS.FHIR.Storage.vR4.Model.Resource.ResearchSubject Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier for research subject in a study.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// candidate | eligible | follow-up | ineligible | not-registered | off-study | on-study | on-study-intervention | on-study-observation | pending-on-study | potential-candidate | screening | withdrawn
/// <p>
/// research-subject-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend research-subject-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Period
/// <p>
/// Start and end of participation.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Study subject is part of.
/// <p>
/// ResearchStudy
Property study As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "study", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Who is part of study.
/// <p>
/// Patient
Property individual As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "individual", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// What path should be followed.
Property assignedArm As %String(MAXLEN = 1000000, XMLNAME = "assignedArm", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// What path was followed.
Property actualArm As %String(MAXLEN = 1000000, XMLNAME = "actualArm", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Agreement to participate in study.
/// <p>
/// Consent
Property consent As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "consent", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ResearchSubject";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ResearchSubject";

Storage Default
{
<Data name="ResearchSubjectDefaultData">
<Subscript>"ResearchSubject"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>period</Value>
</Value>
<Value name="3">
<Value>study</Value>
</Value>
<Value name="4">
<Value>individual</Value>
</Value>
<Value name="5">
<Value>assignedArm</Value>
</Value>
<Value name="6">
<Value>actualArm</Value>
</Value>
<Value name="7">
<Value>consent</Value>
</Value>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ResearchSubject.identifier"</Subscript>
</Data>
<DefaultData>ResearchSubjectDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
