/// An address expressed using postal conventions (as opposed to GPS or other location definition formats)
Class HS.FHIR.vR4.Model.Datatype.Address Extends (%Persistent,HS.FHIR.vR4.Model.Base.Element) [ Not ProcedureBlock ]
{

/// code
/// <p>
/// home | work | temp | old | billing - purpose of this address
/// <p>
/// address-use|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend address-use|4.0.1 and you may NOT use codes from other ValueSets.
Property use As %String(MAXLEN = 1000000, XMLNAME = "use", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// postal | physical | both
/// <p>
/// address-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend address-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Text representation of the address.
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Street name, 
/// number, 
/// direction & P.O. 
/// Box etc.
Property line As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "line", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Name of city, 
/// town etc.
Property city As %String(MAXLEN = 1000000, XMLNAME = "city", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// District name (aka county)
Property district As %String(MAXLEN = 1000000, XMLNAME = "district", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Sub-unit of country (abbreviations ok)
Property state As %String(MAXLEN = 1000000, XMLNAME = "state", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Postal code for area.
Property postalCode As %String(MAXLEN = 1000000, XMLNAME = "postalCode", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Country (e.g. 
/// can be ISO 3166 2 or 3 letter code)
Property country As %String(MAXLEN = 1000000, XMLNAME = "country", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Time period when address was/is in use.
Property period As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Address";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Address";

}
