/// Authorization in areas within a country.
Class HS.FHIR.vR4.Model.Element.MedicinalProductAuthorization.jurisdictionalAuthorization Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// The assigned number for the marketing authorization.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Country of authorization.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property country As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "country", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Jurisdiction within a country.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property jurisdiction As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The legal status of supply in a jurisdiction or region.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property legalStatusOfSupply As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "legalStatusOfSupply", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// The start and expected end date of the authorization.
Property validityPeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "validityPeriod", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductAuthorization.jurisdictionalAuthorization";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductAuthorization.jurisdictionalAuthorization";

}
