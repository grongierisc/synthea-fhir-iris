/// Delivery of bulk Supplies.
Class HS.FHIR.vR4.Model.Resource.SupplyDelivery Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External identifier.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Fulfills plan, 
/// proposal or order.
/// <p>
/// SupplyRequest
Property basedOn As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "basedOn", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Part of referenced event.
/// <p>
/// SupplyDelivery | Contract
Property partOf As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

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
Property patient As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Category of dispense event.
/// <p>
/// supplydelivery-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend supplydelivery-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The item that is delivered or supplied.
Property suppliedItem As HS.FHIR.vR4.Model.Element.SupplyDelivery.suppliedItem(XMLNAME = "suppliedItem", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When event occurred.
Property occurrenceDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurrenceDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When event occurred.
Property occurrencePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "occurrencePeriod", XMLPROJECTION = "ELEMENT");

/// Timing
/// <p>
/// When event occurred.
Property occurrenceTiming As HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "occurrenceTiming", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Dispenser.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property supplier As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "supplier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where the Supply was sent.
/// <p>
/// Location
Property destination As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "destination", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who collected the Supply.
/// <p>
/// Practitioner | PractitionerRole
Property receiver As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "receiver", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SupplyDelivery";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SupplyDelivery";

}
