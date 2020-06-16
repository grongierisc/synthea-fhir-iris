/// Coverage details.
Class HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.coverage Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of coverage.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// What networks provide coverage.
/// <p>
/// Organization
Property network As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "network", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// List of benefits.
Property benefit As array Of HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.coverage.benefit(XMLNAME = "benefit", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan.coverage";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan.coverage";

Storage Default
{
<Data name="benefit">
<Attribute>benefit</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.coverage.benefit"</Subscript>
</Data>
<Data name="coverageDefaultData">
<Subscript>"coverage"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
</Data>
<Data name="network">
<Attribute>network</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.coverage.network"</Subscript>
</Data>
<DefaultData>coverageDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
