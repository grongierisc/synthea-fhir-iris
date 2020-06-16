/// Batch numbering.
Class HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPackaged.batchIdentifier Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// A number appearing on the outer packaging of a specific batch.
Property outerPackaging As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "outerPackaging", XMLPROJECTION = "ELEMENT") [ Required ];

/// Identifier
/// <p>
/// A number appearing on the immediate packaging (and not the outer packaging)
Property immediatePackaging As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "immediatePackaging", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductPackaged.batchIdentifier";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductPackaged.batchIdentifier";

Storage Default
{
<Data name="batchIdentifierDefaultData">
<Subscript>"batchIdentifier"</Subscript>
<Value name="1">
<Value>outerPackaging</Value>
</Value>
<Value name="2">
<Value>immediatePackaging</Value>
</Value>
</Data>
<DefaultData>batchIdentifierDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
