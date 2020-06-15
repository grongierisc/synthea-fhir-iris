/// Additional coverage classifications.
Class HS.FHIR.vR4.Model.Element.Coverage.class Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of class such as 'group' or 'plan'
/// <p>
/// coverage-class is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in coverage-class, 
/// you may formally EXTEND coverage-class to add codes to it.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Value associated with the type.
Property value As %String(MAXLEN = 1000000, XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Human readable description of the type and value.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Coverage.class";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Coverage.class";

}
