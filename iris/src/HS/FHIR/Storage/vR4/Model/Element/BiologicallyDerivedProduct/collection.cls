/// How this product was collected.
Class HS.FHIR.Storage.vR4.Model.Element.BiologicallyDerivedProduct.collection Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Individual performing collection.
/// <p>
/// Practitioner | PractitionerRole
Property collector As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "collector", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who is product from.
/// <p>
/// Patient | Organization
Property source As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Time of product collection.
Property collectedDateTime As %String(MAXLEN = 1000000, XMLNAME = "collectedDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Time of product collection.
Property collectedPeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "collectedPeriod", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "BiologicallyDerivedProduct.collection";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "BiologicallyDerivedProduct.collection";

Storage Default
{
<Data name="collectionDefaultData">
<Subscript>"collection"</Subscript>
<Value name="1">
<Value>collector</Value>
</Value>
<Value name="2">
<Value>source</Value>
</Value>
<Value name="3">
<Value>collectedDateTime</Value>
</Value>
<Value name="4">
<Value>collectedPeriod</Value>
</Value>
</Data>
<DefaultData>collectionDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
