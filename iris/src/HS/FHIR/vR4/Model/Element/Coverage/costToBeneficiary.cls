/// Patient payments for services/products.
Class HS.FHIR.vR4.Model.Element.Coverage.costToBeneficiary Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Cost category.
/// <p>
/// coverage-copay-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in coverage-copay-type, 
/// you may formally EXTEND coverage-copay-type to add codes to it.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Money
/// <p>
/// The amount or percentage due from the beneficiary.
Property valueMoney As HS.FHIR.vR4.Model.Datatype.Money(XMLNAME = "valueMoney", XMLPROJECTION = "ELEMENT") [ Required ];

/// Quantity
/// <p>
/// The amount or percentage due from the beneficiary.
Property valueQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Exceptions for patient payments.
Property exception As List Of HS.FHIR.vR4.Model.Element.Coverage.costToBeneficiary.exception(XMLNAME = "exception", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Coverage.costToBeneficiary";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Coverage.costToBeneficiary";

}
