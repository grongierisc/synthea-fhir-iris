/// The product's name, 
/// including full name and possibly coded parts.
Class HS.FHIR.vR4.Model.Element.MedicinalProduct.name Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// The full product name.
Property productName As %String(MAXLEN = 1000000, XMLNAME = "productName", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// BackboneElement
/// <p>
/// Coding words or phrases of the name.
Property namePart As List Of HS.FHIR.vR4.Model.Element.MedicinalProduct.name.namePart(XMLNAME = "namePart", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Country where the name applies.
Property countryLanguage As List Of HS.FHIR.vR4.Model.Element.MedicinalProduct.name.countryLanguage(XMLNAME = "countryLanguage", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProduct.name";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProduct.name";

}
