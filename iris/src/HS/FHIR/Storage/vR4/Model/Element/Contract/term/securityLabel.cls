/// Protection for the Term.
Class HS.FHIR.Storage.vR4.Model.Element.Contract.term.securityLabel Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// unsignedInt
/// <p>
/// Link to Security Labels.
Property number As array Of %Integer(XMLNAME = "number", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Confidentiality Protection.
/// <p>
/// any FHIR4 code may be used; 
/// contract-security-classification shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property classification As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "classification", XMLPROJECTION = "ELEMENT") [ Required ];

/// Coding
/// <p>
/// Applicable Policy.
/// <p>
/// any FHIR4 code may be used; 
/// contract-security-category shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property category As array Of HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Handling Instructions.
/// <p>
/// any FHIR4 code may be used; 
/// contract-security-control shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property control As array Of HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "control", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term.securityLabel";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term.securityLabel";

Storage Default
{
<Data name="category">
<Attribute>category</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.securityLabel.category"</Subscript>
</Data>
<Data name="control">
<Attribute>control</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.securityLabel.control"</Subscript>
</Data>
<Data name="number">
<Attribute>number</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.securityLabel.number"</Subscript>
</Data>
<Data name="securityLabelDefaultData">
<Subscript>"securityLabel"</Subscript>
<Value name="1">
<Value>classification</Value>
</Value>
</Data>
<DefaultData>securityLabelDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
