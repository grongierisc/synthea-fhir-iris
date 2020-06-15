/// Qualified range for continuous and ordinal observation results.
Class HS.FHIR.vR4.Model.Element.ObservationDefinition.qualifiedInterval Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// reference | critical | absolute
/// <p>
/// observation-range-category|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend observation-range-category|4.0.1 and you may NOT use codes from other ValueSets.
Property category As %String(MAXLEN = 1000000, XMLNAME = "category", XMLPROJECTION = "ATTRIBUTE");

/// Range
/// <p>
/// The interval itself, 
/// for continuous or ordinal observations.
Property range As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "range", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Range context qualifier.
/// <p>
/// referencerange-meaning is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in referencerange-meaning, 
/// you may formally EXTEND referencerange-meaning to add codes to it.
Property context As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "context", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Targetted population of the range.
/// <p>
/// any FHIR4 code may be used; 
/// referencerange-appliesto shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property appliesTo As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "appliesTo", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// male | female | other | unknown
/// <p>
/// administrative-gender|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend administrative-gender|4.0.1 and you may NOT use codes from other ValueSets.
Property gender As %String(MAXLEN = 1000000, XMLNAME = "gender", XMLPROJECTION = "ATTRIBUTE");

/// Range
/// <p>
/// Applicable age range, 
/// if relevant.
Property age As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "age", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Applicable gestational age range, 
/// if relevant.
Property gestationalAge As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "gestationalAge", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Condition associated with the reference range.
Property condition As %String(MAXLEN = 1000000, XMLNAME = "condition", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ObservationDefinition.qualifiedInterval";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ObservationDefinition.qualifiedInterval";

}
