/// Required capability that is assumed to function correctly on the FHIR server being tested.
Class HS.FHIR.vR4.Model.Element.TestScript.metadata Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// BackboneElement
/// <p>
/// Links to the FHIR specification.
Property link As List Of HS.FHIR.vR4.Model.Element.TestScript.metadata.link(XMLNAME = "link", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Capabilities  that are assumed to function correctly on the FHIR server being tested.
Property capability As List Of HS.FHIR.vR4.Model.Element.TestScript.metadata.capability(XMLNAME = "capability", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.metadata";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.metadata";

}
