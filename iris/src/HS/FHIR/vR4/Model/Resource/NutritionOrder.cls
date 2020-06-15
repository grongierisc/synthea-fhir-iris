/// Diet, 
/// formula or nutritional supplement request.
Class HS.FHIR.vR4.Model.Resource.NutritionOrder Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Identifiers assigned to this order.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Instantiates FHIR protocol or definition.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property instantiatesCanonical As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "instantiatesCanonical", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Instantiates external protocol or definition.
Property instantiatesUri As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "instantiatesUri", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Instantiates protocol or definition.
Property instantiates As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "instantiates", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// draft | active | on-hold | revoked | completed | entered-in-error | unknown
/// <p>
/// request-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option
/// <p>
/// request-intent|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend request-intent|4.0.1 and you may NOT use codes from other ValueSets.
Property intent As %String(MAXLEN = 1000000, XMLNAME = "intent", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// The person who requires the diet, 
/// formula or nutritional supplement.
/// <p>
/// Patient
Property patient As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// The encounter associated with this nutrition order.
/// <p>
/// Encounter
Property encounter As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Date and time the nutrition order was requested.
Property dateTime As %String(MAXLEN = 1000000, XMLNAME = "dateTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Who ordered the diet, 
/// formula or nutritional supplement.
/// <p>
/// Practitioner | PractitionerRole
Property orderer As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "orderer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// List of the patient's food and nutrition-related allergies and intolerances.
/// <p>
/// AllergyIntolerance
Property allergyIntolerance As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "allergyIntolerance", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Order-specific modifier about the type of food that should be given.
/// <p>
/// any FHIR4 code may be used; 
/// encounter-diet shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property foodPreferenceModifier As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "foodPreferenceModifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Order-specific modifier about the type of food that should not be given.
/// <p>
/// any FHIR4 code may be used; 
/// food-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property excludeFoodModifier As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "excludeFoodModifier", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Oral diet components.
Property oralDiet As HS.FHIR.vR4.Model.Element.NutritionOrder.oralDiet(XMLNAME = "oralDiet", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Supplement components.
Property supplement As List Of HS.FHIR.vR4.Model.Element.NutritionOrder.supplement(XMLNAME = "supplement", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Enteral formula components.
Property enteralFormula As HS.FHIR.vR4.Model.Element.NutritionOrder.enteralFormula(XMLNAME = "enteralFormula", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NutritionOrder";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NutritionOrder";

}
