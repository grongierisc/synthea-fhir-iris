/// Todo.
Class HS.FHIR.vR4.Model.Element.SubstanceReferenceInformation.target Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Todo.
Property target As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "target", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property interaction As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "interaction", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property organism As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "organism", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property organismType As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "organismType", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Todo.
Property amountQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "amountQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Todo.
Property amountRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "amountRange", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Todo.
Property amountString As %String(MAXLEN = 1000000, XMLNAME = "amountString", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property amountType As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "amountType", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Todo.
/// <p>
/// DocumentReference
Property source As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceReferenceInformation.target";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceReferenceInformation.target";

}
