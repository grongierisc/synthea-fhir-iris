/// Benefit Summary.
Class HS.FHIR.vR4.Model.Element.CoverageEligibilityResponse.insurance.item.benefit Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Benefit classification.
/// <p>
/// any FHIR4 code may be used; 
/// benefit-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// Money
/// <p>
/// Benefits allowed.
Property allowedMoney As HS.FHIR.vR4.Model.Datatype.Money(XMLNAME = "allowedMoney", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Benefits allowed.
Property allowedString As %String(MAXLEN = 1000000, XMLNAME = "allowedString", XMLPROJECTION = "ATTRIBUTE");

/// unsignedInt
/// <p>
/// Benefits allowed.
Property allowedUnsignedInt As %Integer(XMLNAME = "allowedUnsignedInt", XMLPROJECTION = "ATTRIBUTE");

/// Money
/// <p>
/// Benefits used.
Property usedMoney As HS.FHIR.vR4.Model.Datatype.Money(XMLNAME = "usedMoney", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Benefits used.
Property usedString As %String(MAXLEN = 1000000, XMLNAME = "usedString", XMLPROJECTION = "ATTRIBUTE");

/// unsignedInt
/// <p>
/// Benefits used.
Property usedUnsignedInt As %Integer(XMLNAME = "usedUnsignedInt", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CoverageEligibilityResponse.insurance.item.benefit";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CoverageEligibilityResponse.insurance.item.benefit";

}
