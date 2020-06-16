/// This subclause refers to the description of each subunit constituting the SubstanceProtein. 
/// A subunit is a linear sequence of amino acids linked through peptide bonds. 
/// The Subunit information shall be provided when the finished SubstanceProtein is a complex of multiple sequences; 
/// subunits are not used to delineate domains within a single sequence. 
/// Subunits are listed in order of decreasing length; 
/// sequences of the same length will be ordered by decreasing molecular weight; 
/// subunits that have identical sequences will be repeated multiple times.
Class HS.FHIR.Storage.vR4.Model.Element.SubstanceProtein.subunit Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// integer
/// <p>
/// Index of primary sequences of amino acids linked through peptide bonds in order of decreasing length. 
/// Sequences of the same length will be ordered by molecular weight. 
/// Subunits that have identical sequences will be repeated and have sequential subscripts.
Property subunit As %Integer(XMLNAME = "subunit", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// The sequence information shall be provided enumerating the amino acids from N- to C-terminal end using standard single-letter amino acid codes. 
/// Uppercase shall be used for L-amino acids and lowercase for D-amino acids. 
/// Transcribed SubstanceProteins will always be described using the translated sequence; 
/// for synthetic peptide containing amino acids that are not represented with a single letter code an X should be used within the sequence. 
/// The modified amino acids will be distinguished by their position in the sequence.
Property sequence As %String(MAXLEN = 1000000, XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Length of linear sequences of amino acids contained in the subunit.
Property length As %Integer(XMLNAME = "length", XMLPROJECTION = "ATTRIBUTE");

/// Attachment
/// <p>
/// The sequence information shall be provided enumerating the amino acids from N- to C-terminal end using standard single-letter amino acid codes. 
/// Uppercase shall be used for L-amino acids and lowercase for D-amino acids. 
/// Transcribed SubstanceProteins will always be described using the translated sequence; 
/// for synthetic peptide containing amino acids that are not represented with a single letter code an X should be used within the sequence. 
/// The modified amino acids will be distinguished by their position in the sequence.
Property sequenceAttachment As HS.FHIR.Storage.vR4.Model.Datatype.Attachment(XMLNAME = "sequenceAttachment", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Unique identifier for molecular fragment modification based on the ISO 11238 Substance ID.
Property nTerminalModificationId As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "nTerminalModificationId", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The name of the fragment modified at the N-terminal of the SubstanceProtein shall be specified.
Property nTerminalModification As %String(MAXLEN = 1000000, XMLNAME = "nTerminalModification", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// Unique identifier for molecular fragment modification based on the ISO 11238 Substance ID.
Property cTerminalModificationId As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "cTerminalModificationId", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The modification at the C-terminal shall be specified.
Property cTerminalModification As %String(MAXLEN = 1000000, XMLNAME = "cTerminalModification", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceProtein.subunit";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceProtein.subunit";

Storage Default
{
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
<Value>nTerminalModificationId</Value>
</Value>
<Value name="6">
<Value>nTerminalModification</Value>
</Value>
<Value name="7">
<Value>cTerminalModificationId</Value>
</Value>
<Value name="8">
<Value>cTerminalModification</Value>
</Value>
</Data>
<DefaultData>subunitDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
