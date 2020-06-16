/// Receiver Operator Characteristic (ROC) Curve.
Class HS.FHIR.Storage.vR4.Model.Element.MolecularSequence.quality.roc Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// integer
/// <p>
/// Genotype quality score.
Property score As array Of %Integer(XMLNAME = "score", XMLPROJECTION = "ELEMENT");

/// integer
/// <p>
/// Roc score true positive numbers.
Property numTP As array Of %Integer(XMLNAME = "numTP", XMLPROJECTION = "ELEMENT");

/// integer
/// <p>
/// Roc score false positive numbers.
Property numFP As array Of %Integer(XMLNAME = "numFP", XMLPROJECTION = "ELEMENT");

/// integer
/// <p>
/// Roc score false negative numbers.
Property numFN As array Of %Integer(XMLNAME = "numFN", XMLPROJECTION = "ELEMENT");

/// decimal
/// <p>
/// Precision of the GQ score.
Property precision As array Of %Decimal(XMLNAME = "precision", XMLPROJECTION = "ELEMENT");

/// decimal
/// <p>
/// Sensitivity of the GQ score.
Property sensitivity As array Of %Decimal(XMLNAME = "sensitivity", XMLPROJECTION = "ELEMENT");

/// decimal
/// <p>
/// FScore of the GQ score.
Property fMeasure As array Of %Decimal(XMLNAME = "fMeasure", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MolecularSequence.quality.roc";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MolecularSequence.quality.roc";

Storage Default
{
<Data name="fMeasure">
<Attribute>fMeasure</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MolecularSequence.quality.roc.fMeasure"</Subscript>
</Data>
<Data name="numFN">
<Attribute>numFN</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MolecularSequence.quality.roc.numFN"</Subscript>
</Data>
<Data name="numFP">
<Attribute>numFP</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MolecularSequence.quality.roc.numFP"</Subscript>
</Data>
<Data name="numTP">
<Attribute>numTP</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MolecularSequence.quality.roc.numTP"</Subscript>
</Data>
<Data name="precision">
<Attribute>precision</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MolecularSequence.quality.roc.precision"</Subscript>
</Data>
<Data name="score">
<Attribute>score</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MolecularSequence.quality.roc.score"</Subscript>
</Data>
<Data name="sensitivity">
<Attribute>sensitivity</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MolecularSequence.quality.roc.sensitivity"</Subscript>
</Data>
<Type>%Storage.Persistent</Type>
}

}
