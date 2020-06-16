/// Who performed event.
Class HS.FHIR.Storage.vR4.Model.Element.Immunization.performer Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// What type of performance was done.
/// <p>
/// immunization-function is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in immunization-function, 
/// you may formally EXTEND immunization-function to add codes to it.
Property function As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "function", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Individual or organization who was performing.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property actor As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "actor", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Immunization.performer";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Immunization.performer";

Storage Default
{
<Data name="performerDefaultData">
<Subscript>"performer"</Subscript>
<Value name="1">
<Value>function</Value>
</Value>
<Value name="2">
<Value>actor</Value>
</Value>
</Data>
<DefaultData>performerDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
