/// Property value for the concept.
Class HS.FHIR.vR4.Model.Element.CodeSystem.concept.property Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// Reference to CodeSystem.property.code.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// Value of the property for this concept.
Property valueBoolean As %Boolean(XMLNAME = "valueBoolean", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// Value of the property for this concept.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCode As %String(MAXLEN = 1000000, XMLNAME = "valueCode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Coding
/// <p>
/// Value of the property for this concept.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property valueCoding As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "valueCoding", XMLPROJECTION = "ELEMENT") [ Required ];

/// dateTime
/// <p>
/// Value of the property for this concept.
Property valueDateTime As %String(MAXLEN = 1000000, XMLNAME = "valueDateTime", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// decimal
/// <p>
/// Value of the property for this concept.
Property valueDecimal As %Decimal(XMLNAME = "valueDecimal", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// integer
/// <p>
/// Value of the property for this concept.
Property valueInteger As %Integer(XMLNAME = "valueInteger", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Value of the property for this concept.
Property valueString As %String(MAXLEN = 1000000, XMLNAME = "valueString", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "CodeSystem.concept.property";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "CodeSystem.concept.property";

}
