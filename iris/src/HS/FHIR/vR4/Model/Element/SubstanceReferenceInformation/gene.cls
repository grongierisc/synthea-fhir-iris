/// Todo.
Class HS.FHIR.vR4.Model.Element.SubstanceReferenceInformation.gene Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property geneSequenceOrigin As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "geneSequenceOrigin", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property gene As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "gene", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Todo.
/// <p>
/// DocumentReference
Property source As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceReferenceInformation.gene";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceReferenceInformation.gene";

}
