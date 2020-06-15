/// Who performed the series.
Class HS.FHIR.vR4.Model.Element.ImagingStudy.series.performer Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of performance.
/// <p>
/// series-performer-function is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in series-performer-function, 
/// you may formally EXTEND series-performer-function to add codes to it.
Property function As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "function", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who performed the series.
/// <p>
/// Practitioner | PractitionerRole | Organization | CareTeam | Patient | Device | RelatedPerson
Property actor As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "actor", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImagingStudy.series.performer";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImagingStudy.series.performer";

}
