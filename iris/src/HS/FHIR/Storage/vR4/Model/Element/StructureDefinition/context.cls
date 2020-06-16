/// If an extension, 
/// where it can be used in instances.
Class HS.FHIR.Storage.vR4.Model.Element.StructureDefinition.context Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// fhirpath | element | extension
/// <p>
/// extension-context-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend extension-context-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Where the extension can be used in instances.
Property expression As %String(MAXLEN = 1000000, XMLNAME = "expression", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "StructureDefinition.context";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "StructureDefinition.context";

Storage Default
{
<Data name="contextDefaultData">
<Subscript>"context"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>expression</Value>
</Value>
</Data>
<DefaultData>contextDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
