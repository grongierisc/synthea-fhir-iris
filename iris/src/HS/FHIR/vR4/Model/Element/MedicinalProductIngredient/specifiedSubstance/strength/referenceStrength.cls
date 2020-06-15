/// Strength expressed in terms of a reference substance.
Class HS.FHIR.vR4.Model.Element.MedicinalProductIngredient.specifiedSubstance.strength.referenceStrength Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Relevant reference substance.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property substance As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "substance", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// Strength expressed in terms of a reference substance.
Property strength As HS.FHIR.vR4.Model.Datatype.Ratio(XMLNAME = "strength", XMLPROJECTION = "ELEMENT") [ Required ];

/// Ratio
/// <p>
/// Strength expressed in terms of a reference substance.
Property strengthLowLimit As HS.FHIR.vR4.Model.Datatype.Ratio(XMLNAME = "strengthLowLimit", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// For when strength is measured at a particular point or distance.
Property measurementPoint As %String(MAXLEN = 1000000, XMLNAME = "measurementPoint", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// The country or countries for which the strength range applies.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property country As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "country", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductIngredient.specifiedSubstance.strength.referenceStrength";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductIngredient.specifiedSubstance.strength.referenceStrength";

}
