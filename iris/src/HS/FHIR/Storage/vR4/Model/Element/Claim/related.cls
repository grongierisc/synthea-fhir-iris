/// Prior or corollary claims.
Class HS.FHIR.Storage.vR4.Model.Element.Claim.related Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Reference to the related claim.
/// <p>
/// Claim
Property claim As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "claim", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// How the reference claim is related.
/// <p>
/// any FHIR4 code may be used; 
/// related-claim-relationship shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property relationship As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "relationship", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// File or case reference.
Property reference As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "reference", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Claim.related";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Claim.related";

Storage Default
{
<Data name="relatedDefaultData">
<Subscript>"related"</Subscript>
<Value name="1">
<Value>claim</Value>
</Value>
<Value name="2">
<Value>relationship</Value>
</Value>
<Value name="3">
<Value>reference</Value>
</Value>
</Data>
<DefaultData>relatedDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
