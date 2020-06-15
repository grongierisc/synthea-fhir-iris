/// Reference range of possible or expected values.
Class HS.FHIR.vR4.Model.Element.SubstanceAmount.referenceRange Extends (%Persistent,HS.FHIR.vR4.Model.Base.Element) [ Not ProcedureBlock ]
{

/// Quantity
/// <p>
/// Lower limit possible or expected.
Property lowLimit As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "lowLimit", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Upper limit possible or expected.
Property highLimit As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "highLimit", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "referenceRange";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "referenceRange";

}
