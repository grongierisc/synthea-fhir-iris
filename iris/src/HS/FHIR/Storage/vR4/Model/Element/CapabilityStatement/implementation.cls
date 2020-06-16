/// If this describes a specific instance.
Class HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.implementation Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Describes this specific instance.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// url
/// <p>
/// Base URL for the installation.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Organization that manages the data.
/// <p>
/// Organization
Property custodian As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "custodian", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CapabilityStatement.implementation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CapabilityStatement.implementation";

Storage Default
{
<Data name="implementationDefaultData">
<Subscript>"implementation"</Subscript>
<Value name="1">
<Value>description</Value>
</Value>
<Value name="2">
<Value>url</Value>
</Value>
<Value name="3">
<Value>custodian</Value>
</Value>
</Data>
<DefaultData>implementationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
