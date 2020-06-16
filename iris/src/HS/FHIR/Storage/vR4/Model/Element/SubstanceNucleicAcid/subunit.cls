/// Subunits are listed in order of decreasing length; 
/// sequences of the same length will be ordered by molecular weight; 
/// subunits that have identical sequences will be repeated multiple times.
Class HS.FHIR.Storage.vR4.Model.Element.SubstanceNucleicAcid.subunit Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// integer
/// <p>
/// Index of linear sequences of nucleic acids in order of decreasing length. 
/// Sequences of the same length will be ordered by molecular weight. 
/// Subunits that have identical sequences will be repeated and have sequential subscripts.
Property subunit As %Integer(XMLNAME = "subunit", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Actual nucleotide sequence notation from 5' to 3' end using standard single letter codes. 
/// In addition to the base sequence, 
/// sugar and type of phosphate or non-phosphate linkage should also be captured.
Property sequence As %String(MAXLEN = 1000000, XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// The length of the sequence shall be captured.
Property length As %Integer(XMLNAME = "length", XMLPROJECTION = "ATTRIBUTE");

/// Attachment
/// <p>
/// (TBC)
Property sequenceAttachment As HS.FHIR.Storage.vR4.Model.Datatype.Attachment(XMLNAME = "sequenceAttachment", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The nucleotide present at the 5? terminal shall be specified based on a controlled vocabulary. 
/// Since the sequence is represented from the 5' to the 3' end, 
/// the 5? prime nucleotide is the letter at the first position in the sequence. 
/// A separate representation would be redundant.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property fivePrime As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "fivePrime", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The nucleotide present at the 3? terminal shall be specified based on a controlled vocabulary. 
/// Since the sequence is represented from the 5' to the 3' end, 
/// the 5? prime nucleotide is the letter at the last position in the sequence. 
/// A separate representation would be redundant.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property threePrime As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "threePrime", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The linkages between sugar residues will also be captured.
Property linkage As array Of HS.FHIR.Storage.vR4.Model.Element.SubstanceNucleicAcid.subunit.linkage(XMLNAME = "linkage", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// 5.3.6.8.1 Sugar ID (Mandatory)
Property sugar As array Of HS.FHIR.Storage.vR4.Model.Element.SubstanceNucleicAcid.subunit.sugar(XMLNAME = "sugar", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceNucleicAcid.subunit";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceNucleicAcid.subunit";

Storage Default
{
<Data name="linkage">
<Attribute>linkage</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstanceNucleicAcid.subunit.linkage"</Subscript>
</Data>
<Data name="subunitDefaultData">
<Subscript>"subunit"</Subscript>
<Value name="1">
<Value>subunit</Value>
</Value>
<Value name="2">
<Value>sequence</Value>
</Value>
<Value name="3">
<Value>length</Value>
</Value>
<Value name="4">
<Value>sequenceAttachment</Value>
</Value>
<Value name="5">
<Value>fivePrime</Value>
</Value>
<Value name="6">
<Value>threePrime</Value>
</Value>
</Data>
<Data name="sugar">
<Attribute>sugar</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstanceNucleicAcid.subunit.sugar"</Subscript>
</Data>
<DefaultData>subunitDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
