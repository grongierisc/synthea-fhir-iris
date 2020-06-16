/// Another Implementation guide this depends on.
Class HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.dependsOn Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// canonical
/// <p>
/// Identity of the IG that this depends on.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property uri As %String(MAXLEN = 1000000, XMLNAME = "uri", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// id
/// <p>
/// NPM Package name for IG this depends on.
Property packageId As %String(MAXLEN = 1000000, XMLNAME = "packageId", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Version of the IG.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImplementationGuide.dependsOn";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImplementationGuide.dependsOn";

Storage Default
{
<Data name="dependsOnDefaultData">
<Subscript>"dependsOn"</Subscript>
<Value name="1">
<Value>uri</Value>
</Value>
<Value name="2">
<Value>packageId</Value>
</Value>
<Value name="3">
<Value>version</Value>
</Value>
</Data>
<DefaultData>dependsOnDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
