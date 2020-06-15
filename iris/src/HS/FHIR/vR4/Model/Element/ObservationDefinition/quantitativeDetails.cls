/// Characteristics of quantitative results.
Class HS.FHIR.vR4.Model.Element.ObservationDefinition.quantitativeDetails Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Customary unit for quantitative results.
/// <p>
/// ucum-units is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in ucum-units, 
/// you may formally EXTEND ucum-units to add codes to it.
Property customaryUnit As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "customaryUnit", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// SI unit for quantitative results.
/// <p>
/// ucum-units is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in ucum-units, 
/// you may formally EXTEND ucum-units to add codes to it.
Property unit As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "unit", XMLPROJECTION = "ELEMENT");

/// decimal
/// <p>
/// SI to Customary unit conversion factor.
Property conversionFactor As %Decimal(XMLNAME = "conversionFactor", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Decimal precision of observation quantitative results.
Property decimalPrecision As %Integer(XMLNAME = "decimalPrecision", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ObservationDefinition.quantitativeDetails";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ObservationDefinition.quantitativeDetails";

}
