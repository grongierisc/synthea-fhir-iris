/// Delivery of bulk Supplies.
Class HS.FHIR.Storage.vR4.Model.Resource.SupplyDelivery Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External identifier.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Fulfills plan, 
/// proposal or order.
/// <p>
/// SupplyRequest
Property basedOn As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Part of referenced event.
/// <p>
/// SupplyDelivery | Contract
Property partOf As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// in-progress | completed | abandoned | entered-in-error
/// <p>
/// supplydelivery-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend supplydelivery-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Patient for whom the item is supplied.
/// <p>
/// Patient
Property patient As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Category of dispense event.
/// <p>
/// supplydelivery-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend supplydelivery-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The item that is delivered or supplied.
Property suppliedItem As HS.FHIR.Storage.vR4.Model.Element.SupplyDelivery.suppliedItem(XMLNAME = "suppliedItem", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When event occurred.
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When event occurred.
Property occurrencePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "occurrencePeriod", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// When event occurred.
Property occurrenceTiming As HS.FHIR.Storage.vR4.Model.Datatype.Timing(XMLNAME = "occurrenceTiming", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Dispenser.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property supplier As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "supplier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where the Supply was sent.
/// <p>
/// Location
Property destination As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "destination", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who collected the Supply.
/// <p>
/// Practitioner | PractitionerRole
Property receiver As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "receiver", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SupplyDelivery";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SupplyDelivery";

Storage Default
{
<Data name="SupplyDeliveryDefaultData">
<Subscript>"SupplyDelivery"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>patient</Value>
</Value>
<Value name="3">
<Value>type</Value>
</Value>
<Value name="4">
<Value>suppliedItem</Value>
</Value>
<Value name="5">
<Value>occurrenceDateTime</Value>
</Value>
<Value name="6">
<Value>occurrencePeriod</Value>
</Value>
<Value name="7">
<Value>occurrenceTiming</Value>
</Value>
<Value name="8">
<Value>supplier</Value>
</Value>
<Value name="9">
<Value>destination</Value>
</Value>
</Data>
<Data name="basedOn">
<Attribute>basedOn</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SupplyDelivery.basedOn"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SupplyDelivery.identifier"</Subscript>
</Data>
<Data name="partOf">
<Attribute>partOf</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SupplyDelivery.partOf"</Subscript>
</Data>
<Data name="receiver">
<Attribute>receiver</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.SupplyDelivery.receiver"</Subscript>
</Data>
<DefaultData>SupplyDeliveryDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
