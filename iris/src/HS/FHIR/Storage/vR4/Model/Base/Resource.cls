/// Base Resource.
Class HS.FHIR.Storage.vR4.Model.Base.Resource Extends (%Library.Persistent, HS.FHIR.DTL.Util.XML.Adapter, HS.FHIR.Storage.Util.JSON.Adapter, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property id as %String(MAXLEN="");

/// Meta
/// <p>
/// Metadata about the resource.
Property meta As HS.FHIR.Storage.vR4.Model.Base.Meta(XMLNAME = "meta", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// A set of rules under which this content was created.
Property implicitRules As %String(MAXLEN = 1000000, XMLNAME = "implicitRules", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Language of the resource content.
/// <p>
/// languages is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in languages, 
/// you may use codes from any ValueSet.
Property language As %String(MAXLEN = 1000000, XMLNAME = "language", XMLPROJECTION = "ATTRIBUTE");

/// Generated property, not a FHIR element: Storage space for 'contained' resources that are actually separate from the parent, and need to be serialized as separate objects.
Property newResource As array Of HS.FHIR.Storage.vR4.Model.Base.Resource;

/// Generated property, not a FHIR element: Storage space for the location the corresponding newResource entry reference should be stored in after adding it to a repository
Property newResourceReference As %String;

/// Generated property, not a FHIR element: Storage space for extensions of any elements that have a primitive data type.
Property primitiveExtension As array Of HS.FHIR.Storage.vR4.Model.Base.Extension;

/// Generated property, not a FHIR element: returns the resource type for the resource object.
Property resourceType As %String [ Calculated ];

Method resourceTypeGet() As %String
{
 quit ..%ClassName(0)
}

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Resource";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Resource";

Storage Default
{
<Data name="ResourceDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>id</Value>
</Value>
<Value name="3">
<Value>meta</Value>
</Value>
<Value name="4">
<Value>implicitRules</Value>
</Value>
<Value name="5">
<Value>language</Value>
</Value>
<Value name="6">
<Value>newResourceReference</Value>
</Value>
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
<DataLocation>^HS.FHIR.Storage.vA040.ResourceD</DataLocation>
<DefaultData>ResourceDefaultData</DefaultData>
<IdLocation>^HS.FHIR.Storage.vA040.ResourceD</IdLocation>
<IndexLocation>^HS.FHIR.Storage.vA040.ResourceI</IndexLocation>
<StreamLocation>^HS.FHIR.Storage.vA040.ResourceS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
