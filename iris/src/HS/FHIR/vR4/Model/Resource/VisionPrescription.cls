/// Prescription for vision correction products for a patient.
Class HS.FHIR.vR4.Model.Resource.VisionPrescription Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier for vision prescription.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | cancelled | draft | entered-in-error
/// <p>
/// fm-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend fm-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// dateTime
/// <p>
/// Response creation date.
Property created As %String(MAXLEN = 1000000, XMLNAME = "created", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Who prescription is for.
/// <p>
/// Patient
Property patient As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "patient", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Created during encounter / admission / stay.
/// <p>
/// Encounter
Property encounter As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When prescription was authorized.
Property dateWritten As %String(MAXLEN = 1000000, XMLNAME = "dateWritten", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Who authorized the vision prescription.
/// <p>
/// Practitioner | PractitionerRole
Property prescriber As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "prescriber", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Vision lens authorization.
Property lensSpecification As List Of HS.FHIR.vR4.Model.Element.VisionPrescription.lensSpecification(XMLNAME = "lensSpecification", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "VisionPrescription";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "VisionPrescription";

}
