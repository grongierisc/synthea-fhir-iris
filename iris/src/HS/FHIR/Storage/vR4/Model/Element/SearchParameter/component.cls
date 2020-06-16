/// For Composite resources to define the parts.
Class HS.FHIR.Storage.vR4.Model.Element.SearchParameter.component Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// canonical
/// <p>
/// Defines how the part works.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property definition As %String(MAXLEN = 1000000, XMLNAME = "definition", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Subexpression relative to main expression.
Property expression As %String(MAXLEN = 1000000, XMLNAME = "expression", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SearchParameter.component";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SearchParameter.component";

Storage Default
{
<Data name="componentDefaultData">
<Subscript>"component"</Subscript>
<Value name="1">
<Value>definition</Value>
</Value>
<Value name="2">
<Value>expression</Value>
</Value>
</Data>
<DefaultData>componentDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
