/// Who performed charged service.
Class HS.FHIR.vR4.Model.Element.ChargeItem.performer Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// What type of performance was done.
/// <p>
/// any FHIR4 code may be used; 
/// performer-role shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property function As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "function", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Individual who was performing.
/// <p>
/// Practitioner | PractitionerRole | Organization | CareTeam | Patient | Device | RelatedPerson
Property actor As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "actor", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ChargeItem.performer";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ChargeItem.performer";

}
