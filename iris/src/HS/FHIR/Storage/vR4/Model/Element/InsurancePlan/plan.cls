/// Plan details.
Class HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.plan Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier for Product.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Type of plan.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where product applies.
/// <p>
/// Location
Property coverageArea As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "coverageArea", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// What networks provide coverage.
/// <p>
/// Organization
Property network As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "network", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Overall costs.
Property generalCost As array Of HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.plan.generalCost(XMLNAME = "generalCost", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Specific costs.
Property specificCost As array Of HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.plan.specificCost(XMLNAME = "specificCost", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan.plan";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan.plan";

Storage Default
{
<Data name="coverageArea">
<Attribute>coverageArea</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.plan.coverageArea"</Subscript>
</Data>
<Data name="generalCost">
<Attribute>generalCost</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.plan.generalCost"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.plan.identifier"</Subscript>
</Data>
<Data name="network">
<Attribute>network</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.plan.network"</Subscript>
</Data>
<Data name="planDefaultData">
<Subscript>"plan"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
</Data>
<Data name="specificCost">
<Attribute>specificCost</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.plan.specificCost"</Subscript>
</Data>
<DefaultData>planDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
