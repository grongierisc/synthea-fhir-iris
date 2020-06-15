/// Set of values bounded by low and high.
Class HS.FHIR.vR4.Model.Datatype.Range Extends (%Persistent,HS.FHIR.vR4.Model.Base.Element) [ Not ProcedureBlock ]
{

/// Quantity
/// <p>
/// Low limit.
Property low As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "low", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// High limit.
Property high As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "high", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Range";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Range";

}
