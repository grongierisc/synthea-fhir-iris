/// An entry in a catalog.
Class HS.FHIR.vR4.Model.Resource.CatalogEntry Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Unique identifier of the catalog item.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The type of item - medication, 
/// device, 
/// service, 
/// protocol or other.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether the entry represents an orderable item.
Property orderable As %Boolean(XMLNAME = "orderable", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// The item that is being defined.
/// <p>
/// Medication | Device | Organization | Practitioner | PractitionerRole | HealthcareService | ActivityDefinition | PlanDefinition | SpecimenDefinition | ObservationDefinition | Binary
Property referencedItem As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "referencedItem", XMLPROJECTION = "ELEMENT") [ Required ];

/// Identifier
/// <p>
/// Any additional identifier(s) for the catalog item, 
/// in the same granularity or concept.
Property additionalIdentifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "additionalIdentifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Classification (category or class) of the item entry.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property classification As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "classification", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// draft | active | retired | unknown
/// <p>
/// publication-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend publication-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// The time period in which this catalog entry is expected to be active.
Property validityPeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "validityPeriod", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// The date until which this catalog entry is expected to be active.
Property validTo As %String(MAXLEN = 1000000, XMLNAME = "validTo", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// When was this catalog last updated.
Property lastUpdated As %String(MAXLEN = 1000000, XMLNAME = "lastUpdated", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Additional characteristics of the catalog entry.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property additionalCharacteristic As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "additionalCharacteristic", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Additional classification of the catalog entry.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property additionalClassification As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "additionalClassification", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// An item that this catalog entry is related to.
Property relatedEntry As List Of HS.FHIR.vR4.Model.Element.CatalogEntry.relatedEntry(XMLNAME = "relatedEntry", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CatalogEntry";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CatalogEntry";

}
