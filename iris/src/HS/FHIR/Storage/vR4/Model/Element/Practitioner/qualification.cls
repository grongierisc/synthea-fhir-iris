/// Certification, 
/// licenses, 
/// or training pertaining to the provision of care.
Class HS.FHIR.Storage.vR4.Model.Element.Practitioner.qualification Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// An identifier for this qualification for the practitioner.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Coded representation of the qualification.
/// <p>
/// any FHIR4 code may be used; 
/// v2-2.7-0360 shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// Period
/// <p>
/// Period during which the qualification is valid.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization that regulates and issues the qualification.
/// <p>
/// Organization
Property issuer As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "issuer", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Practitioner.qualification";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Practitioner.qualification";

Storage Default
{
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Practitioner.qualification.identifier"</Subscript>
</Data>
<Data name="qualificationDefaultData">
<Subscript>"qualification"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>period</Value>
</Value>
<Value name="3">
<Value>issuer</Value>
</Value>
</Data>
<DefaultData>qualificationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
