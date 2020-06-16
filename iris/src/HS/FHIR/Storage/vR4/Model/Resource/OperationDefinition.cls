/// Definition of an operation or a named query.
Class HS.FHIR.Storage.vR4.Model.Resource.OperationDefinition Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Canonical identifier for this operation definition, 
/// represented as a URI (globally unique)
Property url As %String(MAXLEN = 1000000, XMLNAME = "url", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Business version of the operation definition.
Property version As %String(MAXLEN = 1000000, XMLNAME = "version", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Name for this operation definition (computer friendly)
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Name for this operation definition (human friendly)
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// draft | active | retired | unknown
/// <p>
/// publication-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend publication-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// operation | query
/// <p>
/// operation-kind|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend operation-kind|4.0.1 and you may NOT use codes from other ValueSets.
Property kind As %String(MAXLEN = 1000000, XMLNAME = "kind", XMLPROJECTION = "ATTRIBUTE") [ Required ];

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
/// Natural language description of the operation definition.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As array Of HS.FHIR.Storage.vR4.Model.Datatype.UsageContext(XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for operation definition (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Why this operation definition is defined.
Property purpose As %String(MAXLEN = 1000000, XMLNAME = "purpose", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Whether content is changed by the operation.
Property affectsState As %Boolean(XMLNAME = "affectsState", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Name used to invoke the operation.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// markdown
/// <p>
/// Additional information about use.
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Marks this as a profile of the base.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property base As %String(MAXLEN = 1000000, XMLNAME = "base", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Types this operation applies to.
/// <p>
/// resource-types|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend resource-types|4.0.1 and you may NOT use codes from other ValueSets.
Property resource As array Of %String(MAXLEN = 1000000, XMLNAME = "resource", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Invoke at the system level?
Property system As %Boolean(XMLNAME = "system", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// Invoke at the type level?
Property type As %Boolean(XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// Invoke on an instance?
Property instance As %Boolean(XMLNAME = "instance", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// canonical
/// <p>
/// Validation information for in parameters.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property inputProfile As %String(MAXLEN = 1000000, XMLNAME = "inputProfile", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Validation information for out parameters.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property outputProfile As %String(MAXLEN = 1000000, XMLNAME = "outputProfile", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Parameters for the operation/query.
Property parameter As array Of HS.FHIR.Storage.vR4.Model.Element.OperationDefinition.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Define overloaded variants for when  generating code.
Property overload As array Of HS.FHIR.Storage.vR4.Model.Element.OperationDefinition.overload(XMLNAME = "overload", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "OperationDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "OperationDefinition";

Storage Default
{
<Data name="OperationDefinitionDefaultData">
<Subscript>"OperationDefinition"</Subscript>
<Value name="1">
<Value>url</Value>
</Value>
<Value name="2">
<Value>version</Value>
</Value>
<Value name="3">
<Value>name</Value>
</Value>
<Value name="4">
<Value>title</Value>
</Value>
<Value name="5">
<Value>status</Value>
</Value>
<Value name="6">
<Value>kind</Value>
</Value>
<Value name="7">
<Value>experimental</Value>
</Value>
<Value name="8">
<Value>date</Value>
</Value>
<Value name="9">
<Value>publisher</Value>
</Value>
<Value name="10">
<Value>description</Value>
</Value>
<Value name="11">
<Value>purpose</Value>
</Value>
<Value name="12">
<Value>affectsState</Value>
</Value>
<Value name="13">
<Value>code</Value>
</Value>
<Value name="14">
<Value>comment</Value>
</Value>
<Value name="15">
<Value>base</Value>
</Value>
<Value name="16">
<Value>system</Value>
</Value>
<Value name="17">
<Value>type</Value>
</Value>
<Value name="18">
<Value>instance</Value>
</Value>
<Value name="19">
<Value>inputProfile</Value>
</Value>
<Value name="20">
<Value>outputProfile</Value>
</Value>
</Data>
<Data name="contact">
<Attribute>contact</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.OperationDefinition.contact"</Subscript>
</Data>
<Data name="jurisdiction">
<Attribute>jurisdiction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.OperationDefinition.jurisdiction"</Subscript>
</Data>
<Data name="overload">
<Attribute>overload</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.OperationDefinition.overload"</Subscript>
</Data>
<Data name="parameter">
<Attribute>parameter</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.OperationDefinition.parameter"</Subscript>
</Data>
<Data name="resource">
<Attribute>resource</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.OperationDefinition.resource"</Subscript>
</Data>
<Data name="useContext">
<Attribute>useContext</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.OperationDefinition.useContext"</Subscript>
</Data>
<DefaultData>OperationDefinitionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
