/// Details of a reaction that follows immunization.
Class HS.FHIR.Storage.vR4.Model.Element.Immunization.reaction Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// dateTime
/// <p>
/// When reaction started.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Additional information on reaction.
/// <p>
/// Observation
Property detail As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "detail", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Indicates self-reported reaction.
Property reported As %Boolean(XMLNAME = "reported", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Immunization.reaction";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Immunization.reaction";

Storage Default
{
<Data name="reactionDefaultData">
<Subscript>"reaction"</Subscript>
<Value name="1">
<Value>date</Value>
</Value>
<Value name="2">
<Value>detail</Value>
</Value>
<Value name="3">
<Value>reported</Value>
</Value>
</Data>
<DefaultData>reactionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
