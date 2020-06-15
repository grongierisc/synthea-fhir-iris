/// The parties ultimately responsible for balancing the Account.
Class HS.FHIR.vR4.Model.Element.Account.guarantor Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Responsible entity.
/// <p>
/// Patient | RelatedPerson | Organization
Property party As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "party", XMLPROJECTION = "ELEMENT") [ Required ];

/// boolean
/// <p>
/// Credit or other hold applied.
Property onHold As %Boolean(XMLNAME = "onHold", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Guarantee account during.
Property period As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Account.guarantor";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Account.guarantor";

}
