/// The regulatory authorization of a medicinal product.
Class HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductAuthorization Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business identifier for the marketing authorization, 
/// as assigned by a regulator.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The medicinal product that is being authorized.
/// <p>
/// MedicinalProduct | MedicinalProductPackaged
Property subject As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The country in which the marketing authorization has been granted.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property country As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "country", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Jurisdiction within a country.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property jurisdiction As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The status of the marketing authorization.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property status As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// The date at which the given status has become applicable.
Property statusDate As %String(MAXLEN = 1000000, XMLNAME = "statusDate", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// The date when a suspended the marketing or the marketing authorization of the product is anticipated to be restored.
Property restoreDate As %String(MAXLEN = 1000000, XMLNAME = "restoreDate", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// The beginning of the time period in which the marketing authorization is in the specific status shall be specified A complete date consisting of day, 
/// month and year shall be specified using the ISO 8601 date format.
Property validityPeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "validityPeriod", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// A period of time after authorization before generic product applicatiosn can be submitted.
Property dataExclusivityPeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "dataExclusivityPeriod", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// The date when the first authorization was granted by a Medicines Regulatory Agency.
Property dateOfFirstAuthorization As %String(MAXLEN = 1000000, XMLNAME = "dateOfFirstAuthorization", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Date of first marketing authorization for a company's new medicinal product in any country in the World.
Property internationalBirthDate As %String(MAXLEN = 1000000, XMLNAME = "internationalBirthDate", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// The legal framework against which this authorization is granted.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property legalBasis As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "legalBasis", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Authorization in areas within a country.
Property jurisdictionalAuthorization As array Of HS.FHIR.Storage.vR4.Model.Element.MedicinalProductAuthorization.jurisdictionalAuthorization(XMLNAME = "jurisdictionalAuthorization", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Marketing Authorization Holder.
/// <p>
/// Organization
Property holder As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "holder", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Medicines Regulatory Agency.
/// <p>
/// Organization
Property regulator As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "regulator", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The regulatory procedure for granting or amending a marketing authorization.
Property procedure As HS.FHIR.Storage.vR4.Model.Element.MedicinalProductAuthorization.procedure(XMLNAME = "procedure", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductAuthorization";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductAuthorization";

Storage Default
{
<Data name="MedicinalProductAuthorizationDefaultData">
<Subscript>"MedicinalProductAuthorization"</Subscript>
<Value name="1">
<Value>subject</Value>
</Value>
<Value name="2">
<Value>status</Value>
</Value>
<Value name="3">
<Value>statusDate</Value>
</Value>
<Value name="4">
<Value>restoreDate</Value>
</Value>
<Value name="5">
<Value>validityPeriod</Value>
</Value>
<Value name="6">
<Value>dataExclusivityPeriod</Value>
</Value>
<Value name="7">
<Value>dateOfFirstAuthorization</Value>
</Value>
<Value name="8">
<Value>internationalBirthDate</Value>
</Value>
<Value name="9">
<Value>legalBasis</Value>
</Value>
<Value name="10">
<Value>holder</Value>
</Value>
<Value name="11">
<Value>regulator</Value>
</Value>
<Value name="12">
<Value>procedure</Value>
</Value>
</Data>
<Data name="country">
<Attribute>country</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductAuthorization.country"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductAuthorization.identifier"</Subscript>
</Data>
<Data name="jurisdiction">
<Attribute>jurisdiction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductAuthorization.jurisdiction"</Subscript>
</Data>
<Data name="jurisdictionalAuthorization">
<Attribute>jurisdictionalAuthorization</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductAuthorization.jurisdictionalAuthorization"</Subscript>
</Data>
<DefaultData>MedicinalProductAuthorizationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
