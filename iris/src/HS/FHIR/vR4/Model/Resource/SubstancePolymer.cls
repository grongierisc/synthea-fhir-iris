/// Todo.
Class HS.FHIR.vR4.Model.Resource.SubstancePolymer Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property class As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "class", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property geometry As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "geometry", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property copolymerConnectivity As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "copolymerConnectivity", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Todo.
Property modification As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "modification", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Todo.
Property monomerSet As List Of HS.FHIR.vR4.Model.Element.SubstancePolymer.monomerSet(XMLNAME = "monomerSet", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Todo.
Property repeat As List Of HS.FHIR.vR4.Model.Element.SubstancePolymer.repeat(XMLNAME = "repeat", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstancePolymer";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstancePolymer";

}
