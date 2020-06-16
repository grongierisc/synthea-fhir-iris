/// Product storage.
Class HS.FHIR.Storage.vR4.Model.Element.BiologicallyDerivedProduct.storage Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Description of storage.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Storage temperature.
Property temperature As %Decimal(XMLNAME = "temperature", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// farenheit | celsius | kelvin
/// <p>
/// product-storage-scale|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend product-storage-scale|4.0.1 and you may NOT use codes from other ValueSets.
Property scale As %String(MAXLEN = 1000000, XMLNAME = "scale", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Storage timeperiod.
Property duration As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "duration", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "BiologicallyDerivedProduct.storage";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "BiologicallyDerivedProduct.storage";

Storage Default
{
<Data name="storageDefaultData">
<Subscript>"storage"</Subscript>
<Value name="1">
<Value>description</Value>
</Value>
<Value name="2">
<Value>temperature</Value>
</Value>
<Value name="3">
<Value>scale</Value>
</Value>
<Value name="4">
<Value>duration</Value>
</Value>
</Data>
<DefaultData>storageDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
