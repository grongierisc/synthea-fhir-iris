/// Profiles that apply globally.
Class HS.FHIR.vR4.Model.Element.ImplementationGuide.global Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// Type this profile applies to.
/// <p>
/// resource-types|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend resource-types|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// canonical
/// <p>
/// Profile that all resources must conform to.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property profile As %String(MAXLEN = 1000000, XMLNAME = "profile", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImplementationGuide.global";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImplementationGuide.global";

}
