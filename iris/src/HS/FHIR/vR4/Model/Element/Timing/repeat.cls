/// When the event is to occur.
Class HS.FHIR.vR4.Model.Element.Timing.repeat Extends (%Persistent,HS.FHIR.vR4.Model.Base.Element) [ Not ProcedureBlock ]
{

/// Duration
/// <p>
/// Length/Range of lengths, 
/// or (Start and/or end) limits.
Property boundsDuration As HS.FHIR.vR4.Model.Datatype.Duration(XMLNAME = "boundsDuration", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Length/Range of lengths, 
/// or (Start and/or end) limits.
Property boundsPeriod As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "boundsPeriod", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// Length/Range of lengths, 
/// or (Start and/or end) limits.
Property boundsRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "boundsRange", XMLPROJECTION = "ELEMENT");

/// positiveInt
/// <p>
/// Number of times to repeat.
Property count As %Integer(XMLNAME = "count", XMLPROJECTION = "ATTRIBUTE");

/// positiveInt
/// <p>
/// Maximum number of times to repeat.
Property countMax As %Integer(XMLNAME = "countMax", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// How long when it happens.
Property duration As %Decimal(XMLNAME = "duration", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// How long when it happens (Max)
Property durationMax As %Decimal(XMLNAME = "durationMax", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// s | min | h | d | wk | mo | a - unit of time (UCUM)
/// <p>
/// units-of-time|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend units-of-time|4.0.1 and you may NOT use codes from other ValueSets.
Property durationUnit As %String(MAXLEN = 1000000, XMLNAME = "durationUnit", XMLPROJECTION = "ATTRIBUTE");

/// positiveInt
/// <p>
/// Event occurs frequency times per period.
Property frequency As %Integer(XMLNAME = "frequency", XMLPROJECTION = "ATTRIBUTE");

/// positiveInt
/// <p>
/// Event occurs up to frequencyMax times per period.
Property frequencyMax As %Integer(XMLNAME = "frequencyMax", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Event occurs frequency times per period.
Property period As %Decimal(XMLNAME = "period", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Upper limit of period (3-4 hours)
Property periodMax As %Decimal(XMLNAME = "periodMax", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// s | min | h | d | wk | mo | a - unit of time (UCUM)
/// <p>
/// units-of-time|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend units-of-time|4.0.1 and you may NOT use codes from other ValueSets.
Property periodUnit As %String(MAXLEN = 1000000, XMLNAME = "periodUnit", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// mon | tue | wed | thu | fri | sat | sun
/// <p>
/// days-of-week|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend days-of-week|4.0.1 and you may NOT use codes from other ValueSets.
Property dayOfWeek As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "dayOfWeek", XMLPROJECTION = "ELEMENT");

/// time
/// <p>
/// Time of day for action.
Property timeOfDay As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "timeOfDay", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// Code for time period of occurrence.
/// <p>
/// event-timing|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend event-timing|4.0.1 and you may NOT use codes from other ValueSets.
Property when As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "when", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// Minutes from event (before or after)
Property offset As %Integer(XMLNAME = "offset", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "repeat";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "repeat";

}
