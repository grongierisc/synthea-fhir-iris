/// Provides guide for interpretation.
Class HS.FHIR.vR4.Model.Element.Observation.referenceRange Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Quantity
/// <p>
/// Low Range, 
/// if relevant.
Property low As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "low", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// High Range, 
/// if relevant.
Property high As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "high", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Reference range qualifier.
/// <p>
/// referencerange-meaning is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in referencerange-meaning, 
/// you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Reference range population.
/// <p>
/// any FHIR4 code may be used; 
/// referencerange-appliesto shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property appliesTo As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "appliesTo", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Applicable age range, 
/// if relevant.
Property age As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "age", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Text based reference range in an observation.
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Observation.referenceRange";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Observation.referenceRange";

}
