/// An item that this catalog entry is related to.
Class HS.FHIR.Storage.vR4.Model.Element.CatalogEntry.relatedEntry Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// triggers | is-replaced-by
/// <p>
/// relation-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend relation-type|4.0.1 and you may NOT use codes from other ValueSets.
Property relationtype As %String(MAXLEN = 1000000, XMLNAME = "relationtype", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// The reference to the related item.
/// <p>
/// CatalogEntry
Property item As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "item", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CatalogEntry.relatedEntry";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CatalogEntry.relatedEntry";

Storage Default
{
<Data name="relatedEntryDefaultData">
<Subscript>"relatedEntry"</Subscript>
<Value name="1">
<Value>relationtype</Value>
</Value>
<Value name="2">
<Value>item</Value>
</Value>
</Data>
<DefaultData>relatedEntryDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
