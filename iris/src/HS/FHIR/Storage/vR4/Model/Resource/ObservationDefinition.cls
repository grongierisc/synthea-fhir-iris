/// Definition of an observation.
Class HS.FHIR.Storage.vR4.Model.Resource.ObservationDefinition Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Category of observation.
/// <p>
/// any FHIR4 code may be used; 
/// observation-category shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Type of observation (code / type)
/// <p>
/// any FHIR4 code may be used; 
/// observation-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// Identifier
/// <p>
/// Business identifier for this ObservationDefinition instance.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// Quantity | CodeableConcept | string | boolean | integer | Range | Ratio | SampledData | time | dateTime | Period
/// <p>
/// permitted-data-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend permitted-data-type|4.0.1 and you may NOT use codes from other ValueSets.
Property permittedDataType As array Of %String(MAXLEN = 1000000, XMLNAME = "permittedDataType", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Multiple results allowed.
Property multipleResultsAllowed As %Boolean(XMLNAME = "multipleResultsAllowed", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Method used to produce the observation.
/// <p>
/// any FHIR4 code may be used; 
/// observation-methods shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property method As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "method", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Preferred report name.
Property preferredReportName As %String(MAXLEN = 1000000, XMLNAME = "preferredReportName", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Characteristics of quantitative results.
Property quantitativeDetails As HS.FHIR.Storage.vR4.Model.Element.ObservationDefinition.quantitativeDetails(XMLNAME = "quantitativeDetails", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Qualified range for continuous and ordinal observation results.
Property qualifiedInterval As array Of HS.FHIR.Storage.vR4.Model.Element.ObservationDefinition.qualifiedInterval(XMLNAME = "qualifiedInterval", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Value set of valid coded values for the observations conforming to this ObservationDefinition.
/// <p>
/// ValueSet
Property validCodedValueSet As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "validCodedValueSet", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Value set of normal coded values for the observations conforming to this ObservationDefinition.
/// <p>
/// ValueSet
Property normalCodedValueSet As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "normalCodedValueSet", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Value set of abnormal coded values for the observations conforming to this ObservationDefinition.
/// <p>
/// ValueSet
Property abnormalCodedValueSet As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "abnormalCodedValueSet", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Value set of critical coded values for the observations conforming to this ObservationDefinition.
/// <p>
/// ValueSet
Property criticalCodedValueSet As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "criticalCodedValueSet", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ObservationDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ObservationDefinition";

Storage Default
{
<Data name="ObservationDefinitionDefaultData">
<Subscript>"ObservationDefinition"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>multipleResultsAllowed</Value>
</Value>
<Value name="3">
<Value>method</Value>
</Value>
<Value name="4">
<Value>preferredReportName</Value>
</Value>
<Value name="5">
<Value>quantitativeDetails</Value>
</Value>
<Value name="6">
<Value>validCodedValueSet</Value>
</Value>
<Value name="7">
<Value>normalCodedValueSet</Value>
</Value>
<Value name="8">
<Value>abnormalCodedValueSet</Value>
</Value>
<Value name="9">
<Value>criticalCodedValueSet</Value>
</Value>
</Data>
<Data name="category">
<Attribute>category</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ObservationDefinition.category"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ObservationDefinition.identifier"</Subscript>
</Data>
<Data name="permittedDataType">
<Attribute>permittedDataType</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ObservationDefinition.permittedDataType"</Subscript>
</Data>
<Data name="qualifiedInterval">
<Attribute>qualifiedInterval</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ObservationDefinition.qualifiedInterval"</Subscript>
</Data>
<DefaultData>ObservationDefinitionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
