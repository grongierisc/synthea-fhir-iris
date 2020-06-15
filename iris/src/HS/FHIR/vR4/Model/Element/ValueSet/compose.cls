/// Content logical definition of the value set (CLD)
Class HS.FHIR.vR4.Model.Element.ValueSet.compose Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// date
/// <p>
/// Fixed date for references with no specified version (transitive)
Property lockedDate As %String(MAXLEN = 1000000, XMLNAME = "lockedDate", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Whether inactive codes are in the value set.
Property inactive As %Boolean(XMLNAME = "inactive", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Include one or more codes from a code system or other value set(s)
Property include As List Of HS.FHIR.vR4.Model.Element.ValueSet.compose.include(XMLNAME = "include", XMLPROJECTION = "ELEMENT") [ Required ];

/// ValueSet:compose.include
/// <p>
/// Explicitly exclude codes from a code system or other value sets.
Property exclude As List Of HS.FHIR.vR4.Model.Element.ValueSet.compose.include(XMLNAME = "exclude", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ValueSet.compose";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ValueSet.compose";

}
