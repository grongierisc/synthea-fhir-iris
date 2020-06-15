/// Planned participants in the coordination and delivery of care for a patient or group.
Class HS.FHIR.vR4.Model.Resource.CareTeam Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External Ids for this team.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// proposed | active | suspended | inactive | entered-in-error
/// <p>
/// care-team-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend care-team-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Type of team.
/// <p>
/// any FHIR4 code may be used; 
/// care-team-category shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Name of the team, 
/// such as crisis assessment team.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who care team is for.
/// <p>
/// Patient | Group
Property subject As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Encounter created as part of.
/// <p>
/// Encounter
Property encounter As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "encounter", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Time period team covers.
Property period As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Members of the team.
Property participant As List Of HS.FHIR.vR4.Model.Element.CareTeam.participant(XMLNAME = "participant", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Why the care team exists.
/// <p>
/// any FHIR4 code may be used; 
/// clinical-findings shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reasonCode As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "reasonCode", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Why the care team exists.
/// <p>
/// Condition
Property reasonReference As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reasonReference", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Organization responsible for the care team.
/// <p>
/// Organization
Property managingOrganization As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "managingOrganization", XMLPROJECTION = "ELEMENT");

/// ContactPoint
/// <p>
/// A contact detail for the care team (that applies to all members)
Property telecom As List Of HS.FHIR.vR4.Model.Datatype.ContactPoint(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "telecom", XMLPROJECTION = "ELEMENT");

/// Annotation
/// <p>
/// Comments made about the CareTeam.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CareTeam";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CareTeam";

}
