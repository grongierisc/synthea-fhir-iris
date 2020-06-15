/// Describes a required data item.
Class HS.FHIR.vR4.Model.Datatype.DataRequirement Extends (%Persistent, HS.FHIR.vR4.Model.Base.Element) [ Not ProcedureBlock ]
{

/// code
/// <p>
/// The type of the required data.
/// <p>
/// all-types|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend all-types|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// canonical
/// <p>
/// The profile of the required data.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property profile As list Of %String(MAXLEN = 1000000, SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "profile", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// E.g. 
/// Patient, 
/// Practitioner, 
/// RelatedPerson, 
/// Organization, 
/// Location, 
/// Device.
/// <p>
/// subject-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in subject-type, 
/// you may formally EXTEND subject-type to add codes to it.
Property subjectCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "subjectCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// E.g. 
/// Patient, 
/// Practitioner, 
/// RelatedPerson, 
/// Organization, 
/// Location, 
/// Device.
/// <p>
/// Group.
Property subjectReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subjectReference", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Indicates specific structure elements that are referenced by the knowledge module.
Property mustSupport As list Of %String(MAXLEN = 1000000, SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "mustSupport", XMLPROJECTION = "ELEMENT");

/// Element
/// <p>
/// What codes are expected.
Property codeFilter As list Of HS.FHIR.vR4.Model.Element.DataRequirement.codeFilter(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "codeFilter", XMLPROJECTION = "ELEMENT");

/// Element
/// <p>
/// What dates/date ranges are expected.
Property dateFilter As list Of HS.FHIR.vR4.Model.Element.DataRequirement.dateFilter(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "dateFilter", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Number of results.
Property limit As %Integer(XMLNAME = "limit", XMLPROJECTION = "ATTRIBUTE");

/// Element
/// <p>
/// Order of the results.
Property sort As list Of HS.FHIR.vR4.Model.Element.DataRequirement.sort(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "sort", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DataRequirement";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DataRequirement";

Storage Default
{
<Data name="DataRequirementDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>id</Value>
</Value>
<Value name="3">
<Value>newResource</Value>
</Value>
<Value name="4">
<Value>newResourceReference</Value>
</Value>
<Value name="5">
<Value>codeFilter</Value>
</Value>
<Value name="6">
<Value>dateFilter</Value>
</Value>
<Value name="7">
<Value>limit</Value>
</Value>
<Value name="8">
<Value>sort</Value>
</Value>
<Value name="9">
<Value>subjectCodeableConcept</Value>
</Value>
<Value name="10">
<Value>subjectReference</Value>
</Value>
<Value name="11">
<Value>type</Value>
</Value>
</Data>
<Data name="extension">
<Attribute>extension</Attribute>
<Structure>subnode</Structure>
<Subscript>"extension"</Subscript>
</Data>
<Data name="mustSupport">
<Attribute>mustSupport</Attribute>
<Structure>subnode</Structure>
<Subscript>"mustSupport"</Subscript>
</Data>
<Data name="primitiveExtension">
<Attribute>primitiveExtension</Attribute>
<Structure>subnode</Structure>
<Subscript>"primitiveExtension"</Subscript>
</Data>
<Data name="profile">
<Attribute>profile</Attribute>
<Structure>subnode</Structure>
<Subscript>"profile"</Subscript>
</Data>
<DataLocation>^HS.FHIR.vR8164.DataRequire13C1D</DataLocation>
<DefaultData>DataRequirementDefaultData</DefaultData>
<IdLocation>^HS.FHIR.vR8164.DataRequire13C1D</IdLocation>
<IndexLocation>^HS.FHIR.vR8164.DataRequire13C1I</IndexLocation>
<StreamLocation>^HS.FHIR.vR8164.DataRequire13C1S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
