/// Insurance or medical plan or a payment agreement.
Class HS.FHIR.vR4.Model.Resource.Coverage Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Business Identifier for the coverage.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | cancelled | draft | entered-in-error
/// <p>
/// fm-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend fm-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Coverage category such as medical or accident.
/// <p>
/// coverage-type is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in coverage-type, 
/// you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Owner of the policy.
/// <p>
/// Patient | RelatedPerson | Organization
Property policyHolder As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "policyHolder", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Subscriber to the policy.
/// <p>
/// Patient | RelatedPerson
Property subscriber As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "subscriber", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// ID assigned to the subscriber.
Property subscriberId As %String(MAXLEN = 1000000, XMLNAME = "subscriberId", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Plan beneficiary.
/// <p>
/// Patient
Property beneficiary As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "beneficiary", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Dependent number.
Property dependent As %String(MAXLEN = 1000000, XMLNAME = "dependent", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Beneficiary relationship to the subscriber.
/// <p>
/// subscriber-relationship is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in subscriber-relationship, 
/// you may formally EXTEND subscriber-relationship to add codes to it.
Property relationship As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "relationship", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Coverage start and end dates.
Property period As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Issuer of the policy.
/// <p>
/// Organization | Patient | RelatedPerson
Property payor As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "payor", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Additional coverage classifications.
Property class As List Of HS.FHIR.vR4.Model.Element.Coverage.class(XMLNAME = "class", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Relative order of the coverage.
Property order As %Integer(XMLNAME = "order", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Insurer network.
Property network As %String(MAXLEN = 1000000, XMLNAME = "network", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Patient payments for services/products.
Property costToBeneficiary As List Of HS.FHIR.vR4.Model.Element.Coverage.costToBeneficiary(XMLNAME = "costToBeneficiary", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Reimbursement to insurer.
Property subrogation As %Boolean(XMLNAME = "subrogation", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Contract details.
/// <p>
/// Contract
Property contract As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "contract", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Coverage";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Coverage";

}
