/// Definition of Medication Knowledge.
Class HS.FHIR.vR4.Model.Resource.MedicationKnowledge Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Code that identifies this medication.
/// <p>
/// any FHIR4 code may be used; 
/// medication-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | inactive | entered-in-error
/// <p>
/// medicationknowledge-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend medicationknowledge-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Manufacturer of the item.
/// <p>
/// Organization
Property manufacturer As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "manufacturer", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// powder | tablets | capsule +
/// <p>
/// any FHIR4 code may be used; 
/// medication-form-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property doseForm As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "doseForm", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Amount of drug in package.
Property amount As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "amount", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Additional names for a medication.
Property synonym As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "synonym", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Associated or related medication information.
Property relatedMedicationKnowledge As List Of HS.FHIR.vR4.Model.Element.MedicationKnowledge.relatedMedicationKnowledge(XMLNAME = "relatedMedicationKnowledge", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// A medication resource that is associated with this medication.
/// <p>
/// Medication
Property associatedMedication As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "associatedMedication", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Category of the medication or product.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property productType As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "productType", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Associated documentation about the medication.
Property monograph As List Of HS.FHIR.vR4.Model.Element.MedicationKnowledge.monograph(XMLNAME = "monograph", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Active or inactive ingredient.
Property ingredient As List Of HS.FHIR.vR4.Model.Element.MedicationKnowledge.ingredient(XMLNAME = "ingredient", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// The instructions for preparing the medication.
Property preparationInstruction As %String(MAXLEN = 1000000, XMLNAME = "preparationInstruction", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// The intended or approved route of administration.
/// <p>
/// any FHIR4 code may be used; 
/// route-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property intendedRoute As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "intendedRoute", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The pricing of the medication.
Property cost As List Of HS.FHIR.vR4.Model.Element.MedicationKnowledge.cost(XMLNAME = "cost", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Program under which a medication is reviewed.
Property monitoringProgram As List Of HS.FHIR.vR4.Model.Element.MedicationKnowledge.monitoringProgram(XMLNAME = "monitoringProgram", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Guidelines for administration of the medication.
Property administrationGuidelines As List Of HS.FHIR.vR4.Model.Element.MedicationKnowledge.administrationGuidelines(XMLNAME = "administrationGuidelines", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Categorization of the medication within a formulary or classification system.
Property medicineClassification As List Of HS.FHIR.vR4.Model.Element.MedicationKnowledge.medicineClassification(XMLNAME = "medicineClassification", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Details about packaged medications.
Property packaging As HS.FHIR.vR4.Model.Element.MedicationKnowledge.packaging(XMLNAME = "packaging", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Specifies descriptive properties of the medicine.
Property drugCharacteristic As List Of HS.FHIR.vR4.Model.Element.MedicationKnowledge.drugCharacteristic(XMLNAME = "drugCharacteristic", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Potential clinical issue with or between medication(s)
/// <p>
/// DetectedIssue
Property contraindication As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "contraindication", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Regulatory information about a medication.
Property regulatory As List Of HS.FHIR.vR4.Model.Element.MedicationKnowledge.regulatory(XMLNAME = "regulatory", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The time course of drug absorption, 
/// distribution, 
/// metabolism and excretion of a medication from the body.
Property kinetics As List Of HS.FHIR.vR4.Model.Element.MedicationKnowledge.kinetics(XMLNAME = "kinetics", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge";

}
