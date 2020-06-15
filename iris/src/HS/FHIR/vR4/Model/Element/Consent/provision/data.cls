/// Data controlled by this rule.
Class HS.FHIR.vR4.Model.Element.Consent.provision.data Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// instance | related | dependents | authoredby
/// <p>
/// consent-data-meaning|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend consent-data-meaning|4.0.1 and you may NOT use codes from other ValueSets.
Property meaning As %String(MAXLEN = 1000000, XMLNAME = "meaning", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// The actual data reference.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property reference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reference", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Consent.provision.data";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Consent.provision.data";

}
