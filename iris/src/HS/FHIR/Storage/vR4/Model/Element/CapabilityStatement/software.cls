/// Software that is covered by this capability statement.
Class HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.software Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// A name the software is known by.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Version covered by this statement.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Date this version was released.
Property releaseDate As %String(MAXLEN = 1000000, XMLNAME = "releaseDate", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CapabilityStatement.software";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CapabilityStatement.software";

Storage Default
{
<Data name="softwareDefaultData">
<Subscript>"software"</Subscript>
<Value name="1">
<Value>name</Value>
</Value>
<Value name="2">
<Value>version</Value>
</Value>
<Value name="3">
<Value>releaseDate</Value>
</Value>
</Data>
<DefaultData>softwareDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
