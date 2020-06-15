/// Contains a collection of resources.
Class HS.FHIR.vR4.Model.Resource.Bundle Extends HS.FHIR.vR4.Model.Base.Resource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Persistent identifier for the bundle.
Property identifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// document | message | transaction | transaction-response | batch | batch-response | history | searchset | collection
/// <p>
/// bundle-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend bundle-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// instant
/// <p>
/// When the bundle was assembled.
Property timestamp As %String(MAXLEN = 1000000, XMLNAME = "timestamp", XMLPROJECTION = "ATTRIBUTE");

/// unsignedInt
/// <p>
/// If search, 
/// the total number of matches.
Property total As %Integer(XMLNAME = "total", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Links related to this Bundle.
Property link As List Of HS.FHIR.vR4.Model.Element.Bundle.link(XMLNAME = "link", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Entry in the bundle - will have a resource or information.
Property entry As List Of HS.FHIR.vR4.Model.Element.Bundle.entry(XMLNAME = "entry", XMLPROJECTION = "ELEMENT");

/// Signature
/// <p>
/// Digital Signature.
Property signature As HS.FHIR.vR4.Model.Datatype.Signature(XMLNAME = "signature", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Bundle";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Bundle";

}
