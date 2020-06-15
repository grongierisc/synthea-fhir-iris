/// Optional Extensions Element.
Class HS.FHIR.vR4.Model.Base.Extension Extends (%Persistent, HS.FHIR.vR4.Model.Base.Element) [ Not ProcedureBlock ]
{

Property url As %String(MAXLEN = 100000) [ Required ];

/// Address
/// <p>
/// Value of extension.
Property valueAddress As HS.FHIR.vR4.Model.Datatype.Address(XMLNAME = "valueAddress", XMLPROJECTION = "ELEMENT");

/// Age
/// <p>
/// Value of extension.
Property valueAge As HS.FHIR.vR4.Model.Datatype.Age(XMLNAME = "valueAge", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Value of extension.
Property valueAnnotation As HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "valueAnnotation", XMLPROJECTION = "ELEMENT");

/// Attachment
/// <p>
/// Value of extension.
Property valueAttachment As HS.FHIR.vR4.Model.Datatype.Attachment(XMLNAME = "valueAttachment", XMLPROJECTION = "ELEMENT");

/// base64Binary
/// <p>
/// Value of extension.
Property valueBase64Binary As %Binary(XMLNAME = "valueBase64Binary", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Value of extension.
Property valueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Value of extension.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueCanonical As %String(MAXLEN = 1000000, XMLNAME = "valueCanonical", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Value of extension.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCode As %String(MAXLEN = 1000000, XMLNAME = "valueCode", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Value of extension.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "valueCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Value of extension.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCoding As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "valueCoding", XMLPROJECTION = "ELEMENT");

/// ContactDetail
/// <p>
/// Value of extension.
Property valueContactDetail As HS.FHIR.vR4.Model.Datatype.ContactDetail(XMLNAME = "valueContactDetail", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// Value of extension.
Property valueContactPoint As HS.FHIR.vR4.Model.Datatype.ContactPoint(XMLNAME = "valueContactPoint", XMLPROJECTION = "ELEMENT");

/// Contributor
/// <p>
/// Value of extension.
Property valueContributor As HS.FHIR.vR4.Model.Datatype.Contributor(XMLNAME = "valueContributor", XMLPROJECTION = "ELEMENT");

/// Count
/// <p>
/// Value of extension.
Property valueCount As HS.FHIR.vR4.Model.Datatype.Count(XMLNAME = "valueCount", XMLPROJECTION = "ELEMENT");

/// DataRequirement
/// <p>
/// Value of extension.
Property valueDataRequirement As HS.FHIR.vR4.Model.Datatype.DataRequirement(XMLNAME = "valueDataRequirement", XMLPROJECTION = "ELEMENT");

/// date
/// <p>
/// Value of extension.
Property valueDate As %String(MAXLEN = 1000000, XMLNAME = "valueDate", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Value of extension.
Property valueDateTime As %String(MAXLEN = 1000000, XMLNAME = "valueDateTime", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Value of extension.
Property valueDecimal As %Decimal(XMLNAME = "valueDecimal", XMLPROJECTION = "ATTRIBUTE");

/// Distance
/// <p>
/// Value of extension.
Property valueDistance As HS.FHIR.vR4.Model.Datatype.Distance(XMLNAME = "valueDistance", XMLPROJECTION = "ELEMENT");

/// Dosage
/// <p>
/// Value of extension.
Property valueDosage As HS.FHIR.vR4.Model.Element.Dosage(XMLNAME = "valueDosage", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// Value of extension.
Property valueDuration As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "valueDuration", XMLPROJECTION = "ELEMENT");

/// Expression
/// <p>
/// Value of extension.
Property valueExpression As HS.FHIR.vR4.Model.Datatype.Expression(XMLNAME = "valueExpression", XMLPROJECTION = "ELEMENT");

/// HumanName
/// <p>
/// Value of extension.
Property valueHumanName As HS.FHIR.vR4.Model.Datatype.HumanName(XMLNAME = "valueHumanName", XMLPROJECTION = "ELEMENT");

/// id
/// <p>
/// Value of extension.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueId As %String(MAXLEN = 1000000, XMLNAME = "valueId", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// Value of extension.
Property valueIdentifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "valueIdentifier", XMLPROJECTION = "ELEMENT");

/// instant
/// <p>
/// Value of extension.
Property valueInstant As %String(MAXLEN = 1000000, XMLNAME = "valueInstant", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Value of extension.
Property valueInteger As %Integer(XMLNAME = "valueInteger", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Value of extension.
Property valueMarkdown As %String(MAXLEN = 1000000, XMLNAME = "valueMarkdown", XMLPROJECTION = "ATTRIBUTE");

/// Meta
/// <p>
/// Value of extension.
Property valueMeta As HS.FHIR.vR4.Model.Base.Meta(XMLNAME = "valueMeta", XMLPROJECTION = "ELEMENT");

/// Money
/// <p>
/// Value of extension.
Property valueMoney As HS.FHIR.vR4.Model.Datatype.Money(XMLNAME = "valueMoney", XMLPROJECTION = "ELEMENT");

/// oid
/// <p>
/// Value of extension.
Property valueOid As %String(MAXLEN = 1000000, XMLNAME = "valueOid", XMLPROJECTION = "ATTRIBUTE");

/// ParameterDefinition
/// <p>
/// Value of extension.
Property valueParameterDefinition As HS.FHIR.vR4.Model.Datatype.ParameterDefinition(XMLNAME = "valueParameterDefinition", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Value of extension.
Property valuePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "valuePeriod", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Value of extension.
Property valuePositiveInt As %Integer(XMLNAME = "valuePositiveInt", XMLPROJECTION = "ATTRIBUTE");

/// Quantity
/// <p>
/// Value of extension.
Property valueQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Value of extension.
Property valueRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "valueRange", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// Value of extension.
Property valueRatio As HS.FHIR.vR4.Model.Datatype.Ratio(XMLNAME = "valueRatio", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Value of extension.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property valueReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "valueReference", XMLPROJECTION = "ELEMENT");

/// RelatedArtifact
/// <p>
/// Value of extension.
Property valueRelatedArtifact As HS.FHIR.vR4.Model.Datatype.RelatedArtifact(XMLNAME = "valueRelatedArtifact", XMLPROJECTION = "ELEMENT");

/// SampledData
/// <p>
/// Value of extension.
Property valueSampledData As HS.FHIR.vR4.Model.Datatype.SampledData(XMLNAME = "valueSampledData", XMLPROJECTION = "ELEMENT");

/// Signature
/// <p>
/// Value of extension.
Property valueSignature As HS.FHIR.vR4.Model.Datatype.Signature(XMLNAME = "valueSignature", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Value of extension.
Property valueString As %String(MAXLEN = 1000000, XMLNAME = "valueString", XMLPROJECTION = "ATTRIBUTE");

/// time
/// <p>
/// Value of extension.
Property valueTime As %String(MAXLEN = 1000000, XMLNAME = "valueTime", XMLPROJECTION = "ATTRIBUTE");

/// Timing
/// <p>
/// Value of extension.
Property valueTiming As HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "valueTiming", XMLPROJECTION = "ELEMENT");

/// TriggerDefinition
/// <p>
/// Value of extension.
Property valueTriggerDefinition As HS.FHIR.vR4.Model.Datatype.TriggerDefinition(XMLNAME = "valueTriggerDefinition", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// Value of extension.
Property valueUnsignedInt As %Integer(XMLNAME = "valueUnsignedInt", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Value of extension.
Property valueUri As %String(MAXLEN = 1000000, XMLNAME = "valueUri", XMLPROJECTION = "ATTRIBUTE");

/// url
/// <p>
/// Value of extension.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueUrl As %String(MAXLEN = 1000000, XMLNAME = "valueUrl", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// Value of extension.
Property valueUsageContext As HS.FHIR.vR4.Model.Datatype.UsageContext(XMLNAME = "valueUsageContext", XMLPROJECTION = "ELEMENT");

/// uuid
/// <p>
/// Value of extension.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueUuid As %String(MAXLEN = 1000000, XMLNAME = "valueUuid", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Extension";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Extension";

Storage Default
{
<Data name="ExtensionDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>id</Value>
</Value>
<Value name="3">
<Value>extension</Value>
</Value>
<Value name="4">
<Value>newResource</Value>
</Value>
<Value name="5">
<Value>newResourceReference</Value>
</Value>
<Value name="6">
<Value>primitiveExtension</Value>
</Value>
<Value name="7">
<Value>valueBase64Binary</Value>
</Value>
<Value name="8">
<Value>valueBoolean</Value>
</Value>
<Value name="9">
<Value>valueCanonical</Value>
</Value>
<Value name="10">
<Value>valueCode</Value>
</Value>
<Value name="11">
<Value>valueCodeableConcept</Value>
</Value>
<Value name="12">
<Value>valueCoding</Value>
</Value>
<Value name="13">
<Value>valueContactDetail</Value>
</Value>
<Value name="14">
<Value>valueContactPoint</Value>
</Value>
<Value name="15">
<Value>valueContributor</Value>
</Value>
<Value name="16">
<Value>valueCount</Value>
</Value>
<Value name="17">
<Value>valueDataRequirement</Value>
</Value>
<Value name="18">
<Value>valueDate</Value>
</Value>
<Value name="19">
<Value>valueDateTime</Value>
</Value>
<Value name="20">
<Value>valueDecimal</Value>
</Value>
<Value name="21">
<Value>valueDistance</Value>
</Value>
<Value name="22">
<Value>valueDosage</Value>
</Value>
<Value name="23">
<Value>valueDuration</Value>
</Value>
<Value name="24">
<Value>valueExpression</Value>
</Value>
<Value name="25">
<Value>valueHumanName</Value>
</Value>
<Value name="26">
<Value>valueId</Value>
</Value>
<Value name="27">
<Value>valueIdentifier</Value>
</Value>
<Value name="28">
<Value>valueInstant</Value>
</Value>
<Value name="29">
<Value>valueInteger</Value>
</Value>
<Value name="30">
<Value>valueMarkdown</Value>
</Value>
<Value name="31">
<Value>valueMeta</Value>
</Value>
<Value name="32">
<Value>valueMoney</Value>
</Value>
<Value name="33">
<Value>valueOid</Value>
</Value>
<Value name="34">
<Value>valueParameterDefinition</Value>
</Value>
<Value name="35">
<Value>valuePeriod</Value>
</Value>
<Value name="36">
<Value>valuePositiveInt</Value>
</Value>
<Value name="37">
<Value>valueQuantity</Value>
</Value>
<Value name="38">
<Value>valueRange</Value>
</Value>
<Value name="39">
<Value>valueRatio</Value>
</Value>
<Value name="40">
<Value>valueReference</Value>
</Value>
<Value name="41">
<Value>valueRelatedArtifact</Value>
</Value>
<Value name="42">
<Value>valueSampledData</Value>
</Value>
<Value name="43">
<Value>valueSignature</Value>
</Value>
<Value name="44">
<Value>valueString</Value>
</Value>
<Value name="45">
<Value>valueTime</Value>
</Value>
<Value name="46">
<Value>valueTiming</Value>
</Value>
<Value name="47">
<Value>valueTriggerDefinition</Value>
</Value>
<Value name="48">
<Value>valueUnsignedInt</Value>
</Value>
<Value name="49">
<Value>valueUri</Value>
</Value>
<Value name="50">
<Value>valueUrl</Value>
</Value>
<Value name="51">
<Value>valueUsageContext</Value>
</Value>
<Value name="52">
<Value>valueUuid</Value>
</Value>
<Value name="53">
<Value>url</Value>
</Value>
<Value name="54">
<Value>valueAddress</Value>
</Value>
<Value name="55">
<Value>valueAge</Value>
</Value>
<Value name="56">
<Value>valueAnnotation</Value>
</Value>
<Value name="57">
<Value>valueAttachment</Value>
</Value>
</Data>
<DataLocation>^HS.FHIR.vR4.Mode5F25.ExtensionD</DataLocation>
<DefaultData>ExtensionDefaultData</DefaultData>
<IdLocation>^HS.FHIR.vR4.Mode5F25.ExtensionD</IdLocation>
<IndexLocation>^HS.FHIR.vR4.Mode5F25.ExtensionI</IndexLocation>
<StreamLocation>^HS.FHIR.vR4.Mode5F25.ExtensionS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
