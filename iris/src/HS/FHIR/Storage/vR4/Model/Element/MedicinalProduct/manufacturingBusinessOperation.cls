/// An operation applied to the product, 
/// for manufacturing or adminsitrative purpose.
Class HS.FHIR.Storage.vR4.Model.Element.MedicinalProduct.manufacturingBusinessOperation Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The type of manufacturing operation.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property operationType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "operationType", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// Regulatory authorization reference number.
Property authorisationReferenceNumber As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "authorisationReferenceNumber", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Regulatory authorization date.
Property effectiveDate As %String(MAXLEN = 1000000, XMLNAME = "effectiveDate", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// To indicate if this proces is commercially confidential.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property confidentialityIndicator As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "confidentialityIndicator", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The manufacturer or establishment associated with the process.
/// <p>
/// Organization
Property manufacturer As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "manufacturer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// A regulator which oversees the operation.
/// <p>
/// Organization
Property regulator As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "regulator", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProduct.manufacturingBusinessOperation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProduct.manufacturingBusinessOperation";

Storage Default
{
<Data name="manufacturer">
<Attribute>manufacturer</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicinalProduct.manufacturingBusinessOperation.manufacturer"</Subscript>
</Data>
<Data name="manufacturingBusinessOperationDefaultData">
<Subscript>"manufacturingBusinessOperation"</Subscript>
<Value name="1">
<Value>operationType</Value>
</Value>
<Value name="2">
<Value>authorisationReferenceNumber</Value>
</Value>
<Value name="3">
<Value>effectiveDate</Value>
</Value>
<Value name="4">
<Value>confidentialityIndicator</Value>
</Value>
<Value name="5">
<Value>regulator</Value>
</Value>
</Data>
<DefaultData>manufacturingBusinessOperationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
