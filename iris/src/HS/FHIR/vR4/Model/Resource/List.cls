/// A list is a curated collection of resources.
Class HS.FHIR.vR4.Model.Resource.List Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business identifier.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// current | retired | entered-in-error
/// <p>
/// list-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend list-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// working | snapshot | changes
/// <p>
/// list-mode|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend list-mode|4.0.1 and you may NOT use codes from other ValueSets.
Property mode As %String(MAXLEN = 1000000, XMLNAME = "mode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Descriptive name for the list.
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// What the purpose of this list is.
/// <p>
/// any FHIR4 code may be used; 
/// list-example-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// If all resources have the same subject.
/// <p>
/// Patient | Group | Device | Location
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Context in which list created.
/// <p>
/// Encounter
Property encounter As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the list was prepared.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who and/or what defined the list contents (aka Author)
/// <p>
/// Practitioner | PractitionerRole | Patient | Device
Property source As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// What order the list has.
/// <p>
/// list-order is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in list-order, 
/// you may use codes from any ValueSet.
Property orderedBy As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "orderedBy", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments about the list.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Entries in the list.
Property entry As List Of HS.FHIR.vR4.Model.Element.List.entry(XMLNAME = "entry", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Why list is empty.
/// <p>
/// list-empty-reason is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in list-empty-reason, 
/// you may use codes from any ValueSet.
Property emptyReason As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "emptyReason", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "List";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "List";

}
