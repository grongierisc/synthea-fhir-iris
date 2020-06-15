/// Names applicable to this substance.
Class HS.FHIR.vR4.Model.Element.SubstanceSpecification.name Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// The actual name.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Name type.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The status of the name.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property status As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// If this is the preferred name for this substance.
Property preferred As %Boolean(XMLNAME = "preferred", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Language of the name.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property language As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "language", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The use context of this name for example if there is a different name a drug active ingredient as opposed to a food colour additive.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property domain As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "domain", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The jurisdiction where this name applies.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property jurisdiction As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "jurisdiction", XMLPROJECTION = "ELEMENT");

/// SubstanceSpecification:name
/// <p>
/// A synonym of this name.
Property synonym As List Of HS.FHIR.vR4.Model.Element.SubstanceSpecification.name(XMLNAME = "synonym", XMLPROJECTION = "ELEMENT");

/// SubstanceSpecification:name
/// <p>
/// A translation for this name.
Property translation As List Of HS.FHIR.vR4.Model.Element.SubstanceSpecification.name(XMLNAME = "translation", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Details of the official nature of this name.
Property official As List Of HS.FHIR.vR4.Model.Element.SubstanceSpecification.name.official(XMLNAME = "official", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Supporting literature.
/// <p>
/// DocumentReference
Property source As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSpecification.name";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSpecification.name";

}
