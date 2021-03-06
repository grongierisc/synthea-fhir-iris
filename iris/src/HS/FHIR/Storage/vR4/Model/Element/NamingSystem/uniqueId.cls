/// Unique identifiers used for system.
Class HS.FHIR.Storage.vR4.Model.Element.NamingSystem.uniqueId Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// oid | uuid | uri | other
/// <p>
/// namingsystem-identifier-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend namingsystem-identifier-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// The unique identifier.
Property value As %String(MAXLEN = 1000000, XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// Is this the id that should be used for this type.
Property preferred As %Boolean(XMLNAME = "preferred", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Notes about identifier usage.
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When is identifier valid?
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NamingSystem.uniqueId";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NamingSystem.uniqueId";

Storage Default
{
<Data name="uniqueIdDefaultData">
<Subscript>"uniqueId"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>value</Value>
</Value>
<Value name="3">
<Value>preferred</Value>
</Value>
<Value name="4">
<Value>comment</Value>
</Value>
<Value name="5">
<Value>period</Value>
</Value>
</Data>
<DefaultData>uniqueIdDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
