/// Regulatory information about a medication.
Class HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.regulatory Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Specifies the authority of the regulation.
/// <p>
/// Organization
Property regulatoryAuthority As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "regulatoryAuthority", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Specifies if changes are allowed when dispensing a medication from a regulatory perspective.
Property substitution As array Of HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.regulatory.substitution(XMLNAME = "substitution", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Specifies the schedule of a medication in jurisdiction.
Property schedule As array Of HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.regulatory.schedule(XMLNAME = "schedule", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// The maximum number of units of the medication that can be dispensed in a period.
Property maxDispense As HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.regulatory.maxDispense(XMLNAME = "maxDispense", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.regulatory";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.regulatory";

Storage Default
{
<Data name="regulatoryDefaultData">
<Subscript>"regulatory"</Subscript>
<Value name="1">
<Value>regulatoryAuthority</Value>
</Value>
<Value name="2">
<Value>maxDispense</Value>
</Value>
</Data>
<Data name="schedule">
<Attribute>schedule</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.regulatory.schedule"</Subscript>
</Data>
<Data name="substitution">
<Attribute>substitution</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.regulatory.substitution"</Subscript>
</Data>
<DefaultData>regulatoryDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
