/// Specimen in container intended for testing by lab.
Class HS.FHIR.vR4.Model.Element.SpecimenDefinition.typeTested Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// Primary or secondary specimen.
Property isDerived As %Boolean(XMLNAME = "isDerived", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Type of intended specimen.
/// <p>
/// any FHIR4 code may be used; 
/// v2-0487 shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// preferred | alternate
/// <p>
/// specimen-contained-preference|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend specimen-contained-preference|4.0.1 and you may NOT use codes from other ValueSets.
Property preference As %String(MAXLEN = 1000000, XMLNAME = "preference", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// BackboneElement
/// <p>
/// The specimen's container.
Property container As HS.FHIR.vR4.Model.Element.SpecimenDefinition.typeTested.container(XMLNAME = "container", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Specimen requirements.
Property requirement As %String(MAXLEN = 1000000, XMLNAME = "requirement", XMLPROJECTION = "ATTRIBUTE");

/// Duration
/// <p>
/// Specimen retention time.
Property retentionTime As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "retentionTime", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Rejection criterion.
/// <p>
/// any FHIR4 code may be used; 
/// rejection-criteria shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property rejectionCriterion As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "rejectionCriterion", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Specimen handling before testing.
Property handling As List Of HS.FHIR.vR4.Model.Element.SpecimenDefinition.typeTested.handling(XMLNAME = "handling", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SpecimenDefinition.typeTested";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SpecimenDefinition.typeTested";

}
