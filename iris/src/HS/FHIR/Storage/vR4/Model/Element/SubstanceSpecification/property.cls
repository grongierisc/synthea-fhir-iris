/// General specifications for this substance, 
/// including how it is related to other substances.
Class HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.property Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// A category for this property, 
/// e.g. 
/// Physical, 
/// Chemical, 
/// Enzymatic.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property category As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Property type e.g. 
/// viscosity, 
/// pH, 
/// isoelectric point.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Parameters that were used in the measurement of a property (e.g. 
/// for viscosity: measured at 20C with a pH of 7.1)
Property parameters As %String(MAXLEN = 1000000, XMLNAME = "parameters", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// A substance upon which a defining property depends (e.g. 
/// for solubility: in water, 
/// in alcohol)
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property definingSubstanceCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "definingSubstanceCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// A substance upon which a defining property depends (e.g. 
/// for solubility: in water, 
/// in alcohol)
/// <p>
/// SubstanceSpecification | Substance
Property definingSubstanceReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "definingSubstanceReference", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Quantitative value for this property.
Property amountQuantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "amountQuantity", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Quantitative value for this property.
Property amountString As %String(MAXLEN = 1000000, XMLNAME = "amountString", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSpecification.property";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSpecification.property";

Storage Default
{
<Data name="propertyDefaultData">
<Subscript>"property"</Subscript>
<Value name="1">
<Value>category</Value>
</Value>
<Value name="2">
<Value>code</Value>
</Value>
<Value name="3">
<Value>parameters</Value>
</Value>
<Value name="4">
<Value>definingSubstanceCodeableConcept</Value>
</Value>
<Value name="5">
<Value>definingSubstanceReference</Value>
</Value>
<Value name="6">
<Value>amountQuantity</Value>
</Value>
<Value name="7">
<Value>amountString</Value>
</Value>
</Data>
<DefaultData>propertyDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
