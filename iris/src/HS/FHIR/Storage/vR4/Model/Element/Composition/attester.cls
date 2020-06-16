/// Attests to accuracy of composition.
Class HS.FHIR.Storage.vR4.Model.Element.Composition.attester Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// personal | professional | legal | official
/// <p>
/// composition-attestation-mode|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend composition-attestation-mode|4.0.1 and you may NOT use codes from other ValueSets.
Property mode As %String(MAXLEN = 1000000, XMLNAME = "mode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// dateTime
/// <p>
/// When the composition was attested.
Property time As %String(MAXLEN = 1000000, XMLNAME = "time", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Who attested the composition.
/// <p>
/// Patient | RelatedPerson | Practitioner | PractitionerRole | Organization
Property party As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "party", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Composition.attester";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Composition.attester";

Storage Default
{
<Data name="attesterDefaultData">
<Subscript>"attester"</Subscript>
<Value name="1">
<Value>mode</Value>
</Value>
<Value name="2">
<Value>time</Value>
</Value>
<Value name="3">
<Value>party</Value>
</Value>
</Data>
<DefaultData>attesterDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
