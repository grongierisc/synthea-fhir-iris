/// Defines how IG is built by tools.
Class HS.FHIR.vR4.Model.Element.ImplementationGuide.definition.parameter Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// apply | path-resource | path-pages | path-tx-cache | expansion-parameter | rule-broken-links | generate-xml | generate-json | generate-turtle | html-template
/// <p>
/// guide-parameter-code|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend guide-parameter-code|4.0.1 and you may NOT use codes from other ValueSets.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Value for named type.
Property value As %String(MAXLEN = 1000000, XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImplementationGuide.definition.parameter";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImplementationGuide.definition.parameter";

}
