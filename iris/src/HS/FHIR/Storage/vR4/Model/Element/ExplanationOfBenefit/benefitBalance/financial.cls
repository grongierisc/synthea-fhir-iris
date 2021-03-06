/// Benefit Summary.
Class HS.FHIR.Storage.vR4.Model.Element.ExplanationOfBenefit.benefitBalance.financial Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Benefit classification.
/// <p>
/// any FHIR4 code may be used; 
/// benefit-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// Money
/// <p>
/// Benefits allowed.
Property allowedMoney As HS.FHIR.Storage.vR4.Model.Datatype.Money(XMLNAME = "allowedMoney", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Benefits allowed.
Property allowedString As %String(MAXLEN = 1000000, XMLNAME = "allowedString", XMLPROJECTION = "ATTRIBUTE");

/// unsignedInt
/// <p>
/// Benefits allowed.
Property allowedUnsignedInt As %Integer(XMLNAME = "allowedUnsignedInt", XMLPROJECTION = "ATTRIBUTE");

/// Money
/// <p>
/// Benefits used.
Property usedMoney As HS.FHIR.Storage.vR4.Model.Datatype.Money(XMLNAME = "usedMoney", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// Benefits used.
Property usedUnsignedInt As %Integer(XMLNAME = "usedUnsignedInt", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ExplanationOfBenefit.benefitBalance.financial";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ExplanationOfBenefit.benefitBalance.financial";

Storage Default
{
<Data name="financialDefaultData">
<Subscript>"financial"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>allowedMoney</Value>
</Value>
<Value name="3">
<Value>allowedString</Value>
</Value>
<Value name="4">
<Value>allowedUnsignedInt</Value>
</Value>
<Value name="5">
<Value>usedMoney</Value>
</Value>
<Value name="6">
<Value>usedUnsignedInt</Value>
</Value>
</Data>
<DefaultData>financialDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
