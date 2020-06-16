/// Base for all elements.
Class HS.FHIR.Storage.vR4.Model.Base.Element Extends (%Library.Persistent, HS.FHIR.DTL.Util.XML.Adapter, HS.FHIR.Storage.Util.JSON.Adapter, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property id as %String(MAXLEN="");

/// Extension
/// <p>
/// Additional content defined by implementations.
Property extension As array Of HS.FHIR.Storage.vR4.Model.Base.Extension(XMLNAME = "extension", XMLPROJECTION = "ELEMENT");

/// Generated property, not a FHIR element: Storage space for 'contained' resources that are actually separate from the parent, and need to be serialized as separate objects.
Property newResource As array Of HS.FHIR.Storage.vR4.Model.Base.Resource;

/// Generated property, not a FHIR element: Storage space for the location the corresponding newResource entry reference should be stored in after adding it to a repository
Property newResourceReference As %String;

/// Generated property, not a FHIR element: Storage space for extensions of any elements that have a primitive data type.
Property primitiveExtension As array Of HS.FHIR.Storage.vR4.Model.Base.Extension;

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Element";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Element";

Storage Default
{
<Data name="ElementDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>id</Value>
</Value>
<Value name="3">
<Value>newResourceReference</Value>
</Value>
</Data>
<Data name="extension">
<Attribute>extension</Attribute>
<Structure>subnode</Structure>
<Subscript>"extension"</Subscript>
</Data>
<Data name="newResource">
<Attribute>newResource</Attribute>
<Structure>subnode</Structure>
<Subscript>"newResource"</Subscript>
</Data>
<Data name="primitiveExtension">
<Attribute>primitiveExtension</Attribute>
<Structure>subnode</Structure>
<Subscript>"primitiveExtension"</Subscript>
</Data>
<DataLocation>^HS.FHIR.Storage.vRA040.ElementD</DataLocation>
<DefaultData>ElementDefaultData</DefaultData>
<IdLocation>^HS.FHIR.Storage.vRA040.ElementD</IdLocation>
<IndexLocation>^HS.FHIR.Storage.vRA040.ElementI</IndexLocation>
<StreamLocation>^HS.FHIR.Storage.vRA040.ElementS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
