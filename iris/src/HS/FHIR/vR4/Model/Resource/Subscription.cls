/// Server push subscription criteria.
Class HS.FHIR.vR4.Model.Resource.Subscription Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// code
/// <p>
/// requested | active | error | off
/// <p>
/// subscription-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend subscription-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// ContactPoint
/// <p>
/// Contact details for source (e.g. 
/// troubleshooting)
Property contact As List Of HS.FHIR.vR4.Model.Datatype.ContactPoint(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "contact", XMLPROJECTION = "ELEMENT");

/// instant
/// <p>
/// When to automatically delete the subscription.
Property end As %String(MAXLEN = 1000000, XMLNAME = "end", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Description of why this subscription was created.
Property reason As %String(MAXLEN = 1000000, XMLNAME = "reason", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Rule for server push.
Property criteria As %String(MAXLEN = 1000000, XMLNAME = "criteria", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Latest error note.
Property error As %String(MAXLEN = 1000000, XMLNAME = "error", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// The channel on which to report matches to the criteria.
Property channel As HS.FHIR.vR4.Model.Element.Subscription.channel(XMLNAME = "channel", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Subscription";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Subscription";

}
