/// Computable Contract Language.
Class HS.FHIR.vR4.Model.Element.Contract.rule Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Attachment
/// <p>
/// Computable Contract Rules.
Property contentAttachment As HS.FHIR.vR4.Model.Datatype.Attachment(XMLNAME = "contentAttachment", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Computable Contract Rules.
/// <p>
/// DocumentReference.
Property contentReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "contentReference", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.rule";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.rule";

}
