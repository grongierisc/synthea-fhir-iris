/// Information about the [ConceptMap/$translate](conceptmap-operation-translate.html) operation.
Class HS.FHIR.Storage.vR4.Model.Element.TerminologyCapabilities.translation Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// Whether the client must identify the map.
Property needsMap As %Boolean(XMLNAME = "needsMap", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TerminologyCapabilities.translation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TerminologyCapabilities.translation";

Storage Default
{
<Data name="translationDefaultData">
<Subscript>"translation"</Subscript>
<Value name="1">
<Value>needsMap</Value>
</Value>
</Data>
<DefaultData>translationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
