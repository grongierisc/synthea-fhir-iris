/// Pertinent diagnosis information.
Class HS.FHIR.vR4.Model.Element.Claim.diagnosis Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Diagnosis instance identifier.
Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Nature of illness or problem.
/// <p>
/// any FHIR4 code may be used; 
/// icd-10 shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property diagnosisCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "diagnosisCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Nature of illness or problem.
/// <p>
/// Condition.
Property diagnosisReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "diagnosisReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Timing or nature of the diagnosis.
/// <p>
/// any FHIR4 code may be used; 
/// ex-diagnosistype shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Present on admission.
/// <p>
/// any FHIR4 code may be used; 
/// ex-diagnosis-on-admission shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property onAdmission As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "onAdmission", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Package billing code.
/// <p>
/// any FHIR4 code may be used; 
/// ex-diagnosisrelatedgroup shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property packageCode As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "packageCode", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Claim.diagnosis";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Claim.diagnosis";

}
