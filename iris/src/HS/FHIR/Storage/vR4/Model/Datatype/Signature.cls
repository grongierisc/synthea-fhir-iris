/// A Signature - XML DigSig, 
/// JWS, 
/// Graphical image of signature, 
/// etc.
Class HS.FHIR.Storage.vR4.Model.Datatype.Signature Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// Coding
/// <p>
/// Indication of the reason the entity signed the object(s)
/// <p>
/// signature-type is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in signature-type, 
/// you may use codes from any ValueSet.
Property type As array Of HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// instant
/// <p>
/// When the signature was created.
Property when As %String(MAXLEN = 1000000, XMLNAME = "when", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Who signed.
/// <p>
/// Practitioner | PractitionerRole | RelatedPerson | Patient | Device | Organization
Property who As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "who", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// The party represented.
/// <p>
/// Practitioner | PractitionerRole | RelatedPerson | Patient | Device | Organization
Property onBehalfOf As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "onBehalfOf", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// The technical format of the signed resources.
/// <p>
/// mimetypes|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend mimetypes|4.0.1 and you may NOT use codes from other ValueSets.
Property targetFormat As %String(MAXLEN = 1000000, XMLNAME = "targetFormat", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// The technical format of the signature.
/// <p>
/// mimetypes|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend mimetypes|4.0.1 and you may NOT use codes from other ValueSets.
Property sigFormat As %String(MAXLEN = 1000000, XMLNAME = "sigFormat", XMLPROJECTION = "ATTRIBUTE");

/// base64Binary
/// <p>
/// The actual signature content (XML DigSig. 
/// JWS, 
/// picture, 
/// etc.)
Property data As %Binary(XMLNAME = "data", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Signature";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Signature";

Storage Default
{
<Data name="SignatureDefaultData">
<Subscript>"Signature"</Subscript>
<Value name="1">
<Value>when</Value>
</Value>
<Value name="2">
<Value>who</Value>
</Value>
<Value name="3">
<Value>onBehalfOf</Value>
</Value>
<Value name="4">
<Value>targetFormat</Value>
</Value>
<Value name="5">
<Value>sigFormat</Value>
</Value>
<Value name="6">
<Value>data</Value>
</Value>
</Data>
<Data name="type">
<Attribute>type</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Datatype.Signature.type"</Subscript>
</Data>
<DefaultData>SignatureDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
