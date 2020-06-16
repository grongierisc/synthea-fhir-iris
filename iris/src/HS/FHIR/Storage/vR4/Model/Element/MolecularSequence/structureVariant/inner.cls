/// Structural variant inner.
Class HS.FHIR.Storage.vR4.Model.Element.MolecularSequence.structureVariant.inner Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// integer
/// <p>
/// Structural variant inner start.
Property start As %Integer(XMLNAME = "start", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Structural variant inner end.
Property end As %Integer(XMLNAME = "end", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MolecularSequence.structureVariant.inner";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MolecularSequence.structureVariant.inner";

Storage Default
{
<Data name="innerDefaultData">
<Subscript>"inner"</Subscript>
<Value name="1">
<Value>start</Value>
</Value>
<Value name="2">
<Value>end</Value>
</Value>
</Data>
<DefaultData>innerDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
