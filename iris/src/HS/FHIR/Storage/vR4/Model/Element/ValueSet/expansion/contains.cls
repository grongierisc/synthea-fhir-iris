/// Codes in the value set.
Class HS.FHIR.Storage.vR4.Model.Element.ValueSet.expansion.contains Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// System value for the code.
Property system As %String(MAXLEN = 1000000, XMLNAME = "system", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// If user cannot select this entry.
Property abstract As %Boolean(XMLNAME = "abstract", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// If concept is inactive in the code system.
Property inactive As %Boolean(XMLNAME = "inactive", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Version in which this code/display is defined.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Code - if blank, 
/// this is not a selectable code.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// User display for the concept.
Property display As %String(MAXLEN = 1000000, XMLNAME = "display", XMLPROJECTION = "ATTRIBUTE");

/// ValueSet:compose.include[n].concept[n].designation
/// <p>
/// Additional representations for this item.
Property designation As array Of HS.FHIR.Storage.vR4.Model.Element.ValueSet.compose.include.concept.designation(XMLNAME = "designation", XMLPROJECTION = "ELEMENT");

/// ValueSet:expansion.contains
/// <p>
/// Codes contained under this entry.
Property contains As array Of HS.FHIR.Storage.vR4.Model.Element.ValueSet.expansion.contains(XMLNAME = "contains", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ValueSet.expansion.contains";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ValueSet.expansion.contains";

Storage Default
{
<Data name="contains">
<Attribute>contains</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ValueSet.expansion.contains.contains"</Subscript>
</Data>
<Data name="containsDefaultData">
<Subscript>"contains"</Subscript>
<Value name="1">
<Value>system</Value>
</Value>
<Value name="2">
<Value>abstract</Value>
</Value>
<Value name="3">
<Value>inactive</Value>
</Value>
<Value name="4">
<Value>version</Value>
</Value>
<Value name="5">
<Value>code</Value>
</Value>
<Value name="6">
<Value>display</Value>
</Value>
</Data>
<Data name="designation">
<Attribute>designation</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ValueSet.expansion.contains.designation"</Subscript>
</Data>
<DefaultData>containsDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
