/// The technical details of an endpoint that can be used for electronic services.
Class HS.FHIR.vR4.Model.Resource.Endpoint Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Identifies this endpoint across multiple systems.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | suspended | error | off | entered-in-error | test
/// <p>
/// endpoint-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend endpoint-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Coding
/// <p>
/// Protocol/Profile/Standard to be used with this endpoint connection.
/// <p>
/// endpoint-connection-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in endpoint-connection-type, 
/// you may formally EXTEND endpoint-connection-type to add codes to it.
Property connectionType As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "connectionType", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// A name that this endpoint can be identified by.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Organization that manages this endpoint (might not be the organization that exposes the endpoint)
/// <p>
/// Organization
Property managingOrganization As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "managingOrganization", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// Contact details for source (e.g. 
/// troubleshooting)
Property contact As List Of HS.FHIR.vR4.Model.Datatype.ContactPoint(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Interval the endpoint is expected to be operational.
Property period As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The type of content that may be used at this endpoint (e.g. 
/// XDS Discharge summaries)
/// <p>
/// any FHIR4 code may be used; 
/// endpoint-payload-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property payloadType As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "payloadType", XMLPROJECTION = "ELEMENT") [ Required ];

/// code
/// <p>
/// Mimetype to send. 
/// If not specified, 
/// the content could be anything (including no payload, 
/// if the connectionType defined this)
/// <p>
/// mimetypes|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend mimetypes|4.0.1 and you may NOT use codes from other ValueSets.
Property payloadMimeType As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "payloadMimeType", XMLPROJECTION = "ELEMENT");

/// url
/// <p>
/// The technical base address for connecting to this endpoint.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property address As %String(MAXLEN = 1000000, XMLNAME = "address", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Usage depends on the channel type.
Property header As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "header", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Endpoint";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Endpoint";

}
