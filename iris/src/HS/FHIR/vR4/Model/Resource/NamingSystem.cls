/// System of unique identification.
Class HS.FHIR.vR4.Model.Resource.NamingSystem Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Name for this naming system (computer friendly)
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// draft | active | retired | unknown
/// <p>
/// publication-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend publication-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// codesystem | identifier | root
/// <p>
/// namingsystem-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend namingsystem-type|4.0.1 and you may NOT use codes from other ValueSets.
Property kind As %String(MAXLEN = 1000000, XMLNAME = "kind", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// dateTime
/// <p>
/// Date last changed.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Name of the publisher (organization or individual)
Property publisher As %String(MAXLEN = 1000000, XMLNAME = "publisher", XMLPROJECTION = "ATTRIBUTE");

/// ContactDetail
/// <p>
/// Contact details for the publisher.
Property contact As List Of HS.FHIR.vR4.Model.Datatype.ContactDetail(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Who maintains system namespace?
Property responsible As %String(MAXLEN = 1000000, XMLNAME = "responsible", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// e.g. 
/// driver, 
///  provider, 
///  patient, 
/// bank etc.
/// <p>
/// identifier-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in identifier-type, 
/// you may formally EXTEND identifier-type to add codes to it.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// markdown
/// <p>
/// Natural language description of the naming system.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// UsageContext
/// <p>
/// The context that the content is intended to support.
Property useContext As List Of HS.FHIR.vR4.Model.Datatype.UsageContext(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "useContext", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Intended jurisdiction for naming system (if applicable)
/// <p>
/// jurisdiction is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in jurisdiction, 
/// you may formally EXTEND jurisdiction to add codes to it.
Property jurisdiction As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// How/where is it used.
Property usage As %String(MAXLEN = 1000000, XMLNAME = "usage", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Unique identifiers used for system.
Property uniqueId As List Of HS.FHIR.vR4.Model.Element.NamingSystem.uniqueId(XMLNAME = "uniqueId", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "NamingSystem";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "NamingSystem";

}
