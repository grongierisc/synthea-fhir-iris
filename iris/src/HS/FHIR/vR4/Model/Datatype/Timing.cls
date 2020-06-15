/// A timing schedule that specifies an event that may occur multiple times.
Class HS.FHIR.vR4.Model.Datatype.Timing Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// dateTime
/// <p>
/// When the event occurs.
Property event As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "event", XMLPROJECTION = "ELEMENT");

/// Element
/// <p>
/// When the event is to occur.
Property repeat As HS.FHIR.vR4.Model.Element.Timing.repeat(XMLNAME = "repeat", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// BID | TID | QID | AM | PM | QD | QOD | +
/// <p>
/// timing-abbreviation is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in timing-abbreviation, 
/// you may use codes from any ValueSet.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "HS.FHIR.vR4.Model.Datatype.Timing";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "HS.FHIR.vR4.Model.Datatype.Timing";

}
