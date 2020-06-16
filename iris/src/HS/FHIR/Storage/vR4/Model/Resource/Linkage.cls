/// Links records for 'same' item.
Class HS.FHIR.Storage.vR4.Model.Resource.Linkage Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// Whether this linkage assertion is active or not.
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who is responsible for linkages.
/// <p>
/// Practitioner | PractitionerRole | Organization
Property author As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "author", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Item to be linked.
Property item As array Of HS.FHIR.Storage.vR4.Model.Element.Linkage.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Linkage";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Linkage";

Storage Default
{
<Data name="LinkageDefaultData">
<Subscript>"Linkage"</Subscript>
<Value name="1">
<Value>active</Value>
</Value>
<Value name="2">
<Value>author</Value>
</Value>
</Data>
<Data name="item">
<Attribute>item</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Linkage.item"</Subscript>
</Data>
<DefaultData>LinkageDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
