/// Resource for non-supported content.
Class HS.FHIR.Storage.vR4.Model.Resource.Basic Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business identifier.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Kind of Resource.
/// <p>
/// any FHIR4 code may be used; 
/// basic-resource-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Identifies the focus of this resource.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property subject As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// date
/// <p>
/// When created.
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who created.
/// <p>
/// Practitioner | PractitionerRole | Patient | RelatedPerson | Organization
Property author As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Basic";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Basic";

Storage Default
{
<Data name="BasicDefaultData">
<Subscript>"Basic"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>subject</Value>
</Value>
<Value name="3">
<Value>created</Value>
</Value>
<Value name="4">
<Value>author</Value>
</Value>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Basic.identifier"</Subscript>
</Data>
<DefaultData>BasicDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
