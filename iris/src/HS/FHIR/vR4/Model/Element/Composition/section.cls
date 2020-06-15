/// Composition is broken into sections.
Class HS.FHIR.vR4.Model.Element.Composition.section Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Label for section (e.g. 
/// for ToC)
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Classification of section (recommended)
/// <p>
/// any FHIR4 code may be used; 
/// doc-section-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who and/or what authored the section.
/// <p>
/// Practitioner | PractitionerRole | Device | Patient | RelatedPerson | Organization
Property author As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who/what the section is about, 
/// when it is not about the subject of composition.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property focus As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "focus", XMLPROJECTION = "ELEMENT");

/// Narrative
/// <p>
/// Text summary of the section, 
/// for human interpretation.
Property text As HS.FHIR.vR4.Model.Base.Narrative(XMLNAME = "text", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// working | snapshot | changes
/// <p>
/// list-mode|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend list-mode|4.0.1 and you may NOT use codes from other ValueSets.
Property mode As %String(MAXLEN = 1000000, XMLNAME = "mode", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Order of section entries.
/// <p>
/// list-order is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in list-order, 
/// you may use codes from any ValueSet.
Property orderedBy As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "orderedBy", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// A reference to data that supports this section.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property entry As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "entry", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Why the section is empty.
/// <p>
/// list-empty-reason is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in list-empty-reason, 
/// you may use codes from any ValueSet.
Property emptyReason As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "emptyReason", XMLPROJECTION = "ELEMENT");

/// Composition:section
/// <p>
/// Nested Section.
Property section As List Of HS.FHIR.vR4.Model.Element.Composition.section(XMLNAME = "section", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Composition.section";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Composition.section";

}
