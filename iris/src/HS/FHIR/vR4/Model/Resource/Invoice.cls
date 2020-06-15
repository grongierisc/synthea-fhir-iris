/// Invoice containing ChargeItems from an Account.
Class HS.FHIR.vR4.Model.Resource.Invoice Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier for item.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// draft | issued | balanced | cancelled | entered-in-error
/// <p>
/// invoice-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend invoice-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Reason for cancellation of this Invoice.
Property cancelledReason As %String(MAXLEN = 1000000, XMLNAME = "cancelledReason", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Type of Invoice.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Recipient(s) of goods and services.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Recipient of this invoice.
/// <p>
/// Organization | Patient | RelatedPerson
Property recipient As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "recipient", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Invoice date / posting date.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Participant in creation of this Invoice.
Property participant As List Of HS.FHIR.vR4.Model.Element.Invoice.participant(XMLNAME = "participant", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Issuing Organization of Invoice.
/// <p>
/// Organization
Property issuer As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "issuer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Account that is being balanced.
/// <p>
/// Account
Property account As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "account", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Line items of this Invoice.
Property lineItem As List Of HS.FHIR.vR4.Model.Element.Invoice.lineItem(XMLNAME = "lineItem", XMLPROJECTION = "ELEMENT");

/// Invoice:lineItem[n].priceComponent
/// <p>
/// Components of Invoice total.
Property totalPriceComponent As List Of HS.FHIR.vR4.Model.Element.Invoice.lineItem.priceComponent(XMLNAME = "totalPriceComponent", XMLPROJECTION = "ELEMENT");

/// Money
/// <p>
/// Net total of this Invoice.
Property totalNet As HS.FHIR.vR4.Model.Datatype.Money(XMLNAME = "totalNet", XMLPROJECTION = "ELEMENT");

/// Money
/// <p>
/// Gross total of this Invoice.
Property totalGross As HS.FHIR.vR4.Model.Datatype.Money(XMLNAME = "totalGross", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Payment details.
Property paymentTerms As %String(MAXLEN = 1000000, XMLNAME = "paymentTerms", XMLPROJECTION = "ATTRIBUTE");

/// Annotation
/// <p>
/// Comments made about the invoice.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Invoice";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Invoice";

}
