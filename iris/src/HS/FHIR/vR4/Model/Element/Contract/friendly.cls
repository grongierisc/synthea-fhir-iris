/// Contract Friendly Language.
Class HS.FHIR.vR4.Model.Element.Contract.friendly Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Attachment
/// <p>
/// Easily comprehended representation of this Contract.
Property contentAttachment As HS.FHIR.vR4.Model.Datatype.Attachment(XMLNAME = "contentAttachment", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Easily comprehended representation of this Contract.
/// <p>
/// Composition | DocumentReference | QuestionnaireResponse
Property contentReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "contentReference", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.friendly";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.friendly";

}
