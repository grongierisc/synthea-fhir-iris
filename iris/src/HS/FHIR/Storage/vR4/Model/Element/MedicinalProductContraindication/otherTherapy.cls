/// Information about the use of the medicinal product in relation to other therapies described as part of the indication.
Class HS.FHIR.Storage.vR4.Model.Element.MedicinalProductContraindication.otherTherapy Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The type of relationship between the medicinal product indication or contraindication and another therapy.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property therapyRelationshipType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "therapyRelationshipType", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Reference to a specific medication (active substance, 
/// medicinal product or class of products) as part of an indication or contraindication.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property medicationCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "medicationCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Reference to a specific medication (active substance, 
/// medicinal product or class of products) as part of an indication or contraindication.
/// <p>
/// MedicinalProduct | Medication | Substance | SubstanceSpecification
Property medicationReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "medicationReference", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductContraindication.otherTherapy";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductContraindication.otherTherapy";

Storage Default
{
<Data name="otherTherapyDefaultData">
<Subscript>"otherTherapy"</Subscript>
<Value name="1">
<Value>therapyRelationshipType</Value>
</Value>
<Value name="2">
<Value>medicationCodeableConcept</Value>
</Value>
<Value name="3">
<Value>medicationReference</Value>
</Value>
</Data>
<DefaultData>otherTherapyDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
