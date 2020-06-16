/// Information about a biological sequence.
Class HS.FHIR.Storage.vR4.Model.Resource.MolecularSequence Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Unique ID for this particular sequence. 
/// This is a FHIR-defined id.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// aa | dna | rna
/// <p>
/// sequence-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend sequence-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Base number of coordinate system (0 for 0-based numbering or coordinates, 
/// inclusive start, 
/// exclusive end, 
/// 1 for 1-based numbering, 
/// inclusive start, 
/// inclusive end)
Property coordinateSystem As %Integer(XMLNAME = "coordinateSystem", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Who and/or what this is about.
/// <p>
/// Patient
Property patient As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Specimen used for sequencing.
/// <p>
/// Specimen
Property specimen As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "specimen", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The method for sequencing.
/// <p>
/// Device
Property device As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "device", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who should be responsible for test result.
/// <p>
/// Organization
Property performer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// The number of copies of the sequence of interest. 
///  (RNASeq)
Property quantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A sequence used as reference.
Property referenceSeq As HS.FHIR.Storage.vR4.Model.Element.MolecularSequence.referenceSeq(XMLNAME = "referenceSeq", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Variant in sequence.
Property variant As array Of HS.FHIR.Storage.vR4.Model.Element.MolecularSequence.variant(XMLNAME = "variant", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Sequence that was observed.
Property observedSeq As %String(MAXLEN = 1000000, XMLNAME = "observedSeq", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// An set of value as quality of sequence.
Property quality As array Of HS.FHIR.Storage.vR4.Model.Element.MolecularSequence.quality(XMLNAME = "quality", XMLPROJECTION = "ELEMENT");

/// integer
/// <p>
/// Average number of reads representing a given nucleotide in the reconstructed sequence.
Property readCoverage As %Integer(XMLNAME = "readCoverage", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// External repository which contains detailed report related with observedSeq in this resource.
Property repository As array Of HS.FHIR.Storage.vR4.Model.Element.MolecularSequence.repository(XMLNAME = "repository", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Pointer to next atomic sequence.
/// <p>
/// MolecularSequence
Property pointer As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "pointer", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Structural variant.
Property structureVariant As array Of HS.FHIR.Storage.vR4.Model.Element.MolecularSequence.structureVariant(XMLNAME = "structureVariant", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MolecularSequence";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MolecularSequence";

Storage Default
{
<Data name="MolecularSequenceDefaultData">
<Subscript>"MolecularSequence"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>coordinateSystem</Value>
</Value>
<Value name="3">
<Value>patient</Value>
</Value>
<Value name="4">
<Value>specimen</Value>
</Value>
<Value name="5">
<Value>device</Value>
</Value>
<Value name="6">
<Value>performer</Value>
</Value>
<Value name="7">
<Value>quantity</Value>
</Value>
<Value name="8">
<Value>referenceSeq</Value>
</Value>
<Value name="9">
<Value>observedSeq</Value>
</Value>
<Value name="10">
<Value>readCoverage</Value>
</Value>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MolecularSequence.identifier"</Subscript>
</Data>
<Data name="pointer">
<Attribute>pointer</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MolecularSequence.pointer"</Subscript>
</Data>
<Data name="quality">
<Attribute>quality</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MolecularSequence.quality"</Subscript>
</Data>
<Data name="repository">
<Attribute>repository</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MolecularSequence.repository"</Subscript>
</Data>
<Data name="structureVariant">
<Attribute>structureVariant</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MolecularSequence.structureVariant"</Subscript>
</Data>
<Data name="variant">
<Attribute>variant</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MolecularSequence.variant"</Subscript>
</Data>
<DefaultData>MolecularSequenceDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
