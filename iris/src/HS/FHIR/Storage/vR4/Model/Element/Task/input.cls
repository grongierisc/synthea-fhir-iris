/// Information used to perform task.
Class HS.FHIR.Storage.vR4.Model.Element.Task.input Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Label for the input.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// Address
/// <p>
/// Content to use in performing the task.
Property valueAddress As HS.FHIR.Storage.vR4.Model.Datatype.Address(XMLNAME = "valueAddress", XMLPROJECTION = "ELEMENT") [ Required ];

/// Age
/// <p>
/// Content to use in performing the task.
Property valueAge As HS.FHIR.Storage.vR4.Model.Datatype.Age(XMLNAME = "valueAge", XMLPROJECTION = "ELEMENT") [ Required ];

/// Annotation
/// <p>
/// Content to use in performing the task.
Property valueAnnotation As HS.FHIR.Storage.vR4.Model.Datatype.Annotation(XMLNAME = "valueAnnotation", XMLPROJECTION = "ELEMENT") [ Required ];

/// Attachment
/// <p>
/// Content to use in performing the task.
Property valueAttachment As HS.FHIR.Storage.vR4.Model.Datatype.Attachment(XMLNAME = "valueAttachment", XMLPROJECTION = "ELEMENT") [ Required ];

/// base64Binary
/// <p>
/// Content to use in performing the task.
Property valueBase64Binary As %Binary(XMLNAME = "valueBase64Binary", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// Content to use in performing the task.
Property valueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// canonical
/// <p>
/// Content to use in performing the task.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueCanonical As %String(MAXLEN = 1000000, XMLNAME = "valueCanonical", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// Content to use in performing the task.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCode As %String(MAXLEN = 1000000, XMLNAME = "valueCode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Content to use in performing the task.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "valueCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Coding
/// <p>
/// Content to use in performing the task.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCoding As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "valueCoding", XMLPROJECTION = "ELEMENT") [ Required ];

/// ContactDetail
/// <p>
/// Content to use in performing the task.
Property valueContactDetail As HS.FHIR.Storage.vR4.Model.Datatype.ContactDetail(XMLNAME = "valueContactDetail", XMLPROJECTION = "ELEMENT") [ Required ];

/// ContactPoint
/// <p>
/// Content to use in performing the task.
Property valueContactPoint As HS.FHIR.Storage.vR4.Model.Datatype.ContactPoint(XMLNAME = "valueContactPoint", XMLPROJECTION = "ELEMENT") [ Required ];

/// Contributor
/// <p>
/// Content to use in performing the task.
Property valueContributor As HS.FHIR.Storage.vR4.Model.Datatype.Contributor(XMLNAME = "valueContributor", XMLPROJECTION = "ELEMENT") [ Required ];

/// Count
/// <p>
/// Content to use in performing the task.
Property valueCount As HS.FHIR.Storage.vR4.Model.Datatype.Count(XMLNAME = "valueCount", XMLPROJECTION = "ELEMENT") [ Required ];

/// DataRequirement
/// <p>
/// Content to use in performing the task.
Property valueDataRequirement As HS.FHIR.Storage.vR4.Model.Datatype.DataRequirement(XMLNAME = "valueDataRequirement", XMLPROJECTION = "ELEMENT") [ Required ];

/// date
/// <p>
/// Content to use in performing the task.
Property valueDate As %String(MAXLEN = 1000000, XMLNAME = "valueDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// dateTime
/// <p>
/// Content to use in performing the task.
Property valueDateTime As %String(MAXLEN = 1000000, XMLNAME = "valueDateTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// decimal
/// <p>
/// Content to use in performing the task.
Property valueDecimal As %Decimal(XMLNAME = "valueDecimal", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Distance
/// <p>
/// Content to use in performing the task.
Property valueDistance As HS.FHIR.Storage.vR4.Model.Datatype.Distance(XMLNAME = "valueDistance", XMLPROJECTION = "ELEMENT") [ Required ];

/// Dosage
/// <p>
/// Content to use in performing the task.
Property valueDosage As HS.FHIR.Storage.vR4.Model.Element.Dosage(XMLNAME = "valueDosage", XMLPROJECTION = "ELEMENT") [ Required ];

/// Duration
/// <p>
/// Content to use in performing the task.
Property valueDuration As HS.FHIR.Storage.vR4.Model.Datatype.Duration(XMLNAME = "valueDuration", XMLPROJECTION = "ELEMENT") [ Required ];

/// Expression
/// <p>
/// Content to use in performing the task.
Property valueExpression As HS.FHIR.Storage.vR4.Model.Datatype.Expression(XMLNAME = "valueExpression", XMLPROJECTION = "ELEMENT") [ Required ];

/// HumanName
/// <p>
/// Content to use in performing the task.
Property valueHumanName As HS.FHIR.Storage.vR4.Model.Datatype.HumanName(XMLNAME = "valueHumanName", XMLPROJECTION = "ELEMENT") [ Required ];

/// id
/// <p>
/// Content to use in performing the task.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueId As %String(MAXLEN = 1000000, XMLNAME = "valueId", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Identifier
/// <p>
/// Content to use in performing the task.
Property valueIdentifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "valueIdentifier", XMLPROJECTION = "ELEMENT") [ Required ];

/// instant
/// <p>
/// Content to use in performing the task.
Property valueInstant As %String(MAXLEN = 1000000, XMLNAME = "valueInstant", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// integer
/// <p>
/// Content to use in performing the task.
Property valueInteger As %Integer(XMLNAME = "valueInteger", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// markdown
/// <p>
/// Content to use in performing the task.
Property valueMarkdown As %String(MAXLEN = 1000000, XMLNAME = "valueMarkdown", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Meta
/// <p>
/// Content to use in performing the task.
Property valueMeta As HS.FHIR.Storage.vR4.Model.Base.Meta(XMLNAME = "valueMeta", XMLPROJECTION = "ELEMENT") [ Required ];

/// Money
/// <p>
/// Content to use in performing the task.
Property valueMoney As HS.FHIR.Storage.vR4.Model.Datatype.Money(XMLNAME = "valueMoney", XMLPROJECTION = "ELEMENT") [ Required ];

/// oid
/// <p>
/// Content to use in performing the task.
Property valueOid As %String(MAXLEN = 1000000, XMLNAME = "valueOid", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// ParameterDefinition
/// <p>
/// Content to use in performing the task.
Property valueParameterDefinition As HS.FHIR.Storage.vR4.Model.Datatype.ParameterDefinition(XMLNAME = "valueParameterDefinition", XMLPROJECTION = "ELEMENT") [ Required ];

/// Period
/// <p>
/// Content to use in performing the task.
Property valuePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "valuePeriod", XMLPROJECTION = "ELEMENT") [ Required ];

/// positiveInt
/// <p>
/// Content to use in performing the task.
Property valuePositiveInt As %Integer(XMLNAME = "valuePositiveInt", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Quantity
/// <p>
/// Content to use in performing the task.
Property valueQuantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT") [ Required ];

/// Range
/// <p>
/// Content to use in performing the task.
Property valueRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "valueRange", XMLPROJECTION = "ELEMENT") [ Required ];

/// Ratio
/// <p>
/// Content to use in performing the task.
Property valueRatio As HS.FHIR.Storage.vR4.Model.Datatype.Ratio(XMLNAME = "valueRatio", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Content to use in performing the task.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property valueReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "valueReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// RelatedArtifact
/// <p>
/// Content to use in performing the task.
Property valueRelatedArtifact As HS.FHIR.Storage.vR4.Model.Datatype.RelatedArtifact(XMLNAME = "valueRelatedArtifact", XMLPROJECTION = "ELEMENT") [ Required ];

/// SampledData
/// <p>
/// Content to use in performing the task.
Property valueSampledData As HS.FHIR.Storage.vR4.Model.Datatype.SampledData(XMLNAME = "valueSampledData", XMLPROJECTION = "ELEMENT") [ Required ];

/// Signature
/// <p>
/// Content to use in performing the task.
Property valueSignature As HS.FHIR.Storage.vR4.Model.Datatype.Signature(XMLNAME = "valueSignature", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Content to use in performing the task.
Property valueString As %String(MAXLEN = 1000000, XMLNAME = "valueString", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// time
/// <p>
/// Content to use in performing the task.
Property valueTime As %String(MAXLEN = 1000000, XMLNAME = "valueTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Timing
/// <p>
/// Content to use in performing the task.
Property valueTiming As HS.FHIR.Storage.vR4.Model.Datatype.Timing(XMLNAME = "valueTiming", XMLPROJECTION = "ELEMENT") [ Required ];

/// TriggerDefinition
/// <p>
/// Content to use in performing the task.
Property valueTriggerDefinition As HS.FHIR.Storage.vR4.Model.Datatype.TriggerDefinition(XMLNAME = "valueTriggerDefinition", XMLPROJECTION = "ELEMENT") [ Required ];

/// unsignedInt
/// <p>
/// Content to use in performing the task.
Property valueUnsignedInt As %Integer(XMLNAME = "valueUnsignedInt", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// uri
/// <p>
/// Content to use in performing the task.
Property valueUri As %String(MAXLEN = 1000000, XMLNAME = "valueUri", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// url
/// <p>
/// Content to use in performing the task.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueUrl As %String(MAXLEN = 1000000, XMLNAME = "valueUrl", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// UsageContext
/// <p>
/// Content to use in performing the task.
Property valueUsageContext As HS.FHIR.Storage.vR4.Model.Datatype.UsageContext(XMLNAME = "valueUsageContext", XMLPROJECTION = "ELEMENT") [ Required ];

/// uuid
/// <p>
/// Content to use in performing the task.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueUuid As %String(MAXLEN = 1000000, XMLNAME = "valueUuid", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Task.input";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Task.input";

Storage Default
{
<Data name="inputDefaultData">
<Subscript>"input"</Subscript>
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
<DefaultData>inputDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
