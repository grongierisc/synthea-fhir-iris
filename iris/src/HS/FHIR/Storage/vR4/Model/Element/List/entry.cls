/// Entries in the list.
Class HS.FHIR.Storage.vR4.Model.Element.List.entry Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Status/Workflow information about this item.
/// <p>
/// any FHIR4 code may be used; 
/// list-item-flag shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property flag As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "flag", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// If this item is actually marked as deleted.
Property deleted As %Boolean(XMLNAME = "deleted", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// When item added to list.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Actual entry.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property item As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "item", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "List.entry";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "List.entry";

Storage Default
{
<Data name="entryDefaultData">
<Subscript>"entry"</Subscript>
<Value name="1">
<Value>flag</Value>
</Value>
<Value name="2">
<Value>deleted</Value>
</Value>
<Value name="3">
<Value>date</Value>
</Value>
<Value name="4">
<Value>item</Value>
</Value>
</Data>
<DefaultData>entryDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
