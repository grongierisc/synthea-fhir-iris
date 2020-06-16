/// Document referenced.
Class HS.FHIR.Storage.vR4.Model.Element.DocumentReference.content Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Attachment
/// <p>
/// Where to access the document.
Property attachment As HS.FHIR.Storage.vR4.Model.Datatype.Attachment(XMLNAME = "attachment", XMLPROJECTION = "ELEMENT") [ Required ];

/// Coding
/// <p>
/// Format/content rules for the document.
/// <p>
/// formatcodes is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in formatcodes, 
/// you may use codes from any ValueSet.
Property format As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "format", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DocumentReference.content";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DocumentReference.content";

Storage Default
{
<Data name="contentDefaultData">
<Subscript>"content"</Subscript>
<Value name="1">
<Value>attachment</Value>
</Value>
<Value name="2">
<Value>format</Value>
</Value>
</Data>
<DefaultData>contentDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
