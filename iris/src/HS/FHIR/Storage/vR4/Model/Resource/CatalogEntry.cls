/// An entry in a catalog.
Class HS.FHIR.Storage.vR4.Model.Resource.CatalogEntry Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Unique identifier of the catalog item.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The type of item - medication, 
/// device, 
/// service, 
/// protocol or other.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether the entry represents an orderable item.
Property orderable As %Boolean(XMLNAME = "orderable", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// The item that is being defined.
/// <p>
/// Medication | Device | Organization | Practitioner | PractitionerRole | HealthcareService | ActivityDefinition | PlanDefinition | SpecimenDefinition | ObservationDefinition | Binary
Property referencedItem As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "referencedItem", XMLPROJECTION = "ELEMENT") [ Required ];

/// Identifier
/// <p>
/// Any additional identifier(s) for the catalog item, 
/// in the same granularity or concept.
Property additionalIdentifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "additionalIdentifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Classification (category or class) of the item entry.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property classification As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "classification", XMLPROJECTION = "ELEMENT");

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
Property validityPeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "validityPeriod", XMLPROJECTION = "ELEMENT");

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
Property additionalCharacteristic As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "additionalCharacteristic", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Additional classification of the catalog entry.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property additionalClassification As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "additionalClassification", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// An item that this catalog entry is related to.
Property relatedEntry As array Of HS.FHIR.Storage.vR4.Model.Element.CatalogEntry.relatedEntry(XMLNAME = "relatedEntry", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CatalogEntry";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CatalogEntry";

Storage Default
{
<Data name="CatalogEntryDefaultData">
<Subscript>"CatalogEntry"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>orderable</Value>
</Value>
<Value name="3">
<Value>referencedItem</Value>
</Value>
<Value name="4">
<Value>status</Value>
</Value>
<Value name="5">
<Value>validityPeriod</Value>
</Value>
<Value name="6">
<Value>validTo</Value>
</Value>
<Value name="7">
<Value>lastUpdated</Value>
</Value>
</Data>
<Data name="additionalCharacteristic">
<Attribute>additionalCharacteristic</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CatalogEntry.additionalCharacteristic"</Subscript>
</Data>
<Data name="additionalClassification">
<Attribute>additionalClassification</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CatalogEntry.additionalClassification"</Subscript>
</Data>
<Data name="additionalIdentifier">
<Attribute>additionalIdentifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CatalogEntry.additionalIdentifier"</Subscript>
</Data>
<Data name="classification">
<Attribute>classification</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CatalogEntry.classification"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CatalogEntry.identifier"</Subscript>
</Data>
<Data name="relatedEntry">
<Attribute>relatedEntry</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.CatalogEntry.relatedEntry"</Subscript>
</Data>
<DefaultData>CatalogEntryDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
