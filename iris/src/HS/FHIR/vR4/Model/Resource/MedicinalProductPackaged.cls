/// A medicinal product in a container or package.
Class HS.FHIR.vR4.Model.Resource.MedicinalProductPackaged Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Unique identifier.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The product with this is a pack for.
/// <p>
/// MedicinalProduct
Property subject As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Textual description.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// The legal status of supply of the medicinal product as classified by the regulator.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property legalStatusOfSupply As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "legalStatusOfSupply", XMLPROJECTION = "ELEMENT");

/// MarketingStatus
/// <p>
/// Marketing information.
Property marketingStatus As List Of HS.FHIR.vR4.Model.Datatype.MarketingStatus(XMLNAME = "marketingStatus", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Manufacturer of this Package Item.
/// <p>
/// MedicinalProductAuthorization
Property marketingAuthorization As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "marketingAuthorization", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Manufacturer of this Package Item.
/// <p>
/// Organization
Property manufacturer As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "manufacturer", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Batch numbering.
Property batchIdentifier As List Of HS.FHIR.vR4.Model.Element.MedicinalProductPackaged.batchIdentifier(XMLNAME = "batchIdentifier", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A packaging item, 
/// as a contained for medicine, 
/// possibly with other packaging items within.
Property packageItem As List Of HS.FHIR.vR4.Model.Element.MedicinalProductPackaged.packageItem(XMLNAME = "packageItem", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductPackaged";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductPackaged";

}
