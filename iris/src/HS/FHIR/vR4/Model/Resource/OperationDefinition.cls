/// Definition of an operation or a named query.
Class HS.FHIR.vR4.Model.Resource.OperationDefinition Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
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
Property contact As List Of HS.FHIR.vR4.Model.Datatype.ContactDetail(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Natural language description of the operation definition.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As List Of HS.FHIR.vR4.Model.Datatype.UsageContext(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for operation definition (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

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
Property resource As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "resource", XMLPROJECTION = "ELEMENT");

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
Property parameter As List Of HS.FHIR.vR4.Model.Element.OperationDefinition.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Define overloaded variants for when  generating code.
Property overload As List Of HS.FHIR.vR4.Model.Element.OperationDefinition.overload(XMLNAME = "overload", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "OperationDefinition";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "OperationDefinition";

}
