/// The pricing of the medication.
Class HS.FHIR.Storage.vR4.Model.Element.MedicationKnowledge.cost Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The category of the cost information.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// The source or owner for the price information.
Property source As %String(MAXLEN = 1000000, XMLNAME = "source", XMLPROJECTION = "ATTRIBUTE");

/// Money
/// <p>
/// The price of the medication.
Property cost As HS.FHIR.Storage.vR4.Model.Datatype.Money(XMLNAME = "cost", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicationKnowledge.cost";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicationKnowledge.cost";

Storage Default
{
<Data name="costDefaultData">
<Subscript>"cost"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>source</Value>
</Value>
<Value name="3">
<Value>cost</Value>
</Value>
</Data>
<DefaultData>costDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
