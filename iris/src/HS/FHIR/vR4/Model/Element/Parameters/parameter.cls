/// Operation Parameter.
Class HS.FHIR.vR4.Model.Element.Parameters.parameter Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Name from the definition.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Address
/// <p>
/// If parameter is a data type.
Property valueAddress As HS.FHIR.vR4.Model.Datatype.Address(XMLNAME = "valueAddress", XMLPROJECTION = "ELEMENT");

/// Age
/// <p>
/// If parameter is a data type.
Property valueAge As HS.FHIR.vR4.Model.Datatype.Age(XMLNAME = "valueAge", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// If parameter is a data type.
Property valueAnnotation As HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "valueAnnotation", XMLPROJECTION = "ELEMENT");

/// Attachment
/// <p>
/// If parameter is a data type.
Property valueAttachment As HS.FHIR.vR4.Model.Datatype.Attachment(XMLNAME = "valueAttachment", XMLPROJECTION = "ELEMENT");

/// base64Binary
/// <p>
/// If parameter is a data type.
Property valueBase64Binary As %Binary(XMLNAME = "valueBase64Binary", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// If parameter is a data type.
Property valueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// If parameter is a data type.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueCanonical As %String(MAXLEN = 1000000, XMLNAME = "valueCanonical", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// If parameter is a data type.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCode As %String(MAXLEN = 1000000, XMLNAME = "valueCode", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// If parameter is a data type.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "valueCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// If parameter is a data type.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCoding As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "valueCoding", XMLPROJECTION = "ELEMENT");

/// ContactDetail
/// <p>
/// If parameter is a data type.
Property valueContactDetail As HS.FHIR.vR4.Model.Datatype.ContactDetail(XMLNAME = "valueContactDetail", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// If parameter is a data type.
Property valueContactPoint As HS.FHIR.vR4.Model.Datatype.ContactPoint(XMLNAME = "valueContactPoint", XMLPROJECTION = "ELEMENT");

/// Contributor
/// <p>
/// If parameter is a data type.
Property valueContributor As HS.FHIR.vR4.Model.Datatype.Contributor(XMLNAME = "valueContributor", XMLPROJECTION = "ELEMENT");

/// Count
/// <p>
/// If parameter is a data type.
Property valueCount As HS.FHIR.vR4.Model.Datatype.Count(XMLNAME = "valueCount", XMLPROJECTION = "ELEMENT");

/// DataRequirement
/// <p>
/// If parameter is a data type.
Property valueDataRequirement As HS.FHIR.vR4.Model.Datatype.DataRequirement(XMLNAME = "valueDataRequirement", XMLPROJECTION = "ELEMENT");

/// date
/// <p>
/// If parameter is a data type.
Property valueDate As %String(MAXLEN = 1000000, XMLNAME = "valueDate", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// If parameter is a data type.
Property valueDateTime As %String(MAXLEN = 1000000, XMLNAME = "valueDateTime", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// If parameter is a data type.
Property valueDecimal As %Decimal(XMLNAME = "valueDecimal", XMLPROJECTION = "ATTRIBUTE");

/// Distance
/// <p>
/// If parameter is a data type.
Property valueDistance As HS.FHIR.vR4.Model.Datatype.Distance(XMLNAME = "valueDistance", XMLPROJECTION = "ELEMENT");

/// Dosage
/// <p>
/// If parameter is a data type.
Property valueDosage As HS.FHIR.vR4.Model.Element.Dosage(XMLNAME = "valueDosage", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// If parameter is a data type.
Property valueDuration As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "valueDuration", XMLPROJECTION = "ELEMENT");

/// Expression
/// <p>
/// If parameter is a data type.
Property valueExpression As HS.FHIR.vR4.Model.Datatype.Expression(XMLNAME = "valueExpression", XMLPROJECTION = "ELEMENT");

/// HumanName
/// <p>
/// If parameter is a data type.
Property valueHumanName As HS.FHIR.vR4.Model.Datatype.HumanName(XMLNAME = "valueHumanName", XMLPROJECTION = "ELEMENT");

/// id
/// <p>
/// If parameter is a data type.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueId As %String(MAXLEN = 1000000, XMLNAME = "valueId", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// If parameter is a data type.
Property valueIdentifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "valueIdentifier", XMLPROJECTION = "ELEMENT");

/// instant
/// <p>
/// If parameter is a data type.
Property valueInstant As %String(MAXLEN = 1000000, XMLNAME = "valueInstant", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// If parameter is a data type.
Property valueInteger As %Integer(XMLNAME = "valueInteger", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// If parameter is a data type.
Property valueMarkdown As %String(MAXLEN = 1000000, XMLNAME = "valueMarkdown", XMLPROJECTION = "ATTRIBUTE");

/// Meta
/// <p>
/// If parameter is a data type.
Property valueMeta As HS.FHIR.vR4.Model.Base.Meta(XMLNAME = "valueMeta", XMLPROJECTION = "ELEMENT");

/// Money
/// <p>
/// If parameter is a data type.
Property valueMoney As HS.FHIR.vR4.Model.Datatype.Money(XMLNAME = "valueMoney", XMLPROJECTION = "ELEMENT");

/// oid
/// <p>
/// If parameter is a data type.
Property valueOid As %String(MAXLEN = 1000000, XMLNAME = "valueOid", XMLPROJECTION = "ATTRIBUTE");

/// ParameterDefinition
/// <p>
/// If parameter is a data type.
Property valueParameterDefinition As HS.FHIR.vR4.Model.Datatype.ParameterDefinition(XMLNAME = "valueParameterDefinition", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// If parameter is a data type.
Property valuePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "valuePeriod", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// If parameter is a data type.
Property valuePositiveInt As %Integer(XMLNAME = "valuePositiveInt", XMLPROJECTION = "ATTRIBUTE");

/// Quantity
/// <p>
/// If parameter is a data type.
Property valueQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// If parameter is a data type.
Property valueRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "valueRange", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// If parameter is a data type.
Property valueRatio As HS.FHIR.vR4.Model.Datatype.Ratio(XMLNAME = "valueRatio", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// If parameter is a data type.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property valueReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "valueReference", XMLPROJECTION = "ELEMENT");

/// RelatedArtifact
/// <p>
/// If parameter is a data type.
Property valueRelatedArtifact As HS.FHIR.vR4.Model.Datatype.RelatedArtifact(XMLNAME = "valueRelatedArtifact", XMLPROJECTION = "ELEMENT");

/// SampledData
/// <p>
/// If parameter is a data type.
Property valueSampledData As HS.FHIR.vR4.Model.Datatype.SampledData(XMLNAME = "valueSampledData", XMLPROJECTION = "ELEMENT");

/// Signature
/// <p>
/// If parameter is a data type.
Property valueSignature As HS.FHIR.vR4.Model.Datatype.Signature(XMLNAME = "valueSignature", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// If parameter is a data type.
Property valueString As %String(MAXLEN = 1000000, XMLNAME = "valueString", XMLPROJECTION = "ATTRIBUTE");

/// time
/// <p>
/// If parameter is a data type.
Property valueTime As %String(MAXLEN = 1000000, XMLNAME = "valueTime", XMLPROJECTION = "ATTRIBUTE");

/// Timing
/// <p>
/// If parameter is a data type.
Property valueTiming As HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "valueTiming", XMLPROJECTION = "ELEMENT");

/// TriggerDefinition
/// <p>
/// If parameter is a data type.
Property valueTriggerDefinition As HS.FHIR.vR4.Model.Datatype.TriggerDefinition(XMLNAME = "valueTriggerDefinition", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// If parameter is a data type.
Property valueUnsignedInt As %Integer(XMLNAME = "valueUnsignedInt", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// If parameter is a data type.
Property valueUri As %String(MAXLEN = 1000000, XMLNAME = "valueUri", XMLPROJECTION = "ATTRIBUTE");

/// url
/// <p>
/// If parameter is a data type.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueUrl As %String(MAXLEN = 1000000, XMLNAME = "valueUrl", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// If parameter is a data type.
Property valueUsageContext As HS.FHIR.vR4.Model.Datatype.UsageContext(XMLNAME = "valueUsageContext", XMLPROJECTION = "ELEMENT");

/// uuid
/// <p>
/// If parameter is a data type.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property valueUuid As %String(MAXLEN = 1000000, XMLNAME = "valueUuid", XMLPROJECTION = "ATTRIBUTE");

/// Resource
/// <p>
/// If parameter is a whole resource.
Property resource As HS.FHIR.vR4.Model.Base.Resource(XMLNAME = "resource", XMLPROJECTION = "ELEMENT");

/// Parameters:parameter
/// <p>
/// Named part of a multi-part parameter.
Property part As List Of HS.FHIR.vR4.Model.Element.Parameters.parameter(XMLNAME = "part", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Parameters.parameter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Parameters.parameter";

}
