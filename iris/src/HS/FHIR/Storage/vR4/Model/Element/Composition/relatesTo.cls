/// Relationships to other compositions/documents.
Class HS.FHIR.Storage.vR4.Model.Element.Composition.relatesTo Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// replaces | transforms | signs | appends
/// <p>
/// document-relationship-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend document-relationship-type|4.0.1 and you may NOT use codes from other ValueSets.
Property code As %String(MAXLEN = 1000000, XMLNAME = "code", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Identifier
/// <p>
/// Target of the relationship.
Property targetIdentifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "targetIdentifier", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Target of the relationship.
/// <p>
/// Composition.
Property targetReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "targetReference", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Composition.relatesTo";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Composition.relatesTo";

Storage Default
{
<Data name="relatesToDefaultData">
<Subscript>"relatesTo"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>targetIdentifier</Value>
</Value>
<Value name="3">
<Value>targetReference</Value>
</Value>
</Data>
<DefaultData>relatesToDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
