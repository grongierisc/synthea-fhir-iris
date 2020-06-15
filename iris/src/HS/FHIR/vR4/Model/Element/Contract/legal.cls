/// Contract Legal Language.
Class HS.FHIR.vR4.Model.Element.Contract.legal Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Attachment
/// <p>
/// Contract Legal Text.
Property contentAttachment As HS.FHIR.vR4.Model.Datatype.Attachment(XMLNAME = "contentAttachment", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Contract Legal Text.
/// <p>
/// Composition | DocumentReference | QuestionnaireResponse
Property contentReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "contentReference", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.legal";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.legal";

}
