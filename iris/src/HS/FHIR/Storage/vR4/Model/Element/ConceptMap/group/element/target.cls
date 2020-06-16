/// Concept in target system for element.
Class HS.FHIR.Storage.vR4.Model.Element.ConceptMap.group.element.target Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// Code that identifies the target element.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Display for the code.
Property display As %String(MAXLEN = 1000000, XMLNAME = "display", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// relatedto | equivalent | equal | wider | subsumes | narrower | specializes | inexact | unmatched | disjoint
/// <p>
/// concept-map-equivalence|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend concept-map-equivalence|4.0.1 and you may NOT use codes from other ValueSets.
Property equivalence As %String(MAXLEN = 1000000, XMLNAME = "equivalence", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Description of status/issues in mapping.
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Other elements required for this mapping (from context)
Property dependsOn As array Of HS.FHIR.Storage.vR4.Model.Element.ConceptMap.group.element.target.dependsOn(XMLNAME = "dependsOn", XMLPROJECTION = "ELEMENT");

/// ConceptMap:group[n].element[n].target[n].dependsOn
/// <p>
/// Other concepts that this mapping also produces.
Property product As array Of HS.FHIR.Storage.vR4.Model.Element.ConceptMap.group.element.target.dependsOn(XMLNAME = "product", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ConceptMap.group.element.target";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ConceptMap.group.element.target";

Storage Default
{
<Data name="dependsOn">
<Attribute>dependsOn</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ConceptMap.group.element.target.dependsOn"</Subscript>
</Data>
<Data name="product">
<Attribute>product</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.ConceptMap.group.element.target.product"</Subscript>
</Data>
<Data name="targetDefaultData">
<Subscript>"target"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>display</Value>
</Value>
<Value name="3">
<Value>equivalence</Value>
</Value>
<Value name="4">
<Value>comment</Value>
</Value>
</Data>
<DefaultData>targetDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
