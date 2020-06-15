/// Receiver Operator Characteristic (ROC) Curve.
Class HS.FHIR.vR4.Model.Element.MolecularSequence.quality.roc Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// integer
/// <p>
/// Genotype quality score.
Property score As list Of %Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "score", XMLPROJECTION = "ELEMENT");

/// integer
/// <p>
/// Roc score true positive numbers.
Property numTP As list Of %Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "numTP", XMLPROJECTION = "ELEMENT");

/// integer
/// <p>
/// Roc score false positive numbers.
Property numFP As list Of %Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "numFP", XMLPROJECTION = "ELEMENT");

/// integer
/// <p>
/// Roc score false negative numbers.
Property numFN As list Of %Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "numFN", XMLPROJECTION = "ELEMENT");

/// decimal
/// <p>
/// Precision of the GQ score.
Property precision As list Of %Decimal(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "precision", XMLPROJECTION = "ELEMENT");

/// decimal
/// <p>
/// Sensitivity of the GQ score.
Property sensitivity As list Of %Decimal(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "sensitivity", XMLPROJECTION = "ELEMENT");

/// decimal
/// <p>
/// FScore of the GQ score.
Property fMeasure As list Of %Decimal(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "fMeasure", XMLPROJECTION = "ELEMENT");

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
<Subscript>"HS.FHIR.vR4.Model.Element.MolecularSequence.quality.roc.fMeasure"</Subscript>
</Data>
<Data name="numFN">
<Attribute>numFN</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.MolecularSequence.quality.roc.numFN"</Subscript>
</Data>
<Data name="numFP">
<Attribute>numFP</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.MolecularSequence.quality.roc.numFP"</Subscript>
</Data>
<Data name="numTP">
<Attribute>numTP</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.MolecularSequence.quality.roc.numTP"</Subscript>
</Data>
<Data name="precision">
<Attribute>precision</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.MolecularSequence.quality.roc.precision"</Subscript>
</Data>
<Data name="score">
<Attribute>score</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.MolecularSequence.quality.roc.score"</Subscript>
</Data>
<Data name="sensitivity">
<Attribute>sensitivity</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.MolecularSequence.quality.roc.sensitivity"</Subscript>
</Data>
<Type>%Storage.Persistent</Type>
}

}
