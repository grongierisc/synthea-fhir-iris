/// An abstract server representing a client or sender in a message exchange.
Class HS.FHIR.vR4.Model.Element.TestScript.origin Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// integer
/// <p>
/// The index of the abstract origin server starting at 1.
Property index As %Integer(XMLNAME = "index", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Coding
/// <p>
/// FHIR-Client | FHIR-SDC-FormFiller
/// <p>
/// testscript-profile-origin-types is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in testscript-profile-origin-types, 
/// you may formally EXTEND testscript-profile-origin-types to add codes to it.
Property profile As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "profile", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.origin";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.origin";

}
