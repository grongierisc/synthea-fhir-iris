/// Additional representations for the concept.
Class HS.FHIR.Storage.vR4.Model.Element.CodeSystem.concept.designation Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// Human language of the designation.
/// <p>
/// languages is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in languages, 
/// you may use codes from any ValueSet.
Property language As %String(MAXLEN = 1000000, XMLNAME = "language", XMLPROJECTION = "ATTRIBUTE");

/// Coding
/// <p>
/// Details how this designation would be used.
/// <p>
/// designation-use is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in designation-use, 
/// you may formally EXTEND designation-use to add codes to it.
Property use As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "use", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The text value for this designation.
Property value As %String(MAXLEN = 1000000, XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CodeSystem.concept.designation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CodeSystem.concept.designation";

Storage Default
{
<Data name="designationDefaultData">
<Subscript>"designation"</Subscript>
<Value name="1">
<Value>language</Value>
</Value>
<Value name="2">
<Value>use</Value>
</Value>
<Value name="3">
<Value>value</Value>
</Value>
</Data>
<DefaultData>designationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
