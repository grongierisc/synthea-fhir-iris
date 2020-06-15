/// Page/Section in the Guide.
Class HS.FHIR.vR4.Model.Element.ImplementationGuide.definition.page Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Where to find that page.
/// <p>
/// Binary.
Property nameReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "nameReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// url
/// <p>
/// Where to find that page.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property nameUrl As %String(MAXLEN = 1000000, XMLNAME = "nameUrl", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Short title shown for navigational assistance.
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// html | markdown | xml | generated
/// <p>
/// guide-page-generation|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend guide-page-generation|4.0.1 and you may NOT use codes from other ValueSets.
Property generation As %String(MAXLEN = 1000000, XMLNAME = "generation", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// ImplementationGuide:definition.page
/// <p>
/// Nested Pages / Sections.
Property page As List Of HS.FHIR.vR4.Model.Element.ImplementationGuide.definition.page(XMLNAME = "page", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImplementationGuide.definition.page";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImplementationGuide.definition.page";

}
