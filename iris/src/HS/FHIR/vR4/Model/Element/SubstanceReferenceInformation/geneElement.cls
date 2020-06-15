/// Todo.
Class HS.FHIR.vR4.Model.Element.SubstanceReferenceInformation.geneElement Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Todo.
Property element As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "element", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Todo.
/// <p>
/// DocumentReference
Property source As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceReferenceInformation.geneElement";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceReferenceInformation.geneElement";

}
