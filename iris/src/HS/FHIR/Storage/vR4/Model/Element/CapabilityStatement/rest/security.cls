/// Information about security of implementation.
Class HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.rest.security Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// Adds CORS Headers (http://enable-cors.org/)
Property cors As %Boolean(XMLNAME = "cors", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// OAuth | SMART-on-FHIR | NTLM | Basic | Kerberos | Certificates
/// <p>
/// restful-security-service is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in restful-security-service, 
/// you may formally EXTEND restful-security-service to add codes to it.
Property service As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "service", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// General description of how security works.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CapabilityStatement.rest.security";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CapabilityStatement.rest.security";

Storage Default
{
<Data name="securityDefaultData">
<Subscript>"security"</Subscript>
<Value name="1">
<Value>cors</Value>
</Value>
<Value name="2">
<Value>description</Value>
</Value>
</Data>
<Data name="service">
<Attribute>service</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.rest.security.service"</Subscript>
</Data>
<DefaultData>securityDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
