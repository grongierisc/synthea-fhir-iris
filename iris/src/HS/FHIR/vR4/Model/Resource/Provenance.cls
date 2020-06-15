/// Who, 
/// What, 
/// When for a set of resources.
Class HS.FHIR.vR4.Model.Resource.Provenance Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Target Reference(s) (usually version specific)
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property target As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "target", XMLPROJECTION = "ELEMENT") [ Required ];

/// dateTime
/// <p>
/// When the activity occurred.
Property occurredDateTime As %String(MAXLEN = 1000000, XMLNAME = "occurredDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When the activity occurred.
Property occurredPeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "occurredPeriod", XMLPROJECTION = "ELEMENT");

/// instant
/// <p>
/// When the activity was recorded / updated.
Property recorded As %String(MAXLEN = 1000000, XMLNAME = "recorded", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// uri
/// <p>
/// Policy or plan the activity was defined by.
Property policy As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "policy", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Where the activity occurred, 
/// if relevant.
/// <p>
/// Location
Property location As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Reason the activity is occurring.
/// <p>
/// v3-PurposeOfUse is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in v3-PurposeOfUse, 
/// you may formally EXTEND v3-PurposeOfUse to add codes to it.
Property reason As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "reason", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Activity that occurred.
/// <p>
/// provenance-activity-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in provenance-activity-type, 
/// you may formally EXTEND provenance-activity-type to add codes to it.
Property activity As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "activity", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Actor involved.
Property agent As List Of HS.FHIR.vR4.Model.Element.Provenance.agent(XMLNAME = "agent", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// An entity used in this activity.
Property entity As List Of HS.FHIR.vR4.Model.Element.Provenance.entity(XMLNAME = "entity", XMLPROJECTION = "ELEMENT");

/// Signature
/// <p>
/// Signature on target.
Property signature As List Of HS.FHIR.vR4.Model.Datatype.Signature(XMLNAME = "signature", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Provenance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Provenance";

}
