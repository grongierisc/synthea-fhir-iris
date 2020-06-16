/// Sample for analysis.
Class HS.FHIR.Storage.vR4.Model.Resource.Specimen Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External Identifier.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Identifier assigned by the lab.
Property accessionIdentifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "accessionIdentifier", XMLPROJECTION = "ELEMENT");

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
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where the specimen came from. 
/// This may be from patient(s), 
/// from a location (e.g., 
/// the source of an environmental sample), 
/// or a sampling of a substance or a device.
/// <p>
/// Patient | Group | Device | Substance | Location
Property subject As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// The time when specimen was received for processing.
Property receivedTime As %String(MAXLEN = 1000000, XMLNAME = "receivedTime", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Specimen from which this specimen originated.
/// <p>
/// Specimen
Property parent As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "parent", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why the specimen was collected.
/// <p>
/// ServiceRequest
Property request As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "request", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Collection details.
Property collection As HS.FHIR.Storage.vR4.Model.Element.Specimen.collection(XMLNAME = "collection", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Processing and processing step details.
Property processing As array Of HS.FHIR.Storage.vR4.Model.Element.Specimen.processing(XMLNAME = "processing", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Direct container of specimen (tube/slide, 
/// etc.)
Property container As array Of HS.FHIR.Storage.vR4.Model.Element.Specimen.container(XMLNAME = "container", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// State of the specimen.
/// <p>
/// v2-0493 is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in v2-0493, 
/// you may formally EXTEND v2-0493 to add codes to it.
Property condition As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "condition", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments.
Property note As array Of HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Specimen";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Specimen";

Storage Default
{
<Data name="SpecimenDefaultData">
<Subscript>"Specimen"</Subscript>
<Value name="1">
<Value>accessionIdentifier</Value>
</Value>
<Value name="2">
<Value>status</Value>
</Value>
<Value name="3">
<Value>type</Value>
</Value>
<Value name="4">
<Value>subject</Value>
</Value>
<Value name="5">
<Value>receivedTime</Value>
</Value>
<Value name="6">
<Value>collection</Value>
</Value>
</Data>
<Data name="condition">
<Attribute>condition</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Specimen.condition"</Subscript>
</Data>
<Data name="container">
<Attribute>container</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Specimen.container"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Specimen.identifier"</Subscript>
</Data>
<Data name="note">
<Attribute>note</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Specimen.note"</Subscript>
</Data>
<Data name="parent">
<Attribute>parent</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Specimen.parent"</Subscript>
</Data>
<Data name="processing">
<Attribute>processing</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Specimen.processing"</Subscript>
</Data>
<Data name="request">
<Attribute>request</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Specimen.request"</Subscript>
</Data>
<DefaultData>SpecimenDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
