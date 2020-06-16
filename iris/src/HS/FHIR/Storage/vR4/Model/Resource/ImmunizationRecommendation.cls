/// Guidance or advice relating to an immunization.
Class HS.FHIR.Storage.vR4.Model.Resource.ImmunizationRecommendation Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business identifier.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who this profile is for.
/// <p>
/// Patient
Property patient As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];

/// dateTime
/// <p>
/// Date recommendation(s) created.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Who is responsible for protocol.
/// <p>
/// Organization
Property authority As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "authority", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Vaccine administration recommendations.
Property recommendation As array Of HS.FHIR.Storage.vR4.Model.Element.ImmunizationRecommendation.recommendation(XMLNAME = "recommendation", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImmunizationRecommendation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImmunizationRecommendation";

Storage Default
{
<Data name="ImmunizationRecommendationDefaultData">
<Subscript>"ImmunizationRecommendation"</Subscript>
<Value name="1">
<Value>patient</Value>
</Value>
<Value name="2">
<Value>date</Value>
</Value>
<Value name="3">
<Value>authority</Value>
</Value>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ImmunizationRecommendation.identifier"</Subscript>
</Data>
<Data name="recommendation">
<Attribute>recommendation</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ImmunizationRecommendation.recommendation"</Subscript>
</Data>
<DefaultData>ImmunizationRecommendationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
