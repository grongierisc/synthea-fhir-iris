/// Resource(s) that are the subject of the event.
Class HS.FHIR.Storage.vR4.Model.Element.MessageDefinition.focus Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// Type of resource.
/// <p>
/// resource-types|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend resource-types|4.0.1 and you may NOT use codes from other ValueSets.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// canonical
/// <p>
/// Profile that must be adhered to by focus.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property profile As %String(MAXLEN = 1000000, XMLNAME = "profile", XMLPROJECTION = "ATTRIBUTE");

/// unsignedInt
/// <p>
/// Minimum number of focuses of this type.
Property min As %Integer(XMLNAME = "min", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Maximum number of focuses of this type.
Property max As %String(MAXLEN = 1000000, XMLNAME = "max", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MessageDefinition.focus";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MessageDefinition.focus";

Storage Default
{
<Data name="focusDefaultData">
<Subscript>"focus"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>profile</Value>
</Value>
<Value name="3">
<Value>min</Value>
</Value>
<Value name="4">
<Value>max</Value>
</Value>
</Data>
<DefaultData>focusDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
