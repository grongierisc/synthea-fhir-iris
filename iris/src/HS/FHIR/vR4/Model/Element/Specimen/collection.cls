/// Collection details.
Class HS.FHIR.vR4.Model.Element.Specimen.collection Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Who collected the specimen.
/// <p>
/// Practitioner | PractitionerRole
Property collector As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "collector", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// Collection time.
Property collectedDateTime As %String(MAXLEN = 1000000, XMLNAME = "collectedDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Collection time.
Property collectedPeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "collectedPeriod", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// How long it took to collect specimen.
Property duration As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "duration", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// The quantity of specimen collected.
Property quantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "quantity", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Technique used to perform collection.
/// <p>
/// any FHIR4 code may be used; 
/// specimen-collection-method shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property method As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "method", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Anatomical collection site.
/// <p>
/// any FHIR4 code may be used; 
/// body-site shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property bodySite As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "bodySite", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Whether or how long patient abstained from food and/or drink.
/// <p>
/// v2-0916 is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in v2-0916, 
/// you may formally EXTEND v2-0916 to add codes to it.
Property fastingStatusCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "fastingStatusCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// Whether or how long patient abstained from food and/or drink.
Property fastingStatusDuration As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "fastingStatusDuration", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Specimen.collection";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Specimen.collection";

}
