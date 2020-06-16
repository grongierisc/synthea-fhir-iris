/// Who or what is in group.
Class HS.FHIR.Storage.vR4.Model.Element.Group.member Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Reference to the group member.
/// <p>
/// Patient | Practitioner | PractitionerRole | Device | Medication | Substance | Group
Property entity As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "entity", XMLPROJECTION = "ELEMENT") [ Required ];

/// Period
/// <p>
/// Period member belonged to the group.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// If member is no longer in group.
Property inactive As %Boolean(XMLNAME = "inactive", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Group.member";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Group.member";

Storage Default
{
<Data name="memberDefaultData">
<Subscript>"member"</Subscript>
<Value name="1">
<Value>entity</Value>
</Value>
<Value name="2">
<Value>period</Value>
</Value>
<Value name="3">
<Value>inactive</Value>
</Value>
</Data>
<DefaultData>memberDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
