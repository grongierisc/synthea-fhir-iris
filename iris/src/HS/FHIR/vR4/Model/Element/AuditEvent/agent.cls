/// Actor involved in the event.
Class HS.FHIR.vR4.Model.Element.AuditEvent.agent Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// How agent participated.
/// <p>
/// participation-role-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in participation-role-type, 
/// you may formally EXTEND participation-role-type to add codes to it.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Agent role in the event.
/// <p>
/// any FHIR4 code may be used; 
/// security-role-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property role As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "role", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Identifier of who.
/// <p>
/// PractitionerRole | Practitioner | Organization | Device | Patient | RelatedPerson
Property who As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "who", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Alternative User identity.
Property altId As %String(MAXLEN = 1000000, XMLNAME = "altId", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Human friendly name for the agent.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Whether user is initiator.
Property requestor As %Boolean(XMLNAME = "requestor", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Where.
/// <p>
/// Location
Property location As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// uri
/// <p>
/// Policy that authorized event.
Property policy As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "policy", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Type of media.
/// <p>
/// dicm-405-mediatype is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in dicm-405-mediatype, 
/// you may formally EXTEND dicm-405-mediatype to add codes to it.
Property media As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "media", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Logical network location for application activity.
Property network As HS.FHIR.vR4.Model.Element.AuditEvent.agent.network(XMLNAME = "network", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Reason given for this user.
/// <p>
/// v3-PurposeOfUse is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in v3-PurposeOfUse, 
/// you may formally EXTEND v3-PurposeOfUse to add codes to it.
Property purposeOfUse As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "purposeOfUse", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "AuditEvent.agent";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "AuditEvent.agent";

}
