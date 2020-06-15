/// Supporting information.
Class HS.FHIR.vR4.Model.Element.Claim.supportingInfo Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Information instance identifier.
Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Classification of the supplied information.
/// <p>
/// any FHIR4 code may be used; 
/// claim-informationcategory shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Type of information.
/// <p>
/// any FHIR4 code may be used; 
/// claim-exception shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// date
/// <p>
/// When it occurred.
Property timingDate As %String(MAXLEN = 1000000, XMLNAME = "timingDate", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// When it occurred.
Property timingPeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "timingPeriod", XMLPROJECTION = "ELEMENT");

/// Attachment
/// <p>
/// Data to be provided.
Property valueAttachment As HS.FHIR.vR4.Model.Datatype.Attachment(XMLNAME = "valueAttachment", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Data to be provided.
Property valueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ATTRIBUTE");

/// Quantity
/// <p>
/// Data to be provided.
Property valueQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Data to be provided.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference.
Property valueReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "valueReference", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Data to be provided.
Property valueString As %String(MAXLEN = 1000000, XMLNAME = "valueString", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Explanation for the information.
/// <p>
/// any FHIR4 code may be used; 
/// missing-tooth-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property reason As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "reason", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Claim.supportingInfo";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Claim.supportingInfo";

}
