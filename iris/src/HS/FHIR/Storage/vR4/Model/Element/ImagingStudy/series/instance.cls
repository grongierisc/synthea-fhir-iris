/// A single SOP instance from the series.
Class HS.FHIR.Storage.vR4.Model.Element.ImagingStudy.series.instance Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// id
/// <p>
/// DICOM SOP Instance UID.
Property uid As %String(MAXLEN = 1000000, XMLNAME = "uid", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Coding
/// <p>
/// DICOM class type.
/// <p>
/// sect_B.5.html#table_B.5-1 is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in sect_B.5.html#table_B.5-1, 
/// you may formally EXTEND sect_B.5.html#table_B.5-1 to add codes to it.
Property sopClass As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "sopClass", XMLPROJECTION = "ELEMENT") [ Required ];

/// unsignedInt
/// <p>
/// The number of this instance in the series.
Property number As %Integer(XMLNAME = "number", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Description of instance.
Property title As %String(MAXLEN = 1000000, XMLNAME = "title", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImagingStudy.series.instance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImagingStudy.series.instance";

Storage Default
{
<Data name="instanceDefaultData">
<Subscript>"instance"</Subscript>
<Value name="1">
<Value>uid</Value>
</Value>
<Value name="2">
<Value>sopClass</Value>
</Value>
<Value name="3">
<Value>number</Value>
</Value>
<Value name="4">
<Value>title</Value>
</Value>
</Data>
<DefaultData>instanceDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
