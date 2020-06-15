/// Contract Term Asset List.
Class HS.FHIR.vR4.Model.Element.Contract.term.asset Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Range of asset.
/// <p>
/// any FHIR4 code may be used; 
/// contract-assetscope shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property scope As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "scope", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Asset category.
/// <p>
/// any FHIR4 code may be used; 
/// contract-assettype shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Associated entities.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property typeReference As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "typeReference", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Asset sub-category.
/// <p>
/// any FHIR4 code may be used; 
/// contract-assetsubtype shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property subtype As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "subtype", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Kinship of the asset.
/// <p>
/// consent-content-class is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in consent-content-class, 
/// you may formally EXTEND consent-content-class to add codes to it.
Property relationship As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "relationship", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Circumstance of the asset.
Property context As List Of HS.FHIR.vR4.Model.Element.Contract.term.asset.context(XMLNAME = "context", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Quality desctiption of asset.
Property condition As %String(MAXLEN = 1000000, XMLNAME = "condition", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Asset availability types.
/// <p>
/// any FHIR4 code may be used; 
/// asset-availability shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property periodType As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "periodType", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Time period of the asset.
Property period As List Of HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Time period.
Property usePeriod As List Of HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "usePeriod", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Asset clause or question text.
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Pointer to asset text.
Property linkId As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ELEMENT");

/// Contract:term[n].offer.answer
/// <p>
/// Response to assets.
Property answer As List Of HS.FHIR.vR4.Model.Element.Contract.term.offer.answer(XMLNAME = "answer", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// Asset restriction numbers.
Property securityLabelNumber As List Of%Integer(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "securityLabelNumber", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Contract Valued Item List.
Property valuedItem As List Of HS.FHIR.vR4.Model.Element.Contract.term.asset.valuedItem(XMLNAME = "valuedItem", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term.asset";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term.asset";

}
