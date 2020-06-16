/// Group of properties which are applicable under the same conditions.
Class HS.FHIR.Storage.vR4.Model.Element.ChargeItemDefinition.propertyGroup Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// ChargeItemDefinition:applicability
/// <p>
/// Conditions under which the priceComponent is applicable.
Property applicability As array Of HS.FHIR.Storage.vR4.Model.Element.ChargeItemDefinition.applicability(XMLNAME = "applicability", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Components of total line item price.
Property priceComponent As array Of HS.FHIR.Storage.vR4.Model.Element.ChargeItemDefinition.propertyGroup.priceComponent(XMLNAME = "priceComponent", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ChargeItemDefinition.propertyGroup";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ChargeItemDefinition.propertyGroup";

Storage Default
{
<Data name="applicability">
<Attribute>applicability</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ChargeItemDefinition.propertyGroup.applicability"</Subscript>
</Data>
<Data name="priceComponent">
<Attribute>priceComponent</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ChargeItemDefinition.propertyGroup.priceComponent"</Subscript>
</Data>
<Type>%Storage.Persistent</Type>
}

}
