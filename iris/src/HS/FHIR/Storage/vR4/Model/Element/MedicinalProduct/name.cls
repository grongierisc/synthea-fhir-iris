/// The product's name, 
/// including full name and possibly coded parts.
Class HS.FHIR.Storage.vR4.Model.Element.MedicinalProduct.name Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// The full product name.
Property productName As %String(MAXLEN = 1000000, XMLNAME = "productName", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// BackboneElement
/// <p>
/// Coding words or phrases of the name.
Property namePart As array Of HS.FHIR.Storage.vR4.Model.Element.MedicinalProduct.name.namePart(XMLNAME = "namePart", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Country where the name applies.
Property countryLanguage As array Of HS.FHIR.Storage.vR4.Model.Element.MedicinalProduct.name.countryLanguage(XMLNAME = "countryLanguage", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProduct.name";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProduct.name";

Storage Default
{
<Data name="countryLanguage">
<Attribute>countryLanguage</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicinalProduct.name.countryLanguage"</Subscript>
</Data>
<Data name="nameDefaultData">
<Subscript>"name"</Subscript>
<Value name="1">
<Value>productName</Value>
</Value>
</Data>
<Data name="namePart">
<Attribute>namePart</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicinalProduct.name.namePart"</Subscript>
</Data>
<DefaultData>nameDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
