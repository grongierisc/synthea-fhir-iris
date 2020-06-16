/// A sequence used as reference.
Class HS.FHIR.Storage.vR4.Model.Element.MolecularSequence.referenceSeq Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Chromosome containing genetic finding.
/// <p>
/// any FHIR4 code may be used; 
/// chromosome-human shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property chromosome As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "chromosome", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The Genome Build used for reference, 
/// following GRCh build versions e.g. 
/// 'GRCh 37'
Property genomeBuild As %String(MAXLEN = 1000000, XMLNAME = "genomeBuild", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// sense | antisense
/// <p>
/// orientation-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend orientation-type|4.0.1 and you may NOT use codes from other ValueSets.
Property orientation As %String(MAXLEN = 1000000, XMLNAME = "orientation", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Reference identifier.
/// <p>
/// any FHIR4 code may be used; 
/// sequence-referenceSeq shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property referenceSeqId As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "referenceSeqId", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// A pointer to another MolecularSequence entity as reference sequence.
/// <p>
/// MolecularSequence
Property referenceSeqPointer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "referenceSeqPointer", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// A string to represent reference sequence.
Property referenceSeqString As %String(MAXLEN = 1000000, XMLNAME = "referenceSeqString", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// watson | crick
/// <p>
/// strand-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend strand-type|4.0.1 and you may NOT use codes from other ValueSets.
Property strand As %String(MAXLEN = 1000000, XMLNAME = "strand", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Start position of the window on the  reference sequence.
Property windowStart As %Integer(XMLNAME = "windowStart", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// End position of the window on the reference sequence.
Property windowEnd As %Integer(XMLNAME = "windowEnd", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MolecularSequence.referenceSeq";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MolecularSequence.referenceSeq";

Storage Default
{
<Data name="referenceSeqDefaultData">
<Subscript>"referenceSeq"</Subscript>
<Value name="1">
<Value>chromosome</Value>
</Value>
<Value name="2">
<Value>genomeBuild</Value>
</Value>
<Value name="3">
<Value>orientation</Value>
</Value>
<Value name="4">
<Value>referenceSeqId</Value>
</Value>
<Value name="5">
<Value>referenceSeqPointer</Value>
</Value>
<Value name="6">
<Value>referenceSeqString</Value>
</Value>
<Value name="7">
<Value>strand</Value>
</Value>
<Value name="8">
<Value>windowStart</Value>
</Value>
<Value name="9">
<Value>windowEnd</Value>
</Value>
</Data>
<DefaultData>referenceSeqDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
