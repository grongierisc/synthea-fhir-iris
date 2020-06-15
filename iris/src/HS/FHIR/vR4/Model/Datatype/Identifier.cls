/// An identifier intended for computation.
Class HS.FHIR.vR4.Model.Datatype.Identifier Extends (%Persistent, HS.FHIR.vR4.Model.Base.Element)
{

/// code
/// <p>
/// usual | official | temp | secondary | old (If known)
/// <p>
/// identifier-use|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend identifier-use|4.0.1 and you may NOT use codes from other ValueSets.
Property use As %String(MAXLEN = 1000000, XMLNAME = "use", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Description of identifier.
/// <p>
/// identifier-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in identifier-type, 
/// you may formally EXTEND identifier-type to add codes to it.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// The namespace for the identifier value.
Property system As %String(MAXLEN = 1000000, XMLNAME = "system", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// The value that is unique.
Property value As %String(MAXLEN = 1000000, XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Time period when id is/was valid for use.
Property period As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization that issued id (may be just text)
/// <p>
/// Organization
Property assigner As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "assigner", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Identifier";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Identifier";

Storage Default
{
<Data name="IdentifierDefaultData">
<Subscript>"1"</Subscript>
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
</Data>
<Data name="IdentifierState">
<Value name="1">
<Value>id</Value>
</Value>
<Value name="2">
<Value>extension</Value>
</Value>
<Value name="3">
<Value>newResource</Value>
</Value>
<Value name="4">
<Value>newResourceReference</Value>
</Value>
<Value name="5">
<Value>period</Value>
</Value>
<Value name="6">
<Value>assigner</Value>
</Value>
<Value name="7">
<Value>primitiveExtension</Value>
</Value>
<Value name="8">
<Value>system</Value>
</Value>
<Value name="9">
<Value>type</Value>
</Value>
<Value name="10">
<Value>use</Value>
</Value>
<Value name="11">
<Value>value</Value>
</Value>
</Data>
<DataLocation>^HS.FHIR.vR4.Mod8164.IdentifierD</DataLocation>
<DefaultData>IdentifierDefaultData</DefaultData>
<IdLocation>^HS.FHIR.vR4.Mod8164.IdentifierD</IdLocation>
<IndexLocation>^HS.FHIR.vR4.Mod8164.IdentifierI</IndexLocation>
<State>IdentifierState</State>
<StreamLocation>^HS.FHIR.vR4.Mod8164.IdentifierS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
