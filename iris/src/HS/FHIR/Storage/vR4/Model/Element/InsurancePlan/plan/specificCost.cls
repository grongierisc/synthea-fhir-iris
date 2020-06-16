/// Specific costs.
Class HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.plan.specificCost Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// General category of benefit.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property category As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Benefits list.
Property benefit As array Of HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.plan.specificCost.benefit(XMLNAME = "benefit", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "InsurancePlan.plan.specificCost";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "InsurancePlan.plan.specificCost";

Storage Default
{
<Data name="benefit">
<Attribute>benefit</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.InsurancePlan.plan.specificCost.benefit"</Subscript>
</Data>
<Data name="specificCostDefaultData">
<Subscript>"specificCost"</Subscript>
<Value name="1">
<Value>category</Value>
</Value>
</Data>
<DefaultData>specificCostDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
