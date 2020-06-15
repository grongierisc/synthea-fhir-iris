/// Components of total line item price.
Class HS.FHIR.vR4.Model.Element.ChargeItemDefinition.propertyGroup.priceComponent Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// base | surcharge | deduction | discount | tax | informational
/// <p>
/// invoice-priceComponentType|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend invoice-priceComponentType|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Code identifying the specific component.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// decimal
/// <p>
/// Factor used for calculating this component.
Property factor As %Decimal(XMLNAME = "factor", XMLPROJECTION = "ATTRIBUTE");

/// Money
/// <p>
/// Monetary amount associated with this component.
Property amount As HS.FHIR.vR4.Model.Datatype.Money(XMLNAME = "amount", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ChargeItemDefinition.propertyGroup.priceComponent";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ChargeItemDefinition.propertyGroup.priceComponent";

}
