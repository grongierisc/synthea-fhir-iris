/// Example value (as defined for type)
Class HS.FHIR.Storage.vR4.Model.Element.ElementDefinition.example Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Describes the purpose of this example.
Property label As %String(MAXLEN = 1000000, XMLNAME = "label", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Address
/// <p>
/// Value of Example (one of allowed types)
Property valueAddress As HS.FHIR.Storage.vR4.Model.Datatype.Address(XMLNAME = "valueAddress", XMLPROJECTION = "ELEMENT") [ Required ];

/// Age
/// <p>
/// Value of Example (one of allowed types)
Property valueAge As HS.FHIR.Storage.vR4.Model.Datatype.Age(XMLNAME = "valueAge", XMLPROJECTION = "ELEMENT") [ Required ];

/// Annotation
/// <p>
/// Value of Example (one of allowed types)
Property valueAnnotation As HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "valueAnnotation", XMLPROJECTION = "ELEMENT") [ Required ];

/// Attachment
/// <p>
/// Value of Example (one of allowed types)
Property valueAttachment As HS.FHIR.Storage.vR4.Model.Datatype.Attachment(XMLNAME = "valueAttachment", XMLPROJECTION = "ELEMENT") [ Required ];

/// base64Binary
/// <p>
/// Value of Example (one of allowed types)
Property valueBase64Binary As %Binary(XMLNAME = "valueBase64Binary", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// Value of Example (one of allowed types)
Property valueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// canonical
/// <p>
/// Value of Example (one of allowed types)
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueCanonical As %String(MAXLEN = 1000000, XMLNAME = "valueCanonical", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// Value of Example (one of allowed types)
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCode As %String(MAXLEN = 1000000, XMLNAME = "valueCode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Value of Example (one of allowed types)
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "valueCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Coding
/// <p>
/// Value of Example (one of allowed types)
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCoding As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "valueCoding", XMLPROJECTION = "ELEMENT") [ Required ];

/// ContactDetail
/// <p>
/// Value of Example (one of allowed types)
Property valueContactDetail As HS.FHIR.Storage.vR4.Model.Datatype.ContactDetail(XMLNAME = "valueContactDetail", XMLPROJECTION = "ELEMENT") [ Required ];

/// ContactPoint
/// <p>
/// Value of Example (one of allowed types)
Property valueContactPoint As HS.FHIR.Storage.vR4.Model.Datatype.ContactPoint(XMLNAME = "valueContactPoint", XMLPROJECTION = "ELEMENT") [ Required ];

/// Contributor
/// <p>
/// Value of Example (one of allowed types)
Property valueContributor As HS.FHIR.Storage.vR4.Model.Datatype.Contributor(XMLNAME = "valueContributor", XMLPROJECTION = "ELEMENT") [ Required ];

/// Count
/// <p>
/// Value of Example (one of allowed types)
Property valueCount As HS.FHIR.Storage.vR4.Model.Datatype.Count(XMLNAME = "valueCount", XMLPROJECTION = "ELEMENT") [ Required ];

/// DataRequirement
/// <p>
/// Value of Example (one of allowed types)
Property valueDataRequirement As HS.FHIR.Storage.vR4.Model.Datatype.DataRequirement(XMLNAME = "valueDataRequirement", XMLPROJECTION = "ELEMENT") [ Required ];

/// date
/// <p>
/// Value of Example (one of allowed types)
Property valueDate As %String(MAXLEN = 1000000, XMLNAME = "valueDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// dateTime
/// <p>
/// Value of Example (one of allowed types)
Property valueDateTime As %String(MAXLEN = 1000000, XMLNAME = "valueDateTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// decimal
/// <p>
/// Value of Example (one of allowed types)
Property valueDecimal As %Decimal(XMLNAME = "valueDecimal", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Distance
/// <p>
/// Value of Example (one of allowed types)
Property valueDistance As HS.FHIR.Storage.vR4.Model.Datatype.Distance(XMLNAME = "valueDistance", XMLPROJECTION = "ELEMENT") [ Required ];

/// Dosage
/// <p>
/// Value of Example (one of allowed types)
Property valueDosage As HS.FHIR.Storage.vR4.Model.Element.Dosage(XMLNAME = "valueDosage", XMLPROJECTION = "ELEMENT") [ Required ];

/// Duration
/// <p>
/// Value of Example (one of allowed types)
Property valueDuration As HS.FHIR.Storage.vR4.Model.Datatype.Duration(XMLNAME = "valueDuration", XMLPROJECTION = "ELEMENT") [ Required ];

/// Expression
/// <p>
/// Value of Example (one of allowed types)
Property valueExpression As HS.FHIR.Storage.vR4.Model.Datatype.Expression(XMLNAME = "valueExpression", XMLPROJECTION = "ELEMENT") [ Required ];

/// HumanName
/// <p>
/// Value of Example (one of allowed types)
Property valueHumanName As HS.FHIR.Storage.vR4.Model.Datatype.HumanName(XMLNAME = "valueHumanName", XMLPROJECTION = "ELEMENT") [ Required ];

/// id
/// <p>
/// Value of Example (one of allowed types)
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueId As %String(MAXLEN = 1000000, XMLNAME = "valueId", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Identifier
/// <p>
/// Value of Example (one of allowed types)
Property valueIdentifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "valueIdentifier", XMLPROJECTION = "ELEMENT") [ Required ];

/// instant
/// <p>
/// Value of Example (one of allowed types)
Property valueInstant As %String(MAXLEN = 1000000, XMLNAME = "valueInstant", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// integer
/// <p>
/// Value of Example (one of allowed types)
Property valueInteger As %Integer(XMLNAME = "valueInteger", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// markdown
/// <p>
/// Value of Example (one of allowed types)
Property valueMarkdown As %String(MAXLEN = 1000000, XMLNAME = "valueMarkdown", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Meta
/// <p>
/// Value of Example (one of allowed types)
Property valueMeta As HS.FHIR.Storage.vR4.Model.Base.Meta(XMLNAME = "valueMeta", XMLPROJECTION = "ELEMENT") [ Required ];

/// Money
/// <p>
/// Value of Example (one of allowed types)
Property valueMoney As HS.FHIR.Storage.vR4.Model.Datatype.Money(XMLNAME = "valueMoney", XMLPROJECTION = "ELEMENT") [ Required ];

/// oid
/// <p>
/// Value of Example (one of allowed types)
Property valueOid As %String(MAXLEN = 1000000, XMLNAME = "valueOid", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// ParameterDefinition
/// <p>
/// Value of Example (one of allowed types)
Property valueParameterDefinition As HS.FHIR.Storage.vR4.Model.Datatype.ParameterDefinition(XMLNAME = "valueParameterDefinition", XMLPROJECTION = "ELEMENT") [ Required ];

/// Period
/// <p>
/// Value of Example (one of allowed types)
Property valuePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "valuePeriod", XMLPROJECTION = "ELEMENT") [ Required ];

/// positiveInt
/// <p>
/// Value of Example (one of allowed types)
Property valuePositiveInt As %Integer(XMLNAME = "valuePositiveInt", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Quantity
/// <p>
/// Value of Example (one of allowed types)
Property valueQuantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT") [ Required ];

/// Range
/// <p>
/// Value of Example (one of allowed types)
Property valueRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "valueRange", XMLPROJECTION = "ELEMENT") [ Required ];

/// Ratio
/// <p>
/// Value of Example (one of allowed types)
Property valueRatio As HS.FHIR.Storage.vR4.Model.Datatype.Ratio(XMLNAME = "valueRatio", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Value of Example (one of allowed types)
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property valueReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "valueReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// RelatedArtifact
/// <p>
/// Value of Example (one of allowed types)
Property valueRelatedArtifact As HS.FHIR.Storage.vR4.Model.Datatype.RelatedArtifact(XMLNAME = "valueRelatedArtifact", XMLPROJECTION = "ELEMENT") [ Required ];

/// SampledData
/// <p>
/// Value of Example (one of allowed types)
Property valueSampledData As HS.FHIR.Storage.vR4.Model.Datatype.SampledData(XMLNAME = "valueSampledData", XMLPROJECTION = "ELEMENT") [ Required ];

/// Signature
/// <p>
/// Value of Example (one of allowed types)
Property valueSignature As HS.FHIR.Storage.vR4.Model.Datatype.Signature(XMLNAME = "valueSignature", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Value of Example (one of allowed types)
Property valueString As %String(MAXLEN = 1000000, XMLNAME = "valueString", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// time
/// <p>
/// Value of Example (one of allowed types)
Property valueTime As %String(MAXLEN = 1000000, XMLNAME = "valueTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Timing
/// <p>
/// Value of Example (one of allowed types)
Property valueTiming As HS.FHIR.Storage.vR4.Model.Datatype.Timing(XMLNAME = "valueTiming", XMLPROJECTION = "ELEMENT") [ Required ];

/// TriggerDefinition
/// <p>
/// Value of Example (one of allowed types)
Property valueTriggerDefinition As HS.FHIR.Storage.vR4.Model.Datatype.TriggerDefinition(XMLNAME = "valueTriggerDefinition", XMLPROJECTION = "ELEMENT") [ Required ];

/// unsignedInt
/// <p>
/// Value of Example (one of allowed types)
Property valueUnsignedInt As %Integer(XMLNAME = "valueUnsignedInt", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// uri
/// <p>
/// Value of Example (one of allowed types)
Property valueUri As %String(MAXLEN = 1000000, XMLNAME = "valueUri", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// url
/// <p>
/// Value of Example (one of allowed types)
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueUrl As %String(MAXLEN = 1000000, XMLNAME = "valueUrl", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// UsageContext
/// <p>
/// Value of Example (one of allowed types)
Property valueUsageContext As HS.FHIR.Storage.vR4.Model.Datatype.UsageContext(XMLNAME = "valueUsageContext", XMLPROJECTION = "ELEMENT") [ Required ];

/// uuid
/// <p>
/// Value of Example (one of allowed types)
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueUuid As %String(MAXLEN = 1000000, XMLNAME = "valueUuid", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "example";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "example";

Storage Default
{
<Data name="exampleDefaultData">
<Subscript>"example"</Subscript>
<Value name="1">
<Value>label</Value>
</Value>
<Value name="2">
<Value>valueAddress</Value>
</Value>
<Value name="3">
<Value>valueAge</Value>
</Value>
<Value name="4">
<Value>valueAnnotation</Value>
</Value>
<Value name="5">
<Value>valueAttachment</Value>
</Value>
<Value name="6">
<Value>valueBase64Binary</Value>
</Value>
<Value name="7">
<Value>valueBoolean</Value>
</Value>
<Value name="8">
<Value>valueCanonical</Value>
</Value>
<Value name="9">
<Value>valueCode</Value>
</Value>
<Value name="10">
<Value>valueCodeableConcept</Value>
</Value>
<Value name="11">
<Value>valueCoding</Value>
</Value>
<Value name="12">
<Value>valueContactDetail</Value>
</Value>
<Value name="13">
<Value>valueContactPoint</Value>
</Value>
<Value name="14">
<Value>valueContributor</Value>
</Value>
<Value name="15">
<Value>valueCount</Value>
</Value>
<Value name="16">
<Value>valueDataRequirement</Value>
</Value>
<Value name="17">
<Value>valueDate</Value>
</Value>
<Value name="18">
<Value>valueDateTime</Value>
</Value>
<Value name="19">
<Value>valueDecimal</Value>
</Value>
<Value name="20">
<Value>valueDistance</Value>
</Value>
<Value name="21">
<Value>valueDosage</Value>
</Value>
<Value name="22">
<Value>valueDuration</Value>
</Value>
<Value name="23">
<Value>valueExpression</Value>
</Value>
<Value name="24">
<Value>valueHumanName</Value>
</Value>
<Value name="25">
<Value>valueId</Value>
</Value>
<Value name="26">
<Value>valueIdentifier</Value>
</Value>
<Value name="27">
<Value>valueInstant</Value>
</Value>
<Value name="28">
<Value>valueInteger</Value>
</Value>
<Value name="29">
<Value>valueMarkdown</Value>
</Value>
<Value name="30">
<Value>valueMeta</Value>
</Value>
<Value name="31">
<Value>valueMoney</Value>
</Value>
<Value name="32">
<Value>valueOid</Value>
</Value>
<Value name="33">
<Value>valueParameterDefinition</Value>
</Value>
<Value name="34">
<Value>valuePeriod</Value>
</Value>
<Value name="35">
<Value>valuePositiveInt</Value>
</Value>
<Value name="36">
<Value>valueQuantity</Value>
</Value>
<Value name="37">
<Value>valueRange</Value>
</Value>
<Value name="38">
<Value>valueRatio</Value>
</Value>
<Value name="39">
<Value>valueReference</Value>
</Value>
<Value name="40">
<Value>valueRelatedArtifact</Value>
</Value>
<Value name="41">
<Value>valueSampledData</Value>
</Value>
<Value name="42">
<Value>valueSignature</Value>
</Value>
<Value name="43">
<Value>valueString</Value>
</Value>
<Value name="44">
<Value>valueTime</Value>
</Value>
<Value name="45">
<Value>valueTiming</Value>
</Value>
<Value name="46">
<Value>valueTriggerDefinition</Value>
</Value>
<Value name="47">
<Value>valueUnsignedInt</Value>
</Value>
<Value name="48">
<Value>valueUri</Value>
</Value>
<Value name="49">
<Value>valueUrl</Value>
</Value>
<Value name="50">
<Value>valueUsageContext</Value>
</Value>
<Value name="51">
<Value>valueUuid</Value>
</Value>
</Data>
<DefaultData>exampleDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
