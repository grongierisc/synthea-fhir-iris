/// Todo.
Class HS.FHIR.vR4.Model.Element.SubstancePolymer.repeat Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// integer
/// <p>
/// Todo.
Property numberOfUnits As %Integer(XMLNAME = "numberOfUnits", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Todo.
Property averageMolecularFormula As %String(MAXLEN = 1000000, XMLNAME = "averageMolecularFormula", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property repeatUnitAmountType As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "repeatUnitAmountType", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Todo.
Property repeatUnit As List Of HS.FHIR.vR4.Model.Element.SubstancePolymer.repeat.repeatUnit(XMLNAME = "repeatUnit", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstancePolymer.repeat";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstancePolymer.repeat";

}
