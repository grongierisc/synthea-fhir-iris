/// Information used to perform task.
Class HS.FHIR.vR4.Model.Element.Task.input Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Label for the input.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// Address
/// <p>
/// Content to use in performing the task.
Property valueAddress As HS.FHIR.vR4.Model.Datatype.Address(XMLNAME = "valueAddress", XMLPROJECTION = "ELEMENT") [ Required ];

/// Age
/// <p>
/// Content to use in performing the task.
Property valueAge As HS.FHIR.vR4.Model.Datatype.Age(XMLNAME = "valueAge", XMLPROJECTION = "ELEMENT") [ Required ];

/// Annotation
/// <p>
/// Content to use in performing the task.
Property valueAnnotation As HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "valueAnnotation", XMLPROJECTION = "ELEMENT") [ Required ];

/// Attachment
/// <p>
/// Content to use in performing the task.
Property valueAttachment As HS.FHIR.vR4.Model.Datatype.Attachment(XMLNAME = "valueAttachment", XMLPROJECTION = "ELEMENT") [ Required ];

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
Property valueCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "valueCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Coding
/// <p>
/// Content to use in performing the task.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCoding As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "valueCoding", XMLPROJECTION = "ELEMENT") [ Required ];

/// ContactDetail
/// <p>
/// Content to use in performing the task.
Property valueContactDetail As HS.FHIR.vR4.Model.Datatype.ContactDetail(XMLNAME = "valueContactDetail", XMLPROJECTION = "ELEMENT") [ Required ];

/// ContactPoint
/// <p>
/// Content to use in performing the task.
Property valueContactPoint As HS.FHIR.vR4.Model.Datatype.ContactPoint(XMLNAME = "valueContactPoint", XMLPROJECTION = "ELEMENT") [ Required ];

/// Contributor
/// <p>
/// Content to use in performing the task.
Property valueContributor As HS.FHIR.vR4.Model.Datatype.Contributor(XMLNAME = "valueContributor", XMLPROJECTION = "ELEMENT") [ Required ];

/// Count
/// <p>
/// Content to use in performing the task.
Property valueCount As HS.FHIR.vR4.Model.Datatype.Count(XMLNAME = "valueCount", XMLPROJECTION = "ELEMENT") [ Required ];

/// DataRequirement
/// <p>
/// Content to use in performing the task.
Property valueDataRequirement As HS.FHIR.vR4.Model.Datatype.DataRequirement(XMLNAME = "valueDataRequirement", XMLPROJECTION = "ELEMENT") [ Required ];

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
Property valueDistance As HS.FHIR.vR4.Model.Datatype.Distance(XMLNAME = "valueDistance", XMLPROJECTION = "ELEMENT") [ Required ];

/// Dosage
/// <p>
/// Content to use in performing the task.
Property valueDosage As HS.FHIR.vR4.Model.Element.Dosage(XMLNAME = "valueDosage", XMLPROJECTION = "ELEMENT") [ Required ];

/// Duration
/// <p>
/// Content to use in performing the task.
Property valueDuration As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "valueDuration", XMLPROJECTION = "ELEMENT") [ Required ];

/// Expression
/// <p>
/// Content to use in performing the task.
Property valueExpression As HS.FHIR.vR4.Model.Datatype.Expression(XMLNAME = "valueExpression", XMLPROJECTION = "ELEMENT") [ Required ];

/// HumanName
/// <p>
/// Content to use in performing the task.
Property valueHumanName As HS.FHIR.vR4.Model.Datatype.HumanName(XMLNAME = "valueHumanName", XMLPROJECTION = "ELEMENT") [ Required ];

/// id
/// <p>
/// Content to use in performing the task.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueId As %String(MAXLEN = 1000000, XMLNAME = "valueId", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Identifier
/// <p>
/// Content to use in performing the task.
Property valueIdentifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "valueIdentifier", XMLPROJECTION = "ELEMENT") [ Required ];

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
Property valueMeta As HS.FHIR.vR4.Model.Base.Meta(XMLNAME = "valueMeta", XMLPROJECTION = "ELEMENT") [ Required ];

/// Money
/// <p>
/// Content to use in performing the task.
Property valueMoney As HS.FHIR.vR4.Model.Datatype.Money(XMLNAME = "valueMoney", XMLPROJECTION = "ELEMENT") [ Required ];

/// oid
/// <p>
/// Content to use in performing the task.
Property valueOid As %String(MAXLEN = 1000000, XMLNAME = "valueOid", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// ParameterDefinition
/// <p>
/// Content to use in performing the task.
Property valueParameterDefinition As HS.FHIR.vR4.Model.Datatype.ParameterDefinition(XMLNAME = "valueParameterDefinition", XMLPROJECTION = "ELEMENT") [ Required ];

/// Period
/// <p>
/// Content to use in performing the task.
Property valuePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "valuePeriod", XMLPROJECTION = "ELEMENT") [ Required ];

/// positiveInt
/// <p>
/// Content to use in performing the task.
Property valuePositiveInt As %Integer(XMLNAME = "valuePositiveInt", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Quantity
/// <p>
/// Content to use in performing the task.
Property valueQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT") [ Required ];

/// Range
/// <p>
/// Content to use in performing the task.
Property valueRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "valueRange", XMLPROJECTION = "ELEMENT") [ Required ];

/// Ratio
/// <p>
/// Content to use in performing the task.
Property valueRatio As HS.FHIR.vR4.Model.Datatype.Ratio(XMLNAME = "valueRatio", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Content to use in performing the task.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property valueReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "valueReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// RelatedArtifact
/// <p>
/// Content to use in performing the task.
Property valueRelatedArtifact As HS.FHIR.vR4.Model.Datatype.RelatedArtifact(XMLNAME = "valueRelatedArtifact", XMLPROJECTION = "ELEMENT") [ Required ];

/// SampledData
/// <p>
/// Content to use in performing the task.
Property valueSampledData As HS.FHIR.vR4.Model.Datatype.SampledData(XMLNAME = "valueSampledData", XMLPROJECTION = "ELEMENT") [ Required ];

/// Signature
/// <p>
/// Content to use in performing the task.
Property valueSignature As HS.FHIR.vR4.Model.Datatype.Signature(XMLNAME = "valueSignature", XMLPROJECTION = "ELEMENT") [ Required ];

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
Property valueTiming As HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "valueTiming", XMLPROJECTION = "ELEMENT") [ Required ];

/// TriggerDefinition
/// <p>
/// Content to use in performing the task.
Property valueTriggerDefinition As HS.FHIR.vR4.Model.Datatype.TriggerDefinition(XMLNAME = "valueTriggerDefinition", XMLPROJECTION = "ELEMENT") [ Required ];

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
Property valueUsageContext As HS.FHIR.vR4.Model.Datatype.UsageContext(XMLNAME = "valueUsageContext", XMLPROJECTION = "ELEMENT") [ Required ];

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

}
