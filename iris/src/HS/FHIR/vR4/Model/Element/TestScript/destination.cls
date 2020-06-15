/// An abstract server representing a destination or receiver in a message exchange.
Class HS.FHIR.vR4.Model.Element.TestScript.destination Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// integer
/// <p>
/// The index of the abstract destination server starting at 1.
Property index As %Integer(XMLNAME = "index", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Coding
/// <p>
/// FHIR-Server | FHIR-SDC-FormManager | FHIR-SDC-FormReceiver | FHIR-SDC-FormProcessor
/// <p>
/// testscript-profile-destination-types is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in testscript-profile-destination-types, 
/// you may formally EXTEND testscript-profile-destination-types to add codes to it.
Property profile As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "profile", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.destination";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.destination";

}
