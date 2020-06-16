/// Patient insurance information.
Class HS.FHIR.Storage.vR4.Model.Element.CoverageEligibilityRequest.insurance Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// Applicable coverage.
Property focal As %Boolean(XMLNAME = "focal", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Insurance information.
/// <p>
/// Coverage
Property coverage As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "coverage", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Additional provider contract number.
Property businessArrangement As %String(MAXLEN = 1000000, XMLNAME = "businessArrangement", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CoverageEligibilityRequest.insurance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CoverageEligibilityRequest.insurance";

Storage Default
{
<Data name="insuranceDefaultData">
<Subscript>"insurance"</Subscript>
<Value name="1">
<Value>focal</Value>
</Value>
<Value name="2">
<Value>coverage</Value>
</Value>
<Value name="3">
<Value>businessArrangement</Value>
</Value>
</Data>
<DefaultData>insuranceDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
