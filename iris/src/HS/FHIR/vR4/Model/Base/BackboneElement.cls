/// Base for elements defined inside a resource.
Class HS.FHIR.vR4.Model.Base.BackboneElement Extends (%Persistent, HS.FHIR.vR4.Model.Base.Element) [ Not ProcedureBlock ]
{

Property id As %String(MAXLEN = "");

/// Extension
/// <p>
/// Additional content defined by implementations.
Property extension As List Of HS.FHIR.vR4.Model.Base.Extension(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "extension", XMLPROJECTION = "ELEMENT");

/// Extension
/// <p>
/// Extensions that cannot be ignored even if unrecognized.
Property modifierExtension As List Of HS.FHIR.vR4.Model.Base.Extension(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "modifierExtension", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "BackboneElement";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "BackboneElement";

Storage Default
{
<Data name="BackboneElementDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>id</Value>
</Value>
<Value name="3">
<Value>extension</Value>
</Value>
<Value name="4">
<Value>modifierExtension</Value>
</Value>
<Value name="5">
<Value>newResourceReference</Value>
</Value>
<Value name="6">
<Value>primitiveExtension</Value>
</Value>
<Value name="7">
<Value>newResource</Value>
</Value>
</Data>
<DataLocation>^HS.FHIR.vR5F25.BackboneEleBED6D</DataLocation>
<DefaultData>BackboneElementDefaultData</DefaultData>
<IdLocation>^HS.FHIR.vR5F25.BackboneEleBED6D</IdLocation>
<IndexLocation>^HS.FHIR.vR5F25.BackboneEleBED6I</IndexLocation>
<StreamLocation>^HS.FHIR.vR5F25.BackboneEleBED6S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
