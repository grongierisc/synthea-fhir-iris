/// Required capability that is assumed to function correctly on the FHIR server being tested.
Class HS.FHIR.Storage.vR4.Model.Element.TestScript.metadata Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// BackboneElement
/// <p>
/// Links to the FHIR specification.
Property link As array Of HS.FHIR.Storage.vR4.Model.Element.TestScript.metadata.link(XMLNAME = "link", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Capabilities  that are assumed to function correctly on the FHIR server being tested.
Property capability As array Of HS.FHIR.Storage.vR4.Model.Element.TestScript.metadata.capability(XMLNAME = "capability", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestScript.metadata";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestScript.metadata";

Storage Default
{
<Data name="capability">
<Attribute>capability</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.TestScript.metadata.capability"</Subscript>
</Data>
<Data name="link">
<Attribute>link</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.TestScript.metadata.link"</Subscript>
</Data>
<Type>%Storage.Persistent</Type>
}

}
