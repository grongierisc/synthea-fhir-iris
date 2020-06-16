/// Circumstance of the asset.
Class HS.FHIR.Storage.vR4.Model.Element.Contract.term.asset.context Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Creator,custodian or owner.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property reference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "reference", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Codeable asset context.
/// <p>
/// any FHIR4 code may be used; 
/// contract-assetcontext shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Context description.
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term.asset.context";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term.asset.context";

Storage Default
{
<Data name="code">
<Attribute>code</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.asset.context.code"</Subscript>
</Data>
<Data name="contextDefaultData">
<Subscript>"context"</Subscript>
<Value name="1">
<Value>reference</Value>
</Value>
<Value name="2">
<Value>text</Value>
</Value>
</Data>
<DefaultData>contextDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
