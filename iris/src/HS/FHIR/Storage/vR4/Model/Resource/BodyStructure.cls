/// Specific and identified anatomical structure.
Class HS.FHIR.Storage.vR4.Model.Resource.BodyStructure Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Bodystructure identifier.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether this record is in active use.
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Kind of Structure.
/// <p>
/// any FHIR4 code may be used; 
/// bodystructure-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property morphology As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "morphology", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Body site.
/// <p>
/// any FHIR4 code may be used; 
/// body-site shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property location As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Body site modifier.
/// <p>
/// any FHIR4 code may be used; 
/// bodystructure-relative-location shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property locationQualifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "locationQualifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Text description.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// Attachment
/// <p>
/// Attached images.
Property image As array Of HS.FHIR.Storage.vR4.Model.Datatype.Attachment(XMLNAME = "image", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who this is about.
/// <p>
/// Patient
Property patient As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "BodyStructure";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "BodyStructure";

Storage Default
{
<Data name="BodyStructureDefaultData">
<Subscript>"BodyStructure"</Subscript>
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>morphology</Value>
</Value>
<Value name="3">
<Value>location</Value>
</Value>
<Value name="4">
<Value>description</Value>
</Value>
<Value name="5">
<Value>patient</Value>
</Value>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.BodyStructure.identifier"</Subscript>
</Data>
<Data name="image">
<Attribute>image</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.BodyStructure.image"</Subscript>
</Data>
<Data name="locationQualifier">
<Attribute>locationQualifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.BodyStructure.locationQualifier"</Subscript>
</Data>
<DefaultData>BodyStructureDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
