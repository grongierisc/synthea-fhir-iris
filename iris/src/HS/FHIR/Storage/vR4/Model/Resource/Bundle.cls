/// Contains a collection of resources.
Class HS.FHIR.Storage.vR4.Model.Resource.Bundle Extends HS.FHIR.Storage.vR4.Model.Base.Resource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Persistent identifier for the bundle.
Property identifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

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
Property link As array Of HS.FHIR.Storage.vR4.Model.Element.Bundle.link(XMLNAME = "link", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Entry in the bundle - will have a resource or information.
Property entry As array Of HS.FHIR.Storage.vR4.Model.Element.Bundle.entry(XMLNAME = "entry", XMLPROJECTION = "ELEMENT");

/// Signature
/// <p>
/// Digital Signature.
Property signature As HS.FHIR.Storage.vR4.Model.Datatype.Signature(XMLNAME = "signature", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Bundle";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Bundle";

Storage Default
{
<Data name="BundleDefaultData">
<Subscript>"Bundle"</Subscript>
<Value name="1">
<Value>identifier</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
<Value name="3">
<Value>timestamp</Value>
</Value>
<Value name="4">
<Value>total</Value>
</Value>
<Value name="5">
<Value>signature</Value>
</Value>
</Data>
<Data name="entry">
<Attribute>entry</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Bundle.entry"</Subscript>
</Data>
<Data name="link">
<Attribute>link</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Bundle.link"</Subscript>
</Data>
<DefaultData>BundleDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
