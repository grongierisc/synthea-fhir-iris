/// The time course of drug absorption, 
/// distribution, 
/// metabolism and excretion of a medication from the body.
Class HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.kinetics Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Quantity
/// <p>
/// The drug concentration measured at certain discrete points in time.
Property areaUnderCurve As array Of HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "areaUnderCurve", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// The median lethal dose of a drug.
Property lethalDose50 As array Of HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "lethalDose50", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// Time required for concentration in the body to decrease by half.
Property halfLifePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Duration(XMLNAME = "halfLifePeriod", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.kinetics";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.kinetics";

Storage Default
{
<Data name="areaUnderCurve">
<Attribute>areaUnderCurve</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.kinetics.areaUnderCurve"</Subscript>
</Data>
<Data name="kineticsDefaultData">
<Subscript>"kinetics"</Subscript>
<Value name="1">
<Value>halfLifePeriod</Value>
</Value>
</Data>
<Data name="lethalDose50">
<Attribute>lethalDose50</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.kinetics.lethalDose50"</Subscript>
</Data>
<DefaultData>kineticsDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
