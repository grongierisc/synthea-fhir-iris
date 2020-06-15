/// What days/times during a week is this location usually open.
Class HS.FHIR.vR4.Model.Element.Location.hoursOfOperation Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// mon | tue | wed | thu | fri | sat | sun
/// <p>
/// days-of-week|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend days-of-week|4.0.1 and you may NOT use codes from other ValueSets.
Property daysOfWeek As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "daysOfWeek", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// The Location is open all day.
Property allDay As %Boolean(XMLNAME = "allDay", XMLPROJECTION = "ATTRIBUTE");

/// time
/// <p>
/// Time that the Location opens.
Property openingTime As %String(MAXLEN = 1000000, XMLNAME = "openingTime", XMLPROJECTION = "ATTRIBUTE");

/// time
/// <p>
/// Time that the Location closes.
Property closingTime As %String(MAXLEN = 1000000, XMLNAME = "closingTime", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Location.hoursOfOperation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Location.hoursOfOperation";

}
