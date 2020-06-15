/// Todo.
Class HS.FHIR.vR4.Model.Element.SubstancePolymer.monomerSet.startingMaterial Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property material As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "material", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Todo.
Property isDefining As %Boolean(XMLNAME = "isDefining", XMLPROJECTION = "ATTRIBUTE");

/// SubstanceAmount
/// <p>
/// Todo.
Property amount As HS.FHIR.vR4.Model.Datatype.SubstanceAmount(XMLNAME = "amount", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstancePolymer.monomerSet.startingMaterial";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstancePolymer.monomerSet.startingMaterial";

}
