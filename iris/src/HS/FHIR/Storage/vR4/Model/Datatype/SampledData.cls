/// A series of measurements taken by a device.
Class HS.FHIR.Storage.vR4.Model.Datatype.SampledData Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// Quantity
/// <p>
/// Zero value and units.
Property origin As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "origin", XMLPROJECTION = "ELEMENT") [ Required ];

/// decimal
/// <p>
/// Number of milliseconds between samples.
Property period As %Decimal(XMLNAME = "period", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// decimal
/// <p>
/// Multiply data by this before adding to origin.
Property factor As %Decimal(XMLNAME = "factor", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Lower limit of detection.
Property lowerLimit As %Decimal(XMLNAME = "lowerLimit", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Upper limit of detection.
Property upperLimit As %Decimal(XMLNAME = "upperLimit", XMLPROJECTION = "ATTRIBUTE");

/// positiveInt
/// <p>
/// Number of sample points at each time point.
Property dimensions As %Integer(XMLNAME = "dimensions", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Decimal values with spaces, 
/// or \"E\" | \"U\" | \"L\"
Property data As %String(MAXLEN = 1000000, XMLNAME = "data", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SampledData";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SampledData";

Storage Default
{
<Data name="SampledDataDefaultData">
<Subscript>"SampledData"</Subscript>
<Value name="1">
<Value>origin</Value>
</Value>
<Value name="2">
<Value>period</Value>
</Value>
<Value name="3">
<Value>factor</Value>
</Value>
<Value name="4">
<Value>lowerLimit</Value>
</Value>
<Value name="5">
<Value>upperLimit</Value>
</Value>
<Value name="6">
<Value>dimensions</Value>
</Value>
<Value name="7">
<Value>data</Value>
</Value>
</Data>
<DefaultData>SampledDataDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
