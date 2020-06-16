/// Contract Friendly Language.
Class HS.FHIR.Storage.vR4.Model.Element.Contract.friendly Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Attachment
/// <p>
/// Easily comprehended representation of this Contract.
Property contentAttachment As HS.FHIR.Storage.vR4.Model.Datatype.Attachment(XMLNAME = "contentAttachment", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Easily comprehended representation of this Contract.
/// <p>
/// Composition | DocumentReference | QuestionnaireResponse
Property contentReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "contentReference", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.friendly";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.friendly";

Storage Default
{
<Data name="friendlyDefaultData">
<Subscript>"friendly"</Subscript>
<Value name="1">
<Value>contentAttachment</Value>
</Value>
<Value name="2">
<Value>contentReference</Value>
</Value>
</Data>
<DefaultData>friendlyDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
