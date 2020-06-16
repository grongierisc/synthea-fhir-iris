/// A concept defined in the system.
Class HS.FHIR.Storage.vR4.Model.Element.ValueSet.compose.include.concept Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// Code or expression from system.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Text to display for this code for this value set in this valueset.
Property display As %String(MAXLEN = 1000000, XMLNAME = "display", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Additional representations for this concept.
Property designation As array Of HS.FHIR.Storage.vR4.Model.Element.ValueSet.compose.include.concept.designation(XMLNAME = "designation", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ValueSet.compose.include.concept";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ValueSet.compose.include.concept";

Storage Default
{
<Data name="conceptDefaultData">
<Subscript>"concept"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>display</Value>
</Value>
</Data>
<Data name="designation">
<Attribute>designation</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ValueSet.compose.include.concept.designation"</Subscript>
</Data>
<DefaultData>conceptDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
