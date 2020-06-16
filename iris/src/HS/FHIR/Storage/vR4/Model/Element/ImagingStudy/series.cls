/// Each study has one or more series of instances.
Class HS.FHIR.Storage.vR4.Model.Element.ImagingStudy.series Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// id
/// <p>
/// DICOM Series Instance UID for the series.
Property uid As %String(MAXLEN = 1000000, XMLNAME = "uid", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// unsignedInt
/// <p>
/// Numeric identifier of this series.
Property number As %Integer(XMLNAME = "number", XMLPROJECTION = "ATTRIBUTE");

/// Coding
/// <p>
/// The modality of the instances in the series.
/// <p>
/// sect_CID_29.html is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in sect_CID_29.html, 
/// you may formally EXTEND sect_CID_29.html to add codes to it.
Property modality As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "modality", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// A short human readable summary of the series.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// unsignedInt
/// <p>
/// Number of Series Related Instances.
Property numberOfInstances As %Integer(XMLNAME = "numberOfInstances", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Series access endpoint.
/// <p>
/// Endpoint
Property endpoint As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "endpoint", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Body part examined.
/// <p>
/// any FHIR4 code may be used; 
/// body-site shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property bodySite As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Body part laterality.
/// <p>
/// any FHIR4 code may be used; 
/// bodysite-laterality shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property laterality As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "laterality", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Specimen imaged.
/// <p>
/// Specimen
Property specimen As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "specimen", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the series started.
Property started As %String(MAXLEN = 1000000, XMLNAME = "started", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Who performed the series.
Property performer As array Of HS.FHIR.Storage.vR4.Model.Element.ImagingStudy.series.performer(XMLNAME = "performer", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A single SOP instance from the series.
Property instance As array Of HS.FHIR.Storage.vR4.Model.Element.ImagingStudy.series.instance(XMLNAME = "instance", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImagingStudy.series";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImagingStudy.series";

Storage Default
{
<Data name="endpoint">
<Attribute>endpoint</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ImagingStudy.series.endpoint"</Subscript>
</Data>
<Data name="instance">
<Attribute>instance</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ImagingStudy.series.instance"</Subscript>
</Data>
<Data name="performer">
<Attribute>performer</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ImagingStudy.series.performer"</Subscript>
</Data>
<Data name="seriesDefaultData">
<Subscript>"series"</Subscript>
<Value name="1">
<Value>uid</Value>
</Value>
<Value name="2">
<Value>number</Value>
</Value>
<Value name="3">
<Value>modality</Value>
</Value>
<Value name="4">
<Value>description</Value>
</Value>
<Value name="5">
<Value>numberOfInstances</Value>
</Value>
<Value name="6">
<Value>bodySite</Value>
</Value>
<Value name="7">
<Value>laterality</Value>
</Value>
<Value name="8">
<Value>started</Value>
</Value>
</Data>
<Data name="specimen">
<Attribute>specimen</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ImagingStudy.series.specimen"</Subscript>
</Data>
<DefaultData>seriesDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
