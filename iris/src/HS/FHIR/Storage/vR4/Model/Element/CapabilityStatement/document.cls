/// Document definition.
Class HS.FHIR.Storage.vR4.Model.Element.CapabilityStatement.document Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// producer | consumer
/// <p>
/// document-mode|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend document-mode|4.0.1 and you may NOT use codes from other ValueSets.
Property mode As %String(MAXLEN = 1000000, XMLNAME = "mode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// markdown
/// <p>
/// Description of document support.
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Constraint on the resources used in the document.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property profile As %String(MAXLEN = 1000000, XMLNAME = "profile", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CapabilityStatement.document";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CapabilityStatement.document";

Storage Default
{
<Data name="documentDefaultData">
<Subscript>"document"</Subscript>
<Value name="1">
<Value>mode</Value>
</Value>
<Value name="2">
<Value>documentation</Value>
</Value>
<Value name="3">
<Value>profile</Value>
</Value>
</Data>
<DefaultData>documentDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
