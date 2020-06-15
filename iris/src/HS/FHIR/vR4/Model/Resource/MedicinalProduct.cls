/// Detailed definition of a medicinal product, 
/// typically for uses other than direct patient care (e.g. 
/// regulatory use)
Class HS.FHIR.vR4.Model.Resource.MedicinalProduct Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business identifier for this product. 
/// Could be an MPID.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Regulatory type, 
/// e.g. 
/// Investigational or Authorized.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// If this medicine applies to human or veterinary uses.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property domain As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "domain", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The dose form for a single part product, 
/// or combined form of a multiple part product.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property combinedPharmaceuticalDoseForm As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "combinedPharmaceuticalDoseForm", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The legal status of supply of the medicinal product as classified by the regulator.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property legalStatusOfSupply As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "legalStatusOfSupply", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Whether the Medicinal Product is subject to additional monitoring for regulatory reasons.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property additionalMonitoringIndicator As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "additionalMonitoringIndicator", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Whether the Medicinal Product is subject to special measures for regulatory reasons.
Property specialMeasures As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "specialMeasures", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// If authorised for use in children.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property paediatricUseIndicator As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "paediatricUseIndicator", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Allows the product to be classified by various systems.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property productClassification As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "productClassification", XMLPROJECTION = "ELEMENT");

/// MarketingStatus
/// <p>
/// Marketing status of the medicinal product, 
/// in contrast to marketing authorizaton.
Property marketingStatus As List Of HS.FHIR.vR4.Model.Datatype.MarketingStatus(XMLNAME = "marketingStatus", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Pharmaceutical aspects of product.
/// <p>
/// MedicinalProductPharmaceutical
Property pharmaceuticalProduct As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "pharmaceuticalProduct", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Package representation for the product.
/// <p>
/// MedicinalProductPackaged
Property packagedMedicinalProduct As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "packagedMedicinalProduct", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Supporting documentation, 
/// typically for regulatory submission.
/// <p>
/// DocumentReference
Property attachedDocument As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "attachedDocument", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// A master file for to the medicinal product (e.g. 
/// Pharmacovigilance System Master File)
/// <p>
/// DocumentReference
Property masterFile As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "masterFile", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// A product specific contact, 
/// person (in a role), 
/// or an organization.
/// <p>
/// Organization | PractitionerRole
Property contact As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Clinical trials or studies that this product is involved in.
/// <p>
/// ResearchStudy
Property clinicalTrial As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "clinicalTrial", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The product's name, 
/// including full name and possibly coded parts.
Property name As List Of HS.FHIR.vR4.Model.Element.MedicinalProduct.name(XMLNAME = "name", XMLPROJECTION = "ELEMENT") [ Required ];

/// Identifier
/// <p>
/// Reference to another product, 
/// e.g. 
/// for linking authorised to investigational product.
Property crossReference As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "crossReference", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// An operation applied to the product, 
/// for manufacturing or adminsitrative purpose.
Property manufacturingBusinessOperation As List Of HS.FHIR.vR4.Model.Element.MedicinalProduct.manufacturingBusinessOperation(XMLNAME = "manufacturingBusinessOperation", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Indicates if the medicinal product has an orphan designation for the treatment of a rare disease.
Property specialDesignation As List Of HS.FHIR.vR4.Model.Element.MedicinalProduct.specialDesignation(XMLNAME = "specialDesignation", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProduct";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProduct";

}
