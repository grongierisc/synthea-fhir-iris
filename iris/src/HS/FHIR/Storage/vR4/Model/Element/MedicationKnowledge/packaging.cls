/// Details about packaged medications.
Class HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.packaging Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// A code that defines the specific type of packaging that the medication can be found in.
/// <p>
/// any FHIR4 code may be used; 
/// medicationknowledge-package-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// The number of product units the package would contain if fully loaded.
Property quantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.packaging";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.packaging";

Storage Default
{
<Data name="packagingDefaultData">
<Subscript>"packaging"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>quantity</Value>
</Value>
</Data>
<DefaultData>packagingDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
