/// Moiety, 
/// for structural modifications.
Class HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.moiety Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Role that the moiety is playing.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property role As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "role", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Identifier by which this moiety substance is known.
Property identifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Textual name for this moiety substance.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Stereochemistry type.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property stereochemistry As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "stereochemistry", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Optical activity type.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property opticalActivity As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "opticalActivity", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Molecular formula.
Property molecularFormula As %String(MAXLEN = 1000000, XMLNAME = "molecularFormula", XMLPROJECTION = "ATTRIBUTE");

/// Quantity
/// <p>
/// Quantitative value for this moiety.
Property amountQuantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "amountQuantity", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Quantitative value for this moiety.
Property amountString As %String(MAXLEN = 1000000, XMLNAME = "amountString", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSpecification.moiety";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSpecification.moiety";

Storage Default
{
<Data name="moietyDefaultData">
<Subscript>"moiety"</Subscript>
<Value name="1">
<Value>role</Value>
</Value>
<Value name="2">
<Value>identifier</Value>
</Value>
<Value name="3">
<Value>name</Value>
</Value>
<Value name="4">
<Value>stereochemistry</Value>
</Value>
<Value name="5">
<Value>opticalActivity</Value>
</Value>
<Value name="6">
<Value>molecularFormula</Value>
</Value>
<Value name="7">
<Value>amountQuantity</Value>
</Value>
<Value name="8">
<Value>amountString</Value>
</Value>
</Data>
<DefaultData>moietyDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
