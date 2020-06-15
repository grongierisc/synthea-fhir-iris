/// Details of the event.
Class HS.FHIR.vR4.Model.Element.Claim.accident Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// date
/// <p>
/// When the incident occurred.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// The nature of the accident.
/// <p>
/// v3-ActIncidentCode is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in v3-ActIncidentCode, 
/// you may formally EXTEND v3-ActIncidentCode to add codes to it.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Address
/// <p>
/// Where the event occurred.
Property locationAddress As HS.FHIR.vR4.Model.Datatype.Address(XMLNAME = "locationAddress", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where the event occurred.
/// <p>
/// Location.
Property locationReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "locationReference", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Claim.accident";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Claim.accident";

}
