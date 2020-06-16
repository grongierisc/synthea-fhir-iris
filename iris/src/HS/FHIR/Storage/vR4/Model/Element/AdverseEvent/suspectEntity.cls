/// The suspected agent causing the adverse event.
Class HS.FHIR.Storage.vR4.Model.Element.AdverseEvent.suspectEntity Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Refers to the specific entity that caused the adverse event.
/// <p>
/// Immunization | Procedure | Substance | Medication | MedicationAdministration | MedicationStatement | Device
Property instance As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "instance", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Information on the possible cause of the event.
Property causality As array Of HS.FHIR.Storage.vR4.Model.Element.AdverseEvent.suspectEntity.causality(XMLNAME = "causality", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AdverseEvent.suspectEntity";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AdverseEvent.suspectEntity";

Storage Default
{
<Data name="causality">
<Attribute>causality</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.AdverseEvent.suspectEntity.causality"</Subscript>
</Data>
<Data name="suspectEntityDefaultData">
<Subscript>"suspectEntity"</Subscript>
<Value name="1">
<Value>instance</Value>
</Value>
</Data>
<DefaultData>suspectEntityDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
