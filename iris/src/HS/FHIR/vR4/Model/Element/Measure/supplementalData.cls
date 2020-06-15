/// What other data should be reported with the measure.
Class HS.FHIR.vR4.Model.Element.Measure.supplementalData Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Meaning of the supplemental data.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// supplemental-data | risk-adjustment-factor
/// <p>
/// measure-data-usage is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in measure-data-usage, 
/// you may formally EXTEND measure-data-usage to add codes to it.
Property usage As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "usage", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The human readable description of this supplemental data.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// Expression
/// <p>
/// Expression describing additional data to be reported.
Property criteria As HS.FHIR.vR4.Model.Datatype.Expression(XMLNAME = "criteria", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Measure.supplementalData";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Measure.supplementalData";

}
