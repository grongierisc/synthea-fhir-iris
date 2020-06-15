/// The marketing status describes the date when a medicinal product is actually put on the market or the date as of which it is no longer available.
Class HS.FHIR.vR4.Model.Datatype.MarketingStatus Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The country in which the marketing authorisation has been granted shall be specified It should be specified using the ISO 3166 ? 1 alpha-2 code elements.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property country As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "country", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Where a Medicines Regulatory Agency has granted a marketing authorisation for which specific provisions within a jurisdiction apply, 
/// the jurisdiction can be specified using an appropriate controlled terminology The controlled term and the controlled term identifier shall be specified.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property jurisdiction As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// This attribute provides information on the status of the marketing of the medicinal product See ISO/TS 20443 for more information and examples.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property status As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT") [ Required ];

/// Period
/// <p>
/// The date when the Medicinal Product is placed on the market by the Marketing Authorisation Holder (or where applicable, 
/// the manufacturer/distributor) in a country and/or jurisdiction shall be provided A complete date consisting of day, 
/// month and year shall be specified using the ISO 8601 date format NOTE ?Placed on the market? refers to the release of the Medicinal Product into the distribution chain.
Property dateRange As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "dateRange", XMLPROJECTION = "ELEMENT") [ Required ];

/// dateTime
/// <p>
/// The date when the Medicinal Product is placed on the market by the Marketing Authorisation Holder (or where applicable, 
/// the manufacturer/distributor) in a country and/or jurisdiction shall be provided A complete date consisting of day, 
/// month and year shall be specified using the ISO 8601 date format NOTE ?Placed on the market? refers to the release of the Medicinal Product into the distribution chain.
Property restoreDate As %String(MAXLEN = 1000000, XMLNAME = "restoreDate", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "HS.FHIR.vR4.Model.Datatype.MarketingStatus";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "HS.FHIR.vR4.Model.Datatype.MarketingStatus";

}
