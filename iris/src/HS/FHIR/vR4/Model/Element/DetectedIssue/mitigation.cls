/// Step taken to address.
Class HS.FHIR.vR4.Model.Element.DetectedIssue.mitigation Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// What mitigation?
/// <p>
/// detectedissue-mitigation-action is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in detectedissue-mitigation-action, 
/// you may use codes from any ValueSet.
Property action As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "action", XMLPROJECTION = "ELEMENT") [ Required ];

/// dateTime
/// <p>
/// Date committed.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who is committing?
/// <p>
/// Practitioner | PractitionerRole
Property author As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DetectedIssue.mitigation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DetectedIssue.mitigation";

}
