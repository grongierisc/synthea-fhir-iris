/// Grouping used to present related resources in the IG.
Class HS.FHIR.Storage.vR4.Model.Element.ImplementationGuide.definition.grouping Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Descriptive name for the package.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Human readable text describing the package.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImplementationGuide.definition.grouping";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImplementationGuide.definition.grouping";

Storage Default
{
<Data name="groupingDefaultData">
<Subscript>"grouping"</Subscript>
<Value name="1">
<Value>name</Value>
</Value>
<Value name="2">
<Value>description</Value>
</Value>
</Data>
<DefaultData>groupingDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
