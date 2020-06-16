/// Information about the [ConceptMap/$closure](conceptmap-operation-closure.html) operation.
Class HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.closure Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// If cross-system closure is supported.
Property translation As %Boolean(XMLNAME = "translation", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TerminologyCapabilities.closure";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TerminologyCapabilities.closure";

Storage Default
{
<Data name="closureDefaultData">
<Subscript>"closure"</Subscript>
<Value name="1">
<Value>translation</Value>
</Value>
</Data>
<DefaultData>closureDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
