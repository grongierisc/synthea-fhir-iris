/// Sample for analysis.
Class HS.FHIR.vR4.Model.Resource.Specimen Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External Identifier.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Identifier assigned by the lab.
Property accessionIdentifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "accessionIdentifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// available | unavailable | unsatisfactory | entered-in-error
/// <p>
/// specimen-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend specimen-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Kind of material that forms the specimen.
/// <p>
/// any FHIR4 code may be used; 
/// v2-0487 shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where the specimen came from. 
/// This may be from patient(s), 
/// from a location (e.g., 
/// the source of an environmental sample), 
/// or a sampling of a substance or a device.
/// <p>
/// Patient | Group | Device | Substance | Location
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// The time when specimen was received for processing.
Property receivedTime As %String(MAXLEN = 1000000, XMLNAME = "receivedTime", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Specimen from which this specimen originated.
/// <p>
/// Specimen
Property parent As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "parent", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why the specimen was collected.
/// <p>
/// ServiceRequest
Property request As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "request", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Collection details.
Property collection As HS.FHIR.vR4.Model.Element.Specimen.collection(XMLNAME = "collection", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Processing and processing step details.
Property processing As List Of HS.FHIR.vR4.Model.Element.Specimen.processing(XMLNAME = "processing", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Direct container of specimen (tube/slide, 
/// etc.)
Property container As List Of HS.FHIR.vR4.Model.Element.Specimen.container(XMLNAME = "container", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// State of the specimen.
/// <p>
/// v2-0493 is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in v2-0493, 
/// you may formally EXTEND v2-0493 to add codes to it.
Property condition As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "condition", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Specimen";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Specimen";

}
