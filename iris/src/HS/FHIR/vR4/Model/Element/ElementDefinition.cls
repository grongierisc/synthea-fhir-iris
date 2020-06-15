/// Definition of an element in a resource or extension.
Class HS.FHIR.vR4.Model.Element.ElementDefinition Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Path of the element in the hierarchy of elements.
Property path As %String(MAXLEN = 1000000, XMLNAME = "path", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// xmlAttr | xmlText | typeAttr | cdaText | xhtml
/// <p>
/// property-representation|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend property-representation|4.0.1 and you may NOT use codes from other ValueSets.
Property representation As list Of %String(MAXLEN = 1000000, SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "representation", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Name for this particular element (in a set of slices)
Property sliceName As %String(MAXLEN = 1000000, XMLNAME = "sliceName", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// If this slice definition constrains an inherited slice definition (or not)
Property sliceIsConstraining As %Boolean(XMLNAME = "sliceIsConstraining", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for element to display with or prompt for element.
Property label As %String(MAXLEN = 1000000, XMLNAME = "label", XMLPROJECTION = "ATTRIBUTE");

/// Coding
/// <p>
/// Corresponding codes in terminologies.
/// <p>
/// any FHIR4 code may be used; 
/// observation-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As list Of HS.FHIR.vR4.Model.Datatype.Coding(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// Element
/// <p>
/// This element is sliced - slices follow.
Property slicing As HS.FHIR.vR4.Model.Element.ElementDefinition.slicing(XMLNAME = "slicing", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Concise definition for space-constrained presentation.
Property short As %String(MAXLEN = 1000000, XMLNAME = "short", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Full formal definition as narrative text.
Property definition As %String(MAXLEN = 1000000, XMLNAME = "definition", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Comments about the use of this element.
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Why this resource has been created.
Property requirements As %String(MAXLEN = 1000000, XMLNAME = "requirements", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Other names.
Property alias As list Of %String(MAXLEN = 1000000, SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "alias", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// Minimum Cardinality.
Property min As %Integer(XMLNAME = "min", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Maximum Cardinality (a number or *)
Property max As %String(MAXLEN = 1000000, XMLNAME = "max", XMLPROJECTION = "ATTRIBUTE");

/// Element
/// <p>
/// Base definition information for tools.
Property base As HS.FHIR.vR4.Model.Element.ElementDefinition.base(XMLNAME = "base", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Reference to definition of content for the element.
Property contentReference As %String(MAXLEN = 1000000, XMLNAME = "contentReference", XMLPROJECTION = "ATTRIBUTE");

/// Element
/// <p>
/// Data type and Profile for this element.
Property type As list Of HS.FHIR.vR4.Model.Element.ElementDefinition.type(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Address
/// <p>
/// Specified value if missing from instance.
Property defaultValueAddress As HS.FHIR.vR4.Model.Datatype.Address(XMLNAME = "defaultValueAddress", XMLPROJECTION = "ELEMENT");

/// Age
/// <p>
/// Specified value if missing from instance.
Property defaultValueAge As HS.FHIR.vR4.Model.Datatype.Age(XMLNAME = "defaultValueAge", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Specified value if missing from instance.
Property defaultValueAnnotation As HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "defaultValueAnnotation", XMLPROJECTION = "ELEMENT");

/// Attachment
/// <p>
/// Specified value if missing from instance.
Property defaultValueAttachment As HS.FHIR.vR4.Model.Datatype.Attachment(XMLNAME = "defaultValueAttachment", XMLPROJECTION = "ELEMENT");

/// base64Binary
/// <p>
/// Specified value if missing from instance.
Property defaultValueBase64Binary As %Binary(XMLNAME = "defaultValueBase64Binary", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Specified value if missing from instance.
Property defaultValueBoolean As %Boolean(XMLNAME = "defaultValueBoolean", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Specified value if missing from instance.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property defaultValueCanonical As %String(MAXLEN = 1000000, XMLNAME = "defaultValueCanonical", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Specified value if missing from instance.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property defaultValueCode As %String(MAXLEN = 1000000, XMLNAME = "defaultValueCode", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Specified value if missing from instance.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property defaultValueCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "defaultValueCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Specified value if missing from instance.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property defaultValueCoding As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "defaultValueCoding", XMLPROJECTION = "ELEMENT");

/// ContactDetail
/// <p>
/// Specified value if missing from instance.
Property defaultValueContactDetail As HS.FHIR.vR4.Model.Datatype.ContactDetail(XMLNAME = "defaultValueContactDetail", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// Specified value if missing from instance.
Property defaultValueContactPoint As HS.FHIR.vR4.Model.Datatype.ContactPoint(XMLNAME = "defaultValueContactPoint", XMLPROJECTION = "ELEMENT");

/// Contributor
/// <p>
/// Specified value if missing from instance.
Property defaultValueContributor As HS.FHIR.vR4.Model.Datatype.Contributor(XMLNAME = "defaultValueContributor", XMLPROJECTION = "ELEMENT");

/// Count
/// <p>
/// Specified value if missing from instance.
Property defaultValueCount As HS.FHIR.vR4.Model.Datatype.Count(XMLNAME = "defaultValueCount", XMLPROJECTION = "ELEMENT");

/// DataRequirement
/// <p>
/// Specified value if missing from instance.
Property defaultValueDataRequirement As HS.FHIR.vR4.Model.Datatype.DataRequirement(XMLNAME = "defaultValueDataRequirement", XMLPROJECTION = "ELEMENT");

/// date
/// <p>
/// Specified value if missing from instance.
Property defaultValueDate As %String(MAXLEN = 1000000, XMLNAME = "defaultValueDate", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Specified value if missing from instance.
Property defaultValueDateTime As %String(MAXLEN = 1000000, XMLNAME = "defaultValueDateTime", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Specified value if missing from instance.
Property defaultValueDecimal As %Decimal(XMLNAME = "defaultValueDecimal", XMLPROJECTION = "ATTRIBUTE");

/// Distance
/// <p>
/// Specified value if missing from instance.
Property defaultValueDistance As HS.FHIR.vR4.Model.Datatype.Distance(XMLNAME = "defaultValueDistance", XMLPROJECTION = "ELEMENT");

/// Dosage
/// <p>
/// Specified value if missing from instance.
Property defaultValueDosage As HS.FHIR.vR4.Model.Element.Dosage(XMLNAME = "defaultValueDosage", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// Specified value if missing from instance.
Property defaultValueDuration As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "defaultValueDuration", XMLPROJECTION = "ELEMENT");

/// Expression
/// <p>
/// Specified value if missing from instance.
Property defaultValueExpression As HS.FHIR.vR4.Model.Datatype.Expression(XMLNAME = "defaultValueExpression", XMLPROJECTION = "ELEMENT");

/// HumanName
/// <p>
/// Specified value if missing from instance.
Property defaultValueHumanName As HS.FHIR.vR4.Model.Datatype.HumanName(XMLNAME = "defaultValueHumanName", XMLPROJECTION = "ELEMENT");

/// id
/// <p>
/// Specified value if missing from instance.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property defaultValueId As %String(MAXLEN = 1000000, XMLNAME = "defaultValueId", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// Specified value if missing from instance.
Property defaultValueIdentifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "defaultValueIdentifier", XMLPROJECTION = "ELEMENT");

/// instant
/// <p>
/// Specified value if missing from instance.
Property defaultValueInstant As %String(MAXLEN = 1000000, XMLNAME = "defaultValueInstant", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Specified value if missing from instance.
Property defaultValueInteger As %Integer(XMLNAME = "defaultValueInteger", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Specified value if missing from instance.
Property defaultValueMarkdown As %String(MAXLEN = 1000000, XMLNAME = "defaultValueMarkdown", XMLPROJECTION = "ATTRIBUTE");

/// Meta
/// <p>
/// Specified value if missing from instance.
Property defaultValueMeta As HS.FHIR.vR4.Model.Base.Meta(XMLNAME = "defaultValueMeta", XMLPROJECTION = "ELEMENT");

/// Money
/// <p>
/// Specified value if missing from instance.
Property defaultValueMoney As HS.FHIR.vR4.Model.Datatype.Money(XMLNAME = "defaultValueMoney", XMLPROJECTION = "ELEMENT");

/// oid
/// <p>
/// Specified value if missing from instance.
Property defaultValueOid As %String(MAXLEN = 1000000, XMLNAME = "defaultValueOid", XMLPROJECTION = "ATTRIBUTE");

/// ParameterDefinition
/// <p>
/// Specified value if missing from instance.
Property defaultValueParameterDefinition As HS.FHIR.vR4.Model.Datatype.ParameterDefinition(XMLNAME = "defaultValueParameterDefinition", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Specified value if missing from instance.
Property defaultValuePeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "defaultValuePeriod", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Specified value if missing from instance.
Property defaultValuePositiveInt As %Integer(XMLNAME = "defaultValuePositiveInt", XMLPROJECTION = "ATTRIBUTE");

/// Quantity
/// <p>
/// Specified value if missing from instance.
Property defaultValueQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "defaultValueQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Specified value if missing from instance.
Property defaultValueRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "defaultValueRange", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// Specified value if missing from instance.
Property defaultValueRatio As HS.FHIR.vR4.Model.Datatype.Ratio(XMLNAME = "defaultValueRatio", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Specified value if missing from instance.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property defaultValueReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "defaultValueReference", XMLPROJECTION = "ELEMENT");

/// RelatedArtifact
/// <p>
/// Specified value if missing from instance.
Property defaultValueRelatedArtifact As HS.FHIR.vR4.Model.Datatype.RelatedArtifact(XMLNAME = "defaultValueRelatedArtifact", XMLPROJECTION = "ELEMENT");

/// SampledData
/// <p>
/// Specified value if missing from instance.
Property defaultValueSampledData As HS.FHIR.vR4.Model.Datatype.SampledData(XMLNAME = "defaultValueSampledData", XMLPROJECTION = "ELEMENT");

/// Signature
/// <p>
/// Specified value if missing from instance.
Property defaultValueSignature As HS.FHIR.vR4.Model.Datatype.Signature(XMLNAME = "defaultValueSignature", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Specified value if missing from instance.
Property defaultValueString As %String(MAXLEN = 1000000, XMLNAME = "defaultValueString", XMLPROJECTION = "ATTRIBUTE");

/// time
/// <p>
/// Specified value if missing from instance.
Property defaultValueTime As %String(MAXLEN = 1000000, XMLNAME = "defaultValueTime", XMLPROJECTION = "ATTRIBUTE");

/// Timing
/// <p>
/// Specified value if missing from instance.
Property defaultValueTiming As HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "defaultValueTiming", XMLPROJECTION = "ELEMENT");

/// TriggerDefinition
/// <p>
/// Specified value if missing from instance.
Property defaultValueTriggerDefinition As HS.FHIR.vR4.Model.Datatype.TriggerDefinition(XMLNAME = "defaultValueTriggerDefinition", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// Specified value if missing from instance.
Property defaultValueUnsignedInt As %Integer(XMLNAME = "defaultValueUnsignedInt", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Specified value if missing from instance.
Property defaultValueUri As %String(MAXLEN = 1000000, XMLNAME = "defaultValueUri", XMLPROJECTION = "ATTRIBUTE");

/// url
/// <p>
/// Specified value if missing from instance.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property defaultValueUrl As %String(MAXLEN = 1000000, XMLNAME = "defaultValueUrl", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// Specified value if missing from instance.
Property defaultValueUsageContext As HS.FHIR.vR4.Model.Datatype.UsageContext(XMLNAME = "defaultValueUsageContext", XMLPROJECTION = "ELEMENT");

/// uuid
/// <p>
/// Specified value if missing from instance.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property defaultValueUuid As %String(MAXLEN = 1000000, XMLNAME = "defaultValueUuid", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Implicit meaning when this element is missing.
Property meaningWhenMissing As %String(MAXLEN = 1000000, XMLNAME = "meaningWhenMissing", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// What the order of the elements means.
Property orderMeaning As %String(MAXLEN = 1000000, XMLNAME = "orderMeaning", XMLPROJECTION = "ATTRIBUTE");

/// Address
/// <p>
/// Value must be exactly this.
Property fixedAddress As HS.FHIR.vR4.Model.Datatype.Address(XMLNAME = "fixedAddress", XMLPROJECTION = "ELEMENT");

/// Age
/// <p>
/// Value must be exactly this.
Property fixedAge As HS.FHIR.vR4.Model.Datatype.Age(XMLNAME = "fixedAge", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Value must be exactly this.
Property fixedAnnotation As HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "fixedAnnotation", XMLPROJECTION = "ELEMENT");

/// Attachment
/// <p>
/// Value must be exactly this.
Property fixedAttachment As HS.FHIR.vR4.Model.Datatype.Attachment(XMLNAME = "fixedAttachment", XMLPROJECTION = "ELEMENT");

/// base64Binary
/// <p>
/// Value must be exactly this.
Property fixedBase64Binary As %Binary(XMLNAME = "fixedBase64Binary", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Value must be exactly this.
Property fixedBoolean As %Boolean(XMLNAME = "fixedBoolean", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Value must be exactly this.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property fixedCanonical As %String(MAXLEN = 1000000, XMLNAME = "fixedCanonical", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Value must be exactly this.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property fixedCode As %String(MAXLEN = 1000000, XMLNAME = "fixedCode", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Value must be exactly this.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property fixedCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "fixedCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Value must be exactly this.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property fixedCoding As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "fixedCoding", XMLPROJECTION = "ELEMENT");

/// ContactDetail
/// <p>
/// Value must be exactly this.
Property fixedContactDetail As HS.FHIR.vR4.Model.Datatype.ContactDetail(XMLNAME = "fixedContactDetail", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// Value must be exactly this.
Property fixedContactPoint As HS.FHIR.vR4.Model.Datatype.ContactPoint(XMLNAME = "fixedContactPoint", XMLPROJECTION = "ELEMENT");

/// Contributor
/// <p>
/// Value must be exactly this.
Property fixedContributor As HS.FHIR.vR4.Model.Datatype.Contributor(XMLNAME = "fixedContributor", XMLPROJECTION = "ELEMENT");

/// Count
/// <p>
/// Value must be exactly this.
Property fixedCount As HS.FHIR.vR4.Model.Datatype.Count(XMLNAME = "fixedCount", XMLPROJECTION = "ELEMENT");

/// DataRequirement
/// <p>
/// Value must be exactly this.
Property fixedDataRequirement As HS.FHIR.vR4.Model.Datatype.DataRequirement(XMLNAME = "fixedDataRequirement", XMLPROJECTION = "ELEMENT");

/// date
/// <p>
/// Value must be exactly this.
Property fixedDate As %String(MAXLEN = 1000000, XMLNAME = "fixedDate", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Value must be exactly this.
Property fixedDateTime As %String(MAXLEN = 1000000, XMLNAME = "fixedDateTime", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Value must be exactly this.
Property fixedDecimal As %Decimal(XMLNAME = "fixedDecimal", XMLPROJECTION = "ATTRIBUTE");

/// Distance
/// <p>
/// Value must be exactly this.
Property fixedDistance As HS.FHIR.vR4.Model.Datatype.Distance(XMLNAME = "fixedDistance", XMLPROJECTION = "ELEMENT");

/// Dosage
/// <p>
/// Value must be exactly this.
Property fixedDosage As HS.FHIR.vR4.Model.Element.Dosage(XMLNAME = "fixedDosage", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// Value must be exactly this.
Property fixedDuration As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "fixedDuration", XMLPROJECTION = "ELEMENT");

/// Expression
/// <p>
/// Value must be exactly this.
Property fixedExpression As HS.FHIR.vR4.Model.Datatype.Expression(XMLNAME = "fixedExpression", XMLPROJECTION = "ELEMENT");

/// HumanName
/// <p>
/// Value must be exactly this.
Property fixedHumanName As HS.FHIR.vR4.Model.Datatype.HumanName(XMLNAME = "fixedHumanName", XMLPROJECTION = "ELEMENT");

/// id
/// <p>
/// Value must be exactly this.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property fixedId As %String(MAXLEN = 1000000, XMLNAME = "fixedId", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// Value must be exactly this.
Property fixedIdentifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "fixedIdentifier", XMLPROJECTION = "ELEMENT");

/// instant
/// <p>
/// Value must be exactly this.
Property fixedInstant As %String(MAXLEN = 1000000, XMLNAME = "fixedInstant", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Value must be exactly this.
Property fixedInteger As %Integer(XMLNAME = "fixedInteger", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Value must be exactly this.
Property fixedMarkdown As %String(MAXLEN = 1000000, XMLNAME = "fixedMarkdown", XMLPROJECTION = "ATTRIBUTE");

/// Meta
/// <p>
/// Value must be exactly this.
Property fixedMeta As HS.FHIR.vR4.Model.Base.Meta(XMLNAME = "fixedMeta", XMLPROJECTION = "ELEMENT");

/// Money
/// <p>
/// Value must be exactly this.
Property fixedMoney As HS.FHIR.vR4.Model.Datatype.Money(XMLNAME = "fixedMoney", XMLPROJECTION = "ELEMENT");

/// oid
/// <p>
/// Value must be exactly this.
Property fixedOid As %String(MAXLEN = 1000000, XMLNAME = "fixedOid", XMLPROJECTION = "ATTRIBUTE");

/// ParameterDefinition
/// <p>
/// Value must be exactly this.
Property fixedParameterDefinition As HS.FHIR.vR4.Model.Datatype.ParameterDefinition(XMLNAME = "fixedParameterDefinition", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Value must be exactly this.
Property fixedPeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "fixedPeriod", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Value must be exactly this.
Property fixedPositiveInt As %Integer(XMLNAME = "fixedPositiveInt", XMLPROJECTION = "ATTRIBUTE");

/// Quantity
/// <p>
/// Value must be exactly this.
Property fixedQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "fixedQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Value must be exactly this.
Property fixedRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "fixedRange", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// Value must be exactly this.
Property fixedRatio As HS.FHIR.vR4.Model.Datatype.Ratio(XMLNAME = "fixedRatio", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Value must be exactly this.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property fixedReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "fixedReference", XMLPROJECTION = "ELEMENT");

/// RelatedArtifact
/// <p>
/// Value must be exactly this.
Property fixedRelatedArtifact As HS.FHIR.vR4.Model.Datatype.RelatedArtifact(XMLNAME = "fixedRelatedArtifact", XMLPROJECTION = "ELEMENT");

/// SampledData
/// <p>
/// Value must be exactly this.
Property fixedSampledData As HS.FHIR.vR4.Model.Datatype.SampledData(XMLNAME = "fixedSampledData", XMLPROJECTION = "ELEMENT");

/// Signature
/// <p>
/// Value must be exactly this.
Property fixedSignature As HS.FHIR.vR4.Model.Datatype.Signature(XMLNAME = "fixedSignature", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Value must be exactly this.
Property fixedString As %String(MAXLEN = 1000000, XMLNAME = "fixedString", XMLPROJECTION = "ATTRIBUTE");

/// time
/// <p>
/// Value must be exactly this.
Property fixedTime As %String(MAXLEN = 1000000, XMLNAME = "fixedTime", XMLPROJECTION = "ATTRIBUTE");

/// Timing
/// <p>
/// Value must be exactly this.
Property fixedTiming As HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "fixedTiming", XMLPROJECTION = "ELEMENT");

/// TriggerDefinition
/// <p>
/// Value must be exactly this.
Property fixedTriggerDefinition As HS.FHIR.vR4.Model.Datatype.TriggerDefinition(XMLNAME = "fixedTriggerDefinition", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// Value must be exactly this.
Property fixedUnsignedInt As %Integer(XMLNAME = "fixedUnsignedInt", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Value must be exactly this.
Property fixedUri As %String(MAXLEN = 1000000, XMLNAME = "fixedUri", XMLPROJECTION = "ATTRIBUTE");

/// url
/// <p>
/// Value must be exactly this.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property fixedUrl As %String(MAXLEN = 1000000, XMLNAME = "fixedUrl", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// Value must be exactly this.
Property fixedUsageContext As HS.FHIR.vR4.Model.Datatype.UsageContext(XMLNAME = "fixedUsageContext", XMLPROJECTION = "ELEMENT");

/// uuid
/// <p>
/// Value must be exactly this.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property fixedUuid As %String(MAXLEN = 1000000, XMLNAME = "fixedUuid", XMLPROJECTION = "ATTRIBUTE");

/// Address
/// <p>
/// Value must have at least these property values.
Property patternAddress As HS.FHIR.vR4.Model.Datatype.Address(XMLNAME = "patternAddress", XMLPROJECTION = "ELEMENT");

/// Age
/// <p>
/// Value must have at least these property values.
Property patternAge As HS.FHIR.vR4.Model.Datatype.Age(XMLNAME = "patternAge", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Value must have at least these property values.
Property patternAnnotation As HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "patternAnnotation", XMLPROJECTION = "ELEMENT");

/// Attachment
/// <p>
/// Value must have at least these property values.
Property patternAttachment As HS.FHIR.vR4.Model.Datatype.Attachment(XMLNAME = "patternAttachment", XMLPROJECTION = "ELEMENT");

/// base64Binary
/// <p>
/// Value must have at least these property values.
Property patternBase64Binary As %Binary(XMLNAME = "patternBase64Binary", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Value must have at least these property values.
Property patternBoolean As %Boolean(XMLNAME = "patternBoolean", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Value must have at least these property values.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property patternCanonical As %String(MAXLEN = 1000000, XMLNAME = "patternCanonical", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Value must have at least these property values.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property patternCode As %String(MAXLEN = 1000000, XMLNAME = "patternCode", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Value must have at least these property values.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property patternCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "patternCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Value must have at least these property values.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property patternCoding As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "patternCoding", XMLPROJECTION = "ELEMENT");

/// ContactDetail
/// <p>
/// Value must have at least these property values.
Property patternContactDetail As HS.FHIR.vR4.Model.Datatype.ContactDetail(XMLNAME = "patternContactDetail", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// Value must have at least these property values.
Property patternContactPoint As HS.FHIR.vR4.Model.Datatype.ContactPoint(XMLNAME = "patternContactPoint", XMLPROJECTION = "ELEMENT");

/// Contributor
/// <p>
/// Value must have at least these property values.
Property patternContributor As HS.FHIR.vR4.Model.Datatype.Contributor(XMLNAME = "patternContributor", XMLPROJECTION = "ELEMENT");

/// Count
/// <p>
/// Value must have at least these property values.
Property patternCount As HS.FHIR.vR4.Model.Datatype.Count(XMLNAME = "patternCount", XMLPROJECTION = "ELEMENT");

/// DataRequirement
/// <p>
/// Value must have at least these property values.
Property patternDataRequirement As HS.FHIR.vR4.Model.Datatype.DataRequirement(XMLNAME = "patternDataRequirement", XMLPROJECTION = "ELEMENT");

/// date
/// <p>
/// Value must have at least these property values.
Property patternDate As %String(MAXLEN = 1000000, XMLNAME = "patternDate", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Value must have at least these property values.
Property patternDateTime As %String(MAXLEN = 1000000, XMLNAME = "patternDateTime", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Value must have at least these property values.
Property patternDecimal As %Decimal(XMLNAME = "patternDecimal", XMLPROJECTION = "ATTRIBUTE");

/// Distance
/// <p>
/// Value must have at least these property values.
Property patternDistance As HS.FHIR.vR4.Model.Datatype.Distance(XMLNAME = "patternDistance", XMLPROJECTION = "ELEMENT");

/// Dosage
/// <p>
/// Value must have at least these property values.
Property patternDosage As HS.FHIR.vR4.Model.Element.Dosage(XMLNAME = "patternDosage", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// Value must have at least these property values.
Property patternDuration As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "patternDuration", XMLPROJECTION = "ELEMENT");

/// Expression
/// <p>
/// Value must have at least these property values.
Property patternExpression As HS.FHIR.vR4.Model.Datatype.Expression(XMLNAME = "patternExpression", XMLPROJECTION = "ELEMENT");

/// HumanName
/// <p>
/// Value must have at least these property values.
Property patternHumanName As HS.FHIR.vR4.Model.Datatype.HumanName(XMLNAME = "patternHumanName", XMLPROJECTION = "ELEMENT");

/// id
/// <p>
/// Value must have at least these property values.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property patternId As %String(MAXLEN = 1000000, XMLNAME = "patternId", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// Value must have at least these property values.
Property patternIdentifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "patternIdentifier", XMLPROJECTION = "ELEMENT");

/// instant
/// <p>
/// Value must have at least these property values.
Property patternInstant As %String(MAXLEN = 1000000, XMLNAME = "patternInstant", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Value must have at least these property values.
Property patternInteger As %Integer(XMLNAME = "patternInteger", XMLPROJECTION = "ATTRIBUTE");

/// markdown
/// <p>
/// Value must have at least these property values.
Property patternMarkdown As %String(MAXLEN = 1000000, XMLNAME = "patternMarkdown", XMLPROJECTION = "ATTRIBUTE");

/// Meta
/// <p>
/// Value must have at least these property values.
Property patternMeta As HS.FHIR.vR4.Model.Base.Meta(XMLNAME = "patternMeta", XMLPROJECTION = "ELEMENT");

/// Money
/// <p>
/// Value must have at least these property values.
Property patternMoney As HS.FHIR.vR4.Model.Datatype.Money(XMLNAME = "patternMoney", XMLPROJECTION = "ELEMENT");

/// oid
/// <p>
/// Value must have at least these property values.
Property patternOid As %String(MAXLEN = 1000000, XMLNAME = "patternOid", XMLPROJECTION = "ATTRIBUTE");

/// ParameterDefinition
/// <p>
/// Value must have at least these property values.
Property patternParameterDefinition As HS.FHIR.vR4.Model.Datatype.ParameterDefinition(XMLNAME = "patternParameterDefinition", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Value must have at least these property values.
Property patternPeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "patternPeriod", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Value must have at least these property values.
Property patternPositiveInt As %Integer(XMLNAME = "patternPositiveInt", XMLPROJECTION = "ATTRIBUTE");

/// Quantity
/// <p>
/// Value must have at least these property values.
Property patternQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "patternQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Value must have at least these property values.
Property patternRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "patternRange", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// Value must have at least these property values.
Property patternRatio As HS.FHIR.vR4.Model.Datatype.Ratio(XMLNAME = "patternRatio", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Value must have at least these property values.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property patternReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "patternReference", XMLPROJECTION = "ELEMENT");

/// RelatedArtifact
/// <p>
/// Value must have at least these property values.
Property patternRelatedArtifact As HS.FHIR.vR4.Model.Datatype.RelatedArtifact(XMLNAME = "patternRelatedArtifact", XMLPROJECTION = "ELEMENT");

/// SampledData
/// <p>
/// Value must have at least these property values.
Property patternSampledData As HS.FHIR.vR4.Model.Datatype.SampledData(XMLNAME = "patternSampledData", XMLPROJECTION = "ELEMENT");

/// Signature
/// <p>
/// Value must have at least these property values.
Property patternSignature As HS.FHIR.vR4.Model.Datatype.Signature(XMLNAME = "patternSignature", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Value must have at least these property values.
Property patternString As %String(MAXLEN = 1000000, XMLNAME = "patternString", XMLPROJECTION = "ATTRIBUTE");

/// time
/// <p>
/// Value must have at least these property values.
Property patternTime As %String(MAXLEN = 1000000, XMLNAME = "patternTime", XMLPROJECTION = "ATTRIBUTE");

/// Timing
/// <p>
/// Value must have at least these property values.
Property patternTiming As HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "patternTiming", XMLPROJECTION = "ELEMENT");

/// TriggerDefinition
/// <p>
/// Value must have at least these property values.
Property patternTriggerDefinition As HS.FHIR.vR4.Model.Datatype.TriggerDefinition(XMLNAME = "patternTriggerDefinition", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// Value must have at least these property values.
Property patternUnsignedInt As %Integer(XMLNAME = "patternUnsignedInt", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Value must have at least these property values.
Property patternUri As %String(MAXLEN = 1000000, XMLNAME = "patternUri", XMLPROJECTION = "ATTRIBUTE");

/// url
/// <p>
/// Value must have at least these property values.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property patternUrl As %String(MAXLEN = 1000000, XMLNAME = "patternUrl", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// Value must have at least these property values.
Property patternUsageContext As HS.FHIR.vR4.Model.Datatype.UsageContext(XMLNAME = "patternUsageContext", XMLPROJECTION = "ELEMENT");

/// uuid
/// <p>
/// Value must have at least these property values.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property patternUuid As %String(MAXLEN = 1000000, XMLNAME = "patternUuid", XMLPROJECTION = "ATTRIBUTE");

/// Element
/// <p>
/// Example value (as defined for type)
Property example As list Of HS.FHIR.vR4.Model.Element.ElementDefinition.example(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "example", XMLPROJECTION = "ELEMENT");

/// date
/// <p>
/// Minimum Allowed Value (for some types)
Property minValueDate As %String(MAXLEN = 1000000, XMLNAME = "minValueDate", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Minimum Allowed Value (for some types)
Property minValueDateTime As %String(MAXLEN = 1000000, XMLNAME = "minValueDateTime", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Minimum Allowed Value (for some types)
Property minValueDecimal As %Decimal(XMLNAME = "minValueDecimal", XMLPROJECTION = "ATTRIBUTE");

/// instant
/// <p>
/// Minimum Allowed Value (for some types)
Property minValueInstant As %String(MAXLEN = 1000000, XMLNAME = "minValueInstant", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Minimum Allowed Value (for some types)
Property minValueInteger As %Integer(XMLNAME = "minValueInteger", XMLPROJECTION = "ATTRIBUTE");

/// positiveInt
/// <p>
/// Minimum Allowed Value (for some types)
Property minValuePositiveInt As %Integer(XMLNAME = "minValuePositiveInt", XMLPROJECTION = "ATTRIBUTE");

/// Quantity
/// <p>
/// Minimum Allowed Value (for some types)
Property minValueQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "minValueQuantity", XMLPROJECTION = "ELEMENT");

/// time
/// <p>
/// Minimum Allowed Value (for some types)
Property minValueTime As %String(MAXLEN = 1000000, XMLNAME = "minValueTime", XMLPROJECTION = "ATTRIBUTE");

/// unsignedInt
/// <p>
/// Minimum Allowed Value (for some types)
Property minValueUnsignedInt As %Integer(XMLNAME = "minValueUnsignedInt", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// Maximum Allowed Value (for some types)
Property maxValueDate As %String(MAXLEN = 1000000, XMLNAME = "maxValueDate", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Maximum Allowed Value (for some types)
Property maxValueDateTime As %String(MAXLEN = 1000000, XMLNAME = "maxValueDateTime", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Maximum Allowed Value (for some types)
Property maxValueDecimal As %Decimal(XMLNAME = "maxValueDecimal", XMLPROJECTION = "ATTRIBUTE");

/// instant
/// <p>
/// Maximum Allowed Value (for some types)
Property maxValueInstant As %String(MAXLEN = 1000000, XMLNAME = "maxValueInstant", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Maximum Allowed Value (for some types)
Property maxValueInteger As %Integer(XMLNAME = "maxValueInteger", XMLPROJECTION = "ATTRIBUTE");

/// positiveInt
/// <p>
/// Maximum Allowed Value (for some types)
Property maxValuePositiveInt As %Integer(XMLNAME = "maxValuePositiveInt", XMLPROJECTION = "ATTRIBUTE");

/// Quantity
/// <p>
/// Maximum Allowed Value (for some types)
Property maxValueQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "maxValueQuantity", XMLPROJECTION = "ELEMENT");

/// time
/// <p>
/// Maximum Allowed Value (for some types)
Property maxValueTime As %String(MAXLEN = 1000000, XMLNAME = "maxValueTime", XMLPROJECTION = "ATTRIBUTE");

/// unsignedInt
/// <p>
/// Maximum Allowed Value (for some types)
Property maxValueUnsignedInt As %Integer(XMLNAME = "maxValueUnsignedInt", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Max length for strings.
Property maxLength As %Integer(XMLNAME = "maxLength", XMLPROJECTION = "ATTRIBUTE");

/// id
/// <p>
/// Reference to invariant about presence.
Property condition As list Of %String(MAXLEN = 1000000, SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "condition", XMLPROJECTION = "ELEMENT");

/// Element
/// <p>
/// Condition that must evaluate to true.
Property constraint As list Of HS.FHIR.vR4.Model.Element.ElementDefinition.constraint(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "constraint", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// If the element must be supported.
Property mustSupport As %Boolean(XMLNAME = "mustSupport", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// If this modifies the meaning of other elements.
Property isModifier As %Boolean(XMLNAME = "isModifier", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Reason that this element is marked as a modifier.
Property isModifierReason As %String(MAXLEN = 1000000, XMLNAME = "isModifierReason", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Include when _summary = true?
Property isSummary As %Boolean(XMLNAME = "isSummary", XMLPROJECTION = "ATTRIBUTE");

/// Element
/// <p>
/// ValueSet details if this is coded.
Property binding As HS.FHIR.vR4.Model.Element.ElementDefinition.binding(XMLNAME = "binding", XMLPROJECTION = "ELEMENT");

/// Element
/// <p>
/// Map element to another set of definitions.
Property mapping As list Of HS.FHIR.vR4.Model.Element.ElementDefinition.mapping(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "mapping", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ElementDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ElementDefinition";

Storage Default
{
<Data name="ElementDefinitionDefaultData">
<Subscript>"ElementDefinition"</Subscript>
<Value name="1">
<Value>path</Value>
</Value>
<Value name="2">
<Value>sliceName</Value>
</Value>
<Value name="3">
<Value>sliceIsConstraining</Value>
</Value>
<Value name="4">
<Value>label</Value>
</Value>
<Value name="5">
<Value>slicing</Value>
</Value>
<Value name="6">
<Value>short</Value>
</Value>
<Value name="7">
<Value>definition</Value>
</Value>
<Value name="8">
<Value>comment</Value>
</Value>
<Value name="9">
<Value>requirements</Value>
</Value>
<Value name="10">
<Value>min</Value>
</Value>
<Value name="11">
<Value>max</Value>
</Value>
<Value name="12">
<Value>base</Value>
</Value>
<Value name="13">
<Value>contentReference</Value>
</Value>
<Value name="14">
<Value>defaultValueAddress</Value>
</Value>
<Value name="15">
<Value>defaultValueAge</Value>
</Value>
<Value name="16">
<Value>defaultValueAnnotation</Value>
</Value>
<Value name="17">
<Value>defaultValueAttachment</Value>
</Value>
<Value name="18">
<Value>defaultValueBase64Binary</Value>
</Value>
<Value name="19">
<Value>defaultValueBoolean</Value>
</Value>
<Value name="20">
<Value>defaultValueCanonical</Value>
</Value>
<Value name="21">
<Value>defaultValueCode</Value>
</Value>
<Value name="22">
<Value>defaultValueCodeableConcept</Value>
</Value>
<Value name="23">
<Value>defaultValueCoding</Value>
</Value>
<Value name="24">
<Value>defaultValueContactDetail</Value>
</Value>
<Value name="25">
<Value>defaultValueContactPoint</Value>
</Value>
<Value name="26">
<Value>defaultValueContributor</Value>
</Value>
<Value name="27">
<Value>defaultValueCount</Value>
</Value>
<Value name="28">
<Value>defaultValueDataRequirement</Value>
</Value>
<Value name="29">
<Value>defaultValueDate</Value>
</Value>
<Value name="30">
<Value>defaultValueDateTime</Value>
</Value>
<Value name="31">
<Value>defaultValueDecimal</Value>
</Value>
<Value name="32">
<Value>defaultValueDistance</Value>
</Value>
<Value name="33">
<Value>defaultValueDosage</Value>
</Value>
<Value name="34">
<Value>defaultValueDuration</Value>
</Value>
<Value name="35">
<Value>defaultValueExpression</Value>
</Value>
<Value name="36">
<Value>defaultValueHumanName</Value>
</Value>
<Value name="37">
<Value>defaultValueId</Value>
</Value>
<Value name="38">
<Value>defaultValueIdentifier</Value>
</Value>
<Value name="39">
<Value>defaultValueInstant</Value>
</Value>
<Value name="40">
<Value>defaultValueInteger</Value>
</Value>
<Value name="41">
<Value>defaultValueMarkdown</Value>
</Value>
<Value name="42">
<Value>defaultValueMeta</Value>
</Value>
<Value name="43">
<Value>defaultValueMoney</Value>
</Value>
<Value name="44">
<Value>defaultValueOid</Value>
</Value>
<Value name="45">
<Value>defaultValueParameterDefinition</Value>
</Value>
<Value name="46">
<Value>defaultValuePeriod</Value>
</Value>
<Value name="47">
<Value>defaultValuePositiveInt</Value>
</Value>
<Value name="48">
<Value>defaultValueQuantity</Value>
</Value>
<Value name="49">
<Value>defaultValueRange</Value>
</Value>
<Value name="50">
<Value>defaultValueRatio</Value>
</Value>
<Value name="51">
<Value>defaultValueReference</Value>
</Value>
<Value name="52">
<Value>defaultValueRelatedArtifact</Value>
</Value>
<Value name="53">
<Value>defaultValueSampledData</Value>
</Value>
<Value name="54">
<Value>defaultValueSignature</Value>
</Value>
<Value name="55">
<Value>defaultValueString</Value>
</Value>
<Value name="56">
<Value>defaultValueTime</Value>
</Value>
<Value name="57">
<Value>defaultValueTiming</Value>
</Value>
<Value name="58">
<Value>defaultValueTriggerDefinition</Value>
</Value>
<Value name="59">
<Value>defaultValueUnsignedInt</Value>
</Value>
<Value name="60">
<Value>defaultValueUri</Value>
</Value>
<Value name="61">
<Value>defaultValueUrl</Value>
</Value>
<Value name="62">
<Value>defaultValueUsageContext</Value>
</Value>
<Value name="63">
<Value>defaultValueUuid</Value>
</Value>
<Value name="64">
<Value>meaningWhenMissing</Value>
</Value>
<Value name="65">
<Value>orderMeaning</Value>
</Value>
<Value name="66">
<Value>fixedAddress</Value>
</Value>
<Value name="67">
<Value>fixedAge</Value>
</Value>
<Value name="68">
<Value>fixedAnnotation</Value>
</Value>
<Value name="69">
<Value>fixedAttachment</Value>
</Value>
<Value name="70">
<Value>fixedBase64Binary</Value>
</Value>
<Value name="71">
<Value>fixedBoolean</Value>
</Value>
<Value name="72">
<Value>fixedCanonical</Value>
</Value>
<Value name="73">
<Value>fixedCode</Value>
</Value>
<Value name="74">
<Value>fixedCodeableConcept</Value>
</Value>
<Value name="75">
<Value>fixedCoding</Value>
</Value>
<Value name="76">
<Value>fixedContactDetail</Value>
</Value>
<Value name="77">
<Value>fixedContactPoint</Value>
</Value>
<Value name="78">
<Value>fixedContributor</Value>
</Value>
<Value name="79">
<Value>fixedCount</Value>
</Value>
<Value name="80">
<Value>fixedDataRequirement</Value>
</Value>
<Value name="81">
<Value>fixedDate</Value>
</Value>
<Value name="82">
<Value>fixedDateTime</Value>
</Value>
<Value name="83">
<Value>fixedDecimal</Value>
</Value>
<Value name="84">
<Value>fixedDistance</Value>
</Value>
<Value name="85">
<Value>fixedDosage</Value>
</Value>
<Value name="86">
<Value>fixedDuration</Value>
</Value>
<Value name="87">
<Value>fixedExpression</Value>
</Value>
<Value name="88">
<Value>fixedHumanName</Value>
</Value>
<Value name="89">
<Value>fixedId</Value>
</Value>
<Value name="90">
<Value>fixedIdentifier</Value>
</Value>
<Value name="91">
<Value>fixedInstant</Value>
</Value>
<Value name="92">
<Value>fixedInteger</Value>
</Value>
<Value name="93">
<Value>fixedMarkdown</Value>
</Value>
<Value name="94">
<Value>fixedMeta</Value>
</Value>
<Value name="95">
<Value>fixedMoney</Value>
</Value>
<Value name="96">
<Value>fixedOid</Value>
</Value>
<Value name="97">
<Value>fixedParameterDefinition</Value>
</Value>
<Value name="98">
<Value>fixedPeriod</Value>
</Value>
<Value name="99">
<Value>fixedPositiveInt</Value>
</Value>
<Value name="100">
<Value>fixedQuantity</Value>
</Value>
<Value name="101">
<Value>fixedRange</Value>
</Value>
<Value name="102">
<Value>fixedRatio</Value>
</Value>
<Value name="103">
<Value>fixedReference</Value>
</Value>
<Value name="104">
<Value>fixedRelatedArtifact</Value>
</Value>
<Value name="105">
<Value>fixedSampledData</Value>
</Value>
<Value name="106">
<Value>fixedSignature</Value>
</Value>
<Value name="107">
<Value>fixedString</Value>
</Value>
<Value name="108">
<Value>fixedTime</Value>
</Value>
<Value name="109">
<Value>fixedTiming</Value>
</Value>
<Value name="110">
<Value>fixedTriggerDefinition</Value>
</Value>
<Value name="111">
<Value>fixedUnsignedInt</Value>
</Value>
<Value name="112">
<Value>fixedUri</Value>
</Value>
<Value name="113">
<Value>fixedUrl</Value>
</Value>
<Value name="114">
<Value>fixedUsageContext</Value>
</Value>
<Value name="115">
<Value>fixedUuid</Value>
</Value>
<Value name="116">
<Value>patternAddress</Value>
</Value>
<Value name="117">
<Value>patternAge</Value>
</Value>
<Value name="118">
<Value>patternAnnotation</Value>
</Value>
<Value name="119">
<Value>patternAttachment</Value>
</Value>
<Value name="120">
<Value>patternBase64Binary</Value>
</Value>
<Value name="121">
<Value>patternBoolean</Value>
</Value>
<Value name="122">
<Value>patternCanonical</Value>
</Value>
<Value name="123">
<Value>patternCode</Value>
</Value>
<Value name="124">
<Value>patternCodeableConcept</Value>
</Value>
<Value name="125">
<Value>patternCoding</Value>
</Value>
<Value name="126">
<Value>patternContactDetail</Value>
</Value>
<Value name="127">
<Value>patternContactPoint</Value>
</Value>
<Value name="128">
<Value>patternContributor</Value>
</Value>
<Value name="129">
<Value>patternCount</Value>
</Value>
<Value name="130">
<Value>patternDataRequirement</Value>
</Value>
<Value name="131">
<Value>patternDate</Value>
</Value>
<Value name="132">
<Value>patternDateTime</Value>
</Value>
<Value name="133">
<Value>patternDecimal</Value>
</Value>
<Value name="134">
<Value>patternDistance</Value>
</Value>
<Value name="135">
<Value>patternDosage</Value>
</Value>
<Value name="136">
<Value>patternDuration</Value>
</Value>
<Value name="137">
<Value>patternExpression</Value>
</Value>
<Value name="138">
<Value>patternHumanName</Value>
</Value>
<Value name="139">
<Value>patternId</Value>
</Value>
<Value name="140">
<Value>patternIdentifier</Value>
</Value>
<Value name="141">
<Value>patternInstant</Value>
</Value>
<Value name="142">
<Value>patternInteger</Value>
</Value>
<Value name="143">
<Value>patternMarkdown</Value>
</Value>
<Value name="144">
<Value>patternMeta</Value>
</Value>
<Value name="145">
<Value>patternMoney</Value>
</Value>
<Value name="146">
<Value>patternOid</Value>
</Value>
<Value name="147">
<Value>patternParameterDefinition</Value>
</Value>
<Value name="148">
<Value>patternPeriod</Value>
</Value>
<Value name="149">
<Value>patternPositiveInt</Value>
</Value>
<Value name="150">
<Value>patternQuantity</Value>
</Value>
<Value name="151">
<Value>patternRange</Value>
</Value>
<Value name="152">
<Value>patternRatio</Value>
</Value>
<Value name="153">
<Value>patternReference</Value>
</Value>
<Value name="154">
<Value>patternRelatedArtifact</Value>
</Value>
<Value name="155">
<Value>patternSampledData</Value>
</Value>
<Value name="156">
<Value>patternSignature</Value>
</Value>
<Value name="157">
<Value>patternString</Value>
</Value>
<Value name="158">
<Value>patternTime</Value>
</Value>
<Value name="159">
<Value>patternTiming</Value>
</Value>
<Value name="160">
<Value>patternTriggerDefinition</Value>
</Value>
<Value name="161">
<Value>patternUnsignedInt</Value>
</Value>
<Value name="162">
<Value>patternUri</Value>
</Value>
<Value name="163">
<Value>patternUrl</Value>
</Value>
<Value name="164">
<Value>patternUsageContext</Value>
</Value>
<Value name="165">
<Value>patternUuid</Value>
</Value>
<Value name="166">
<Value>minValueDate</Value>
</Value>
<Value name="167">
<Value>minValueDateTime</Value>
</Value>
<Value name="168">
<Value>minValueDecimal</Value>
</Value>
<Value name="169">
<Value>minValueInstant</Value>
</Value>
<Value name="170">
<Value>minValueInteger</Value>
</Value>
<Value name="171">
<Value>minValuePositiveInt</Value>
</Value>
<Value name="172">
<Value>minValueQuantity</Value>
</Value>
<Value name="173">
<Value>minValueTime</Value>
</Value>
<Value name="174">
<Value>minValueUnsignedInt</Value>
</Value>
<Value name="175">
<Value>maxValueDate</Value>
</Value>
<Value name="176">
<Value>maxValueDateTime</Value>
</Value>
<Value name="177">
<Value>maxValueDecimal</Value>
</Value>
<Value name="178">
<Value>maxValueInstant</Value>
</Value>
<Value name="179">
<Value>maxValueInteger</Value>
</Value>
<Value name="180">
<Value>maxValuePositiveInt</Value>
</Value>
<Value name="181">
<Value>maxValueQuantity</Value>
</Value>
<Value name="182">
<Value>maxValueTime</Value>
</Value>
<Value name="183">
<Value>maxValueUnsignedInt</Value>
</Value>
<Value name="184">
<Value>maxLength</Value>
</Value>
<Value name="185">
<Value>mustSupport</Value>
</Value>
<Value name="186">
<Value>isModifier</Value>
</Value>
<Value name="187">
<Value>isModifierReason</Value>
</Value>
<Value name="188">
<Value>isSummary</Value>
</Value>
<Value name="189">
<Value>binding</Value>
</Value>
</Data>
<Data name="alias">
<Attribute>alias</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.ElementDefinition.alias"</Subscript>
</Data>
<Data name="code">
<Attribute>code</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.ElementDefinition.code"</Subscript>
</Data>
<Data name="condition">
<Attribute>condition</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.ElementDefinition.condition"</Subscript>
</Data>
<Data name="constraint">
<Attribute>constraint</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.ElementDefinition.constraint"</Subscript>
</Data>
<Data name="example">
<Attribute>example</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.ElementDefinition.example"</Subscript>
</Data>
<Data name="mapping">
<Attribute>mapping</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.ElementDefinition.mapping"</Subscript>
</Data>
<Data name="representation">
<Attribute>representation</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.ElementDefinition.representation"</Subscript>
</Data>
<Data name="type">
<Attribute>type</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.ElementDefinition.type"</Subscript>
</Data>
<DefaultData>ElementDefinitionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
