/// Source inputs to the mapping.
Class HS.FHIR.vR4.Model.Element.StructureMap.group.rule.source Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// id
/// <p>
/// Type or variable this rule applies to.
Property context As %String(MAXLEN = 1000000, XMLNAME = "context", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// integer
/// <p>
/// Specified minimum cardinality.
Property min As %Integer(XMLNAME = "min", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Specified maximum cardinality (number or *)
Property max As %String(MAXLEN = 1000000, XMLNAME = "max", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Rule only applies if source has this type.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");

/// Address
/// <p>
/// Default value if no value exists.
Property defaultValueAddress As HS.FHIR.vR4.Model.Datatype.Address(XMLNAME = "defaultValueAddress", XMLPROJECTION = "ELEMENT");

/// Age
/// <p>
/// Default value if no value exists.
Property defaultValueAge As HS.FHIR.vR4.Model.Datatype.Age(XMLNAME = "defaultValueAge", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Default value if no value exists.
Property defaultValueAnnotation As HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "defaultValueAnnotation", XMLPROJECTION = "ELEMENT");

/// Attachment
/// <p>
/// Default value if no value exists.
Property defaultValueAttachment As HS.FHIR.vR4.Model.Datatype.Attachment(XMLNAME = "defaultValueAttachment", XMLPROJECTION = "ELEMENT");

/// base64Binary
/// <p>
/// Default value if no value exists.
Property defaultValueBase64Binary As %Binary(XMLNAME = "defaultValueBase64Binary", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Default value if no value exists.
Property defaultValueBoolean As %Boolean(XMLNAME = "defaultValueBoolean", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Default value if no value exists.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property defaultValueCanonical As %String(MAXLEN = 1000000, XMLNAME = "defaultValueCanonical", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Default value if no value exists.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property defaultValueCode As %String(MAXLEN = 1000000, XMLNAME = "defaultValueCode", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Default value if no value exists.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property defaultValueCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "defaultValueCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Default value if no value exists.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property defaultValueCoding As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "defaultValueCoding", XMLPROJECTION = "ELEMENT");

/// ContactDetail
/// <p>
/// Default value if no value exists.
Property defaultValueContactDetail As HS.FHIR.vR4.Model.Datatype.ContactDetail(XMLNAME = "defaultValueContactDetail", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// Default value if no value exists.
Property defaultValueContactPoint As HS.FHIR.vR4.Model.Datatype.ContactPoint(XMLNAME = "defaultValueContactPoint", XMLPROJECTION = "ELEMENT");

/// Contributor
/// <p>
/// Default value if no value exists.
Property defaultValueContributor As HS.FHIR.vR4.Model.Datatype.Contributor(XMLNAME = "defaultValueContributor", XMLPROJECTION = "ELEMENT");

/// Count
/// <p>
/// Default value if no value exists.
Property defaultValueCount As HS.FHIR.vR4.Model.Datatype.Count(XMLNAME = "defaultValueCount", XMLPROJECTION = "ELEMENT");

/// DataRequirement
/// <p>
/// Default value if no value exists.
Property defaultValueDataRequirement As HS.FHIR.vR4.Model.Datatype.DataRequirement(XMLNAME = "defaultValueDataRequirement", XMLPROJECTION = "ELEMENT");

/// date
/// <p>
/// Default value if no value exists.
Property defaultValueDate As %String(MAXLEN = 1000000, XMLNAME = "defaultValueDate", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Default value if no value exists.
Property defaultValueDateTime As %String(MAXLEN = 1000000, XMLNAME = "defaultValueDateTime", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Default value if no value exists.
Property defaultValueDecimal As %Decimal(XMLNAME = "defaultValueDecimal", XMLPROJECTION = "ATTRIBUTE");

/// Distance
/// <p>
/// Default value if no value exists.
Property defaultValueDistance As HS.FHIR.vR4.Model.Datatype.Distance(XMLNAME = "defaultValueDistance", XMLPROJECTION = "ELEMENT");

/// Dosage
/// <p>
/// Default value if no value exists.
Property defaultValueDosage As HS.FHIR.vR4.Model.Element.Dosage(XMLNAME = "defaultValueDosage", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// Default value if no value exists.
Property defaultValueDuration As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "defaultValueDuration", XMLPROJECTION = "ELEMENT");

/// Expression
/// <p>
/// Default value if no value exists.
Property defaultValueExpression As HS.FHIR.vR4.Model.Datatype.Expression(XMLNAME = "defaultValueExpression", XMLPROJECTION = "ELEMENT");

/// HumanName
/// <p>
/// Default value if no value exists.
Property defaultValueHumanName As HS.FHIR.vR4.Model.Datatype.HumanName(XMLNAME = "defaultValueHumanName", XMLPROJECTION = "ELEMENT");

/// id
/// <p>
/// Default value if no value exists.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property defaultValueId As %String(MAXLEN = 1000000, XMLNAME = "defaultValueId", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// Default value if no value exists.
Property defaultValueIdentifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "defaultValueIdentifier", XMLPROJECTION = "ELEMENT");

/// instant
/// <p>
/// Default value if no value exists.
Property defaultValueInstant As %String(MAXLEN = 1000000, XMLNAME = "defaultValueInstant", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Default value if no value exists.
Property defaultValueInteger As %Integer(XMLNAME = "defaultValueInteger", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Default value if no value exists.
Property defaultValueMarkdown As %String(MAXLEN = 1000000, XMLNAME = "defaultValueMarkdown", XMLPROJECTION = "ATTRIBUTE");

/// Meta
/// <p>
/// Default value if no value exists.
Property defaultValueMeta As HS.FHIR.vR4.Model.Base.Meta(XMLNAME = "defaultValueMeta", XMLPROJECTION = "ELEMENT");

/// Money
/// <p>
/// Default value if no value exists.
Property defaultValueMoney As HS.FHIR.vR4.Model.Datatype.Money(XMLNAME = "defaultValueMoney", XMLPROJECTION = "ELEMENT");

/// oid
/// <p>
/// Default value if no value exists.
Property defaultValueOid As %String(MAXLEN = 1000000, XMLNAME = "defaultValueOid", XMLPROJECTION = "ATTRIBUTE");

/// ParameterDefinition
/// <p>
/// Default value if no value exists.
Property defaultValueParameterDefinition As HS.FHIR.vR4.Model.Datatype.ParameterDefinition(XMLNAME = "defaultValueParameterDefinition", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Default value if no value exists.
Property defaultValuePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "defaultValuePeriod", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Default value if no value exists.
Property defaultValuePositiveInt As %Integer(XMLNAME = "defaultValuePositiveInt", XMLPROJECTION = "ATTRIBUTE");

/// Quantity
/// <p>
/// Default value if no value exists.
Property defaultValueQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "defaultValueQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Default value if no value exists.
Property defaultValueRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "defaultValueRange", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// Default value if no value exists.
Property defaultValueRatio As HS.FHIR.vR4.Model.Datatype.Ratio(XMLNAME = "defaultValueRatio", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Default value if no value exists.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property defaultValueReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "defaultValueReference", XMLPROJECTION = "ELEMENT");

/// RelatedArtifact
/// <p>
/// Default value if no value exists.
Property defaultValueRelatedArtifact As HS.FHIR.vR4.Model.Datatype.RelatedArtifact(XMLNAME = "defaultValueRelatedArtifact", XMLPROJECTION = "ELEMENT");

/// SampledData
/// <p>
/// Default value if no value exists.
Property defaultValueSampledData As HS.FHIR.vR4.Model.Datatype.SampledData(XMLNAME = "defaultValueSampledData", XMLPROJECTION = "ELEMENT");

/// Signature
/// <p>
/// Default value if no value exists.
Property defaultValueSignature As HS.FHIR.vR4.Model.Datatype.Signature(XMLNAME = "defaultValueSignature", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Default value if no value exists.
Property defaultValueString As %String(MAXLEN = 1000000, XMLNAME = "defaultValueString", XMLPROJECTION = "ATTRIBUTE");

/// time
/// <p>
/// Default value if no value exists.
Property defaultValueTime As %String(MAXLEN = 1000000, XMLNAME = "defaultValueTime", XMLPROJECTION = "ATTRIBUTE");

/// Timing
/// <p>
/// Default value if no value exists.
Property defaultValueTiming As HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "defaultValueTiming", XMLPROJECTION = "ELEMENT");

/// TriggerDefinition
/// <p>
/// Default value if no value exists.
Property defaultValueTriggerDefinition As HS.FHIR.vR4.Model.Datatype.TriggerDefinition(XMLNAME = "defaultValueTriggerDefinition", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// Default value if no value exists.
Property defaultValueUnsignedInt As %Integer(XMLNAME = "defaultValueUnsignedInt", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Default value if no value exists.
Property defaultValueUri As %String(MAXLEN = 1000000, XMLNAME = "defaultValueUri", XMLPROJECTION = "ATTRIBUTE");

/// url
/// <p>
/// Default value if no value exists.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property defaultValueUrl As %String(MAXLEN = 1000000, XMLNAME = "defaultValueUrl", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// Default value if no value exists.
Property defaultValueUsageContext As HS.FHIR.vR4.Model.Datatype.UsageContext(XMLNAME = "defaultValueUsageContext", XMLPROJECTION = "ELEMENT");

/// uuid
/// <p>
/// Default value if no value exists.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property defaultValueUuid As %String(MAXLEN = 1000000, XMLNAME = "defaultValueUuid", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Optional field for this source.
Property element As %String(MAXLEN = 1000000, XMLNAME = "element", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// first | not_first | last | not_last | only_one
/// <p>
/// map-source-list-mode|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend map-source-list-mode|4.0.1 and you may NOT use codes from other ValueSets.
Property listMode As %String(MAXLEN = 1000000, XMLNAME = "listMode", XMLPROJECTION = "ATTRIBUTE");

/// id
/// <p>
/// Named context for field, 
/// if a field is specified.
Property variable As %String(MAXLEN = 1000000, XMLNAME = "variable", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// FHIRPath expression  - must be true or the rule does not apply.
Property condition As %String(MAXLEN = 1000000, XMLNAME = "condition", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// FHIRPath expression  - must be true or the mapping engine throws an error instead of completing.
Property check As %String(MAXLEN = 1000000, XMLNAME = "check", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Message to put in log if source exists (FHIRPath)
Property logMessage As %String(MAXLEN = 1000000, XMLNAME = "logMessage", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "StructureMap.group.rule.source";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "StructureMap.group.rule.source";

}
