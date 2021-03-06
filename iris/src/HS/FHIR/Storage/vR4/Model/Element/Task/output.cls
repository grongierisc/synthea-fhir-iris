/// Information produced as part of task.
Class HS.FHIR.Storage.vR4.Model.Element.Task.output Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Label for output.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// Address
/// <p>
/// Result of output.
Property valueAddress As HS.FHIR.Storage.vR4.Model.Datatype.Address(XMLNAME = "valueAddress", XMLPROJECTION = "ELEMENT") [ Required ];

/// Age
/// <p>
/// Result of output.
Property valueAge As HS.FHIR.Storage.vR4.Model.Datatype.Age(XMLNAME = "valueAge", XMLPROJECTION = "ELEMENT") [ Required ];

/// Annotation
/// <p>
/// Result of output.
Property valueAnnotation As HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "valueAnnotation", XMLPROJECTION = "ELEMENT") [ Required ];

/// Attachment
/// <p>
/// Result of output.
Property valueAttachment As HS.FHIR.Storage.vR4.Model.Datatype.Attachment(XMLNAME = "valueAttachment", XMLPROJECTION = "ELEMENT") [ Required ];

/// base64Binary
/// <p>
/// Result of output.
Property valueBase64Binary As %Binary(XMLNAME = "valueBase64Binary", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// Result of output.
Property valueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// canonical
/// <p>
/// Result of output.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueCanonical As %String(MAXLEN = 1000000, XMLNAME = "valueCanonical", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// Result of output.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCode As %String(MAXLEN = 1000000, XMLNAME = "valueCode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Result of output.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "valueCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Coding
/// <p>
/// Result of output.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCoding As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "valueCoding", XMLPROJECTION = "ELEMENT") [ Required ];

/// ContactDetail
/// <p>
/// Result of output.
Property valueContactDetail As HS.FHIR.Storage.vR4.Model.Datatype.ContactDetail(XMLNAME = "valueContactDetail", XMLPROJECTION = "ELEMENT") [ Required ];

/// ContactPoint
/// <p>
/// Result of output.
Property valueContactPoint As HS.FHIR.Storage.vR4.Model.Datatype.ContactPoint(XMLNAME = "valueContactPoint", XMLPROJECTION = "ELEMENT") [ Required ];

/// Contributor
/// <p>
/// Result of output.
Property valueContributor As HS.FHIR.Storage.vR4.Model.Datatype.Contributor(XMLNAME = "valueContributor", XMLPROJECTION = "ELEMENT") [ Required ];

/// Count
/// <p>
/// Result of output.
Property valueCount As HS.FHIR.Storage.vR4.Model.Datatype.Count(XMLNAME = "valueCount", XMLPROJECTION = "ELEMENT") [ Required ];

/// DataRequirement
/// <p>
/// Result of output.
Property valueDataRequirement As HS.FHIR.Storage.vR4.Model.Datatype.DataRequirement(XMLNAME = "valueDataRequirement", XMLPROJECTION = "ELEMENT") [ Required ];

/// date
/// <p>
/// Result of output.
Property valueDate As %String(MAXLEN = 1000000, XMLNAME = "valueDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// dateTime
/// <p>
/// Result of output.
Property valueDateTime As %String(MAXLEN = 1000000, XMLNAME = "valueDateTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// decimal
/// <p>
/// Result of output.
Property valueDecimal As %Decimal(XMLNAME = "valueDecimal", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Distance
/// <p>
/// Result of output.
Property valueDistance As HS.FHIR.Storage.vR4.Model.Datatype.Distance(XMLNAME = "valueDistance", XMLPROJECTION = "ELEMENT") [ Required ];

/// Dosage
/// <p>
/// Result of output.
Property valueDosage As HS.FHIR.Storage.vR4.Model.Element.Dosage(XMLNAME = "valueDosage", XMLPROJECTION = "ELEMENT") [ Required ];

/// Duration
/// <p>
/// Result of output.
Property valueDuration As HS.FHIR.Storage.vR4.Model.Datatype.Duration(XMLNAME = "valueDuration", XMLPROJECTION = "ELEMENT") [ Required ];

/// Expression
/// <p>
/// Result of output.
Property valueExpression As HS.FHIR.Storage.vR4.Model.Datatype.Expression(XMLNAME = "valueExpression", XMLPROJECTION = "ELEMENT") [ Required ];

/// HumanName
/// <p>
/// Result of output.
Property valueHumanName As HS.FHIR.Storage.vR4.Model.Datatype.HumanName(XMLNAME = "valueHumanName", XMLPROJECTION = "ELEMENT") [ Required ];

/// id
/// <p>
/// Result of output.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueId As %String(MAXLEN = 1000000, XMLNAME = "valueId", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Identifier
/// <p>
/// Result of output.
Property valueIdentifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "valueIdentifier", XMLPROJECTION = "ELEMENT") [ Required ];

/// instant
/// <p>
/// Result of output.
Property valueInstant As %String(MAXLEN = 1000000, XMLNAME = "valueInstant", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// integer
/// <p>
/// Result of output.
Property valueInteger As %Integer(XMLNAME = "valueInteger", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// markdown
/// <p>
/// Result of output.
Property valueMarkdown As %String(MAXLEN = 1000000, XMLNAME = "valueMarkdown", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Meta
/// <p>
/// Result of output.
Property valueMeta As HS.FHIR.Storage.vR4.Model.Base.Meta(XMLNAME = "valueMeta", XMLPROJECTION = "ELEMENT") [ Required ];

/// Money
/// <p>
/// Result of output.
Property valueMoney As HS.FHIR.Storage.vR4.Model.Datatype.Money(XMLNAME = "valueMoney", XMLPROJECTION = "ELEMENT") [ Required ];

/// oid
/// <p>
/// Result of output.
Property valueOid As %String(MAXLEN = 1000000, XMLNAME = "valueOid", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// ParameterDefinition
/// <p>
/// Result of output.
Property valueParameterDefinition As HS.FHIR.Storage.vR4.Model.Datatype.ParameterDefinition(XMLNAME = "valueParameterDefinition", XMLPROJECTION = "ELEMENT") [ Required ];

/// Period
/// <p>
/// Result of output.
Property valuePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "valuePeriod", XMLPROJECTION = "ELEMENT") [ Required ];

/// positiveInt
/// <p>
/// Result of output.
Property valuePositiveInt As %Integer(XMLNAME = "valuePositiveInt", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Quantity
/// <p>
/// Result of output.
Property valueQuantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT") [ Required ];

/// Range
/// <p>
/// Result of output.
Property valueRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "valueRange", XMLPROJECTION = "ELEMENT") [ Required ];

/// Ratio
/// <p>
/// Result of output.
Property valueRatio As HS.FHIR.Storage.vR4.Model.Datatype.Ratio(XMLNAME = "valueRatio", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Result of output.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property valueReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "valueReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// RelatedArtifact
/// <p>
/// Result of output.
Property valueRelatedArtifact As HS.FHIR.Storage.vR4.Model.Datatype.RelatedArtifact(XMLNAME = "valueRelatedArtifact", XMLPROJECTION = "ELEMENT") [ Required ];

/// SampledData
/// <p>
/// Result of output.
Property valueSampledData As HS.FHIR.Storage.vR4.Model.Datatype.SampledData(XMLNAME = "valueSampledData", XMLPROJECTION = "ELEMENT") [ Required ];

/// Signature
/// <p>
/// Result of output.
Property valueSignature As HS.FHIR.Storage.vR4.Model.Datatype.Signature(XMLNAME = "valueSignature", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Result of output.
Property valueString As %String(MAXLEN = 1000000, XMLNAME = "valueString", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// time
/// <p>
/// Result of output.
Property valueTime As %String(MAXLEN = 1000000, XMLNAME = "valueTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Timing
/// <p>
/// Result of output.
Property valueTiming As HS.FHIR.Storage.vR4.Model.Datatype.Timing(XMLNAME = "valueTiming", XMLPROJECTION = "ELEMENT") [ Required ];

/// TriggerDefinition
/// <p>
/// Result of output.
Property valueTriggerDefinition As HS.FHIR.Storage.vR4.Model.Datatype.TriggerDefinition(XMLNAME = "valueTriggerDefinition", XMLPROJECTION = "ELEMENT") [ Required ];

/// unsignedInt
/// <p>
/// Result of output.
Property valueUnsignedInt As %Integer(XMLNAME = "valueUnsignedInt", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// uri
/// <p>
/// Result of output.
Property valueUri As %String(MAXLEN = 1000000, XMLNAME = "valueUri", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// url
/// <p>
/// Result of output.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueUrl As %String(MAXLEN = 1000000, XMLNAME = "valueUrl", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// UsageContext
/// <p>
/// Result of output.
Property valueUsageContext As HS.FHIR.Storage.vR4.Model.Datatype.UsageContext(XMLNAME = "valueUsageContext", XMLPROJECTION = "ELEMENT") [ Required ];

/// uuid
/// <p>
/// Result of output.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueUuid As %String(MAXLEN = 1000000, XMLNAME = "valueUuid", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Task.output";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Task.output";

Storage Default
{
<Data name="outputDefaultData">
<Subscript>"output"</Subscript>
<Value name="1">
<Value>type</Value>
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
<DefaultData>outputDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
