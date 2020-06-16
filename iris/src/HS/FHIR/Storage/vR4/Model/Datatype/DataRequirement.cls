/// Describes a required data item.
Class HS.FHIR.Storage.vR4.Model.Datatype.DataRequirement Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
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
Property profile As array Of %String(MAXLEN = 1000000, XMLNAME = "profile", XMLPROJECTION = "ELEMENT");

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
Property subjectCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "subjectCodeableConcept", XMLPROJECTION = "ELEMENT");

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
Property subjectReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subjectReference", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Indicates specific structure elements that are referenced by the knowledge module.
Property mustSupport As array Of %String(MAXLEN = 1000000, XMLNAME = "mustSupport", XMLPROJECTION = "ELEMENT");

/// Element
/// <p>
/// What codes are expected.
Property codeFilter As array Of HS.FHIR.Storage.vR4.Model.Element.DataRequirement.codeFilter(XMLNAME = "codeFilter", XMLPROJECTION = "ELEMENT");

/// Element
/// <p>
/// What dates/date ranges are expected.
Property dateFilter As array Of HS.FHIR.Storage.vR4.Model.Element.DataRequirement.dateFilter(XMLNAME = "dateFilter", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Number of results.
Property limit As %Integer(XMLNAME = "limit", XMLPROJECTION = "ATTRIBUTE");

/// Element
/// <p>
/// Order of the results.
Property sort As array Of HS.FHIR.Storage.vR4.Model.Element.DataRequirement.sort(XMLNAME = "sort", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DataRequirement";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DataRequirement";

Storage Default
{
<Data name="DataRequirementDefaultData">
<Subscript>"DataRequirement"</Subscript>
<Value name="1">
<Value>type</Value>
</Value>
<Value name="2">
<Value>subjectCodeableConcept</Value>
</Value>
<Value name="3">
<Value>subjectReference</Value>
</Value>
<Value name="4">
<Value>limit</Value>
</Value>
</Data>
<Data name="codeFilter">
<Attribute>codeFilter</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Datatype.DataRequirement.codeFilter"</Subscript>
</Data>
<Data name="dateFilter">
<Attribute>dateFilter</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Datatype.DataRequirement.dateFilter"</Subscript>
</Data>
<Data name="mustSupport">
<Attribute>mustSupport</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Datatype.DataRequirement.mustSupport"</Subscript>
</Data>
<Data name="profile">
<Attribute>profile</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Datatype.DataRequirement.profile"</Subscript>
</Data>
<Data name="sort">
<Attribute>sort</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Datatype.DataRequirement.sort"</Subscript>
</Data>
<DefaultData>DataRequirementDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
