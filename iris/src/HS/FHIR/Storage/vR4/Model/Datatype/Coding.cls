/// A reference to a code defined by a terminology system.
Class HS.FHIR.Storage.vR4.Model.Datatype.Coding Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Identity of the terminology system.
Property system As %String(MAXLEN = 1000000, XMLNAME = "system", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Version of the system - if relevant.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Symbol in syntax defined by the system.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Representation defined by the system.
Property display As %String(MAXLEN = 1000000, XMLNAME = "display", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// If this coding was chosen directly by the user.
Property userSelected As %Boolean(XMLNAME = "userSelected", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Coding";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Coding";

Storage Default
{
<Data name="CodingDefaultData">
<Subscript>"Coding"</Subscript>
<Value name="1">
<Value>system</Value>
</Value>
<Value name="2">
<Value>version</Value>
</Value>
<Value name="3">
<Value>code</Value>
</Value>
<Value name="4">
<Value>display</Value>
</Value>
<Value name="5">
<Value>userSelected</Value>
</Value>
</Data>
<DefaultData>CodingDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
