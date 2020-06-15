/// Used when the value set is \"expanded\"
Class HS.FHIR.vR4.Model.Element.ValueSet.expansion Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Identifies the value set expansion (business identifier)
Property identifier As %String(MAXLEN = 1000000, XMLNAME = "identifier", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// Time ValueSet expansion happened.
Property timestamp As %String(MAXLEN = 1000000, XMLNAME = "timestamp", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// integer
/// <p>
/// Total number of codes in the expansion.
Property total As %Integer(XMLNAME = "total", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Offset at which this resource starts.
Property offset As %Integer(XMLNAME = "offset", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Parameter that controlled the expansion process.
Property parameter As List Of HS.FHIR.vR4.Model.Element.ValueSet.expansion.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Codes in the value set.
Property contains As List Of HS.FHIR.vR4.Model.Element.ValueSet.expansion.contains(XMLNAME = "contains", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ValueSet.expansion";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ValueSet.expansion";

}
