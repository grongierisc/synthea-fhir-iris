/// Contract Legal Language.
Class HS.FHIR.Storage.vR4.Model.Element.Contract.legal Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Attachment
/// <p>
/// Contract Legal Text.
Property contentAttachment As HS.FHIR.Storage.vR4.Model.Datatype.Attachment(XMLNAME = "contentAttachment", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Contract Legal Text.
/// <p>
/// Composition | DocumentReference | QuestionnaireResponse
Property contentReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "contentReference", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.legal";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.legal";

Storage Default
{
<Data name="legalDefaultData">
<Subscript>"legal"</Subscript>
<Value name="1">
<Value>contentAttachment</Value>
</Value>
<Value name="2">
<Value>contentReference</Value>
</Value>
</Data>
<DefaultData>legalDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
