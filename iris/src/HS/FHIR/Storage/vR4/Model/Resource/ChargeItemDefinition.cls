/// Definition of properties and rules about how the price and the applicability of a ChargeItem can be determined.
Class HS.FHIR.Storage.vR4.Model.Resource.ChargeItemDefinition Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Canonical identifier for this charge item definition, 
/// represented as a URI (globally unique)
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Identifier
/// <p>
/// Additional identifier for the charge item definition.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Business version of the charge item definition.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this charge item definition (human friendly)
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Underlying externally-defined charge item definition.
Property derivedFromUri As array Of %String(MAXLEN = 1000000, XMLNAME = "derivedFromUri", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// A larger definition of which this particular definition is a component or step.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property partOf As array Of %String(MAXLEN = 1000000, XMLNAME = "partOf", XMLPROJECTION = "ELEMENT");

/// canonical
/// <p>
/// Completed or terminated request(s) whose function is taken by this new request.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property replaces As array Of %String(MAXLEN = 1000000, XMLNAME = "replaces", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// draft | active | retired | unknown
/// <p>
/// publication-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend publication-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// For testing purposes, 
/// not real usage.
Property experimental As %Boolean(XMLNAME = "experimental", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Date last changed.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name of the publisher (organization or individual)
Property publisher As %String(MAXLEN = 1000000, XMLNAME = "publisher", XMLPROJECTION = "ATTRIBUTE");

/// ContactDetail
/// <p>
/// Contact details for the publisher.
Property contact As array Of HS.FHIR.Storage.vR4.Model.Datatype.ContactDetail(XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Natural language description of the charge item definition.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As array Of HS.FHIR.Storage.vR4.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for charge item definition (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Use and/or publishing restrictions.
Property copyright As %String(MAXLEN = 1000000, XMLNAME = "copyright", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// When the charge item definition was approved by publisher.
Property approvalDate As %String(MAXLEN = 1000000, XMLNAME = "approvalDate", XMLPROJECTION = "ATTRIBUTE");

/// date
/// <p>
/// When the charge item definition was last reviewed.
Property lastReviewDate As %String(MAXLEN = 1000000, XMLNAME = "lastReviewDate", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When the charge item definition is expected to be used.
Property effectivePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "effectivePeriod", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Billing codes or product types this definition applies to.
/// <p>
/// any FHIR4 code may be used; 
/// chargeitem-billingcodes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Instances this definition applies to.
/// <p>
/// Medication | Substance | Device
Property instance As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "instance", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Whether or not the billing code is applicable.
Property applicability As array Of HS.FHIR.Storage.vR4.Model.Element.ChargeItemDefinition.applicability(XMLNAME = "applicability", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Group of properties which are applicable under the same conditions.
Property propertyGroup As array Of HS.FHIR.Storage.vR4.Model.Element.ChargeItemDefinition.propertyGroup(XMLNAME = "propertyGroup", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ChargeItemDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ChargeItemDefinition";

Storage Default
{
<Data name="ChargeItemDefinitionDefaultData">
<Subscript>"ChargeItemDefinition"</Subscript>
<Value name="1">
<Value>url</Value>
</Value>
<Value name="2">
<Value>version</Value>
</Value>
<Value name="3">
<Value>title</Value>
</Value>
<Value name="4">
<Value>status</Value>
</Value>
<Value name="5">
<Value>experimental</Value>
</Value>
<Value name="6">
<Value>date</Value>
</Value>
<Value name="7">
<Value>publisher</Value>
</Value>
<Value name="8">
<Value>description</Value>
</Value>
<Value name="9">
<Value>copyright</Value>
</Value>
<Value name="10">
<Value>approvalDate</Value>
</Value>
<Value name="11">
<Value>lastReviewDate</Value>
</Value>
<Value name="12">
<Value>effectivePeriod</Value>
</Value>
<Value name="13">
<Value>code</Value>
</Value>
</Data>
<Data name="applicability">
<Attribute>applicability</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ChargeItemDefinition.applicability"</Subscript>
</Data>
<Data name="contact">
<Attribute>contact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ChargeItemDefinition.contact"</Subscript>
</Data>
<Data name="derivedFromUri">
<Attribute>derivedFromUri</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ChargeItemDefinition.derivedFromUri"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ChargeItemDefinition.identifier"</Subscript>
</Data>
<Data name="instance">
<Attribute>instance</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ChargeItemDefinition.instance"</Subscript>
</Data>
<Data name="jurisdiction">
<Attribute>jurisdiction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ChargeItemDefinition.jurisdiction"</Subscript>
</Data>
<Data name="partOf">
<Attribute>partOf</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ChargeItemDefinition.partOf"</Subscript>
</Data>
<Data name="propertyGroup">
<Attribute>propertyGroup</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ChargeItemDefinition.propertyGroup"</Subscript>
</Data>
<Data name="replaces">
<Attribute>replaces</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ChargeItemDefinition.replaces"</Subscript>
</Data>
<Data name="useContext">
<Attribute>useContext</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.ChargeItemDefinition.useContext"</Subscript>
</Data>
<DefaultData>ChargeItemDefinitionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
