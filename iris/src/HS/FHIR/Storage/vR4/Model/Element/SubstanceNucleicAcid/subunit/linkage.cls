/// The linkages between sugar residues will also be captured.
Class HS.FHIR.Storage.vR4.Model.Element.SubstanceNucleicAcid.subunit.linkage Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// The entity that links the sugar residues together should also be captured for nearly all naturally occurring nucleic acid the linkage is a phosphate group. 
/// For many synthetic oligonucleotides phosphorothioate linkages are often seen. 
/// Linkage connectivity is assumed to be 3?-5?. 
/// If the linkage is either 3?-3? or 5?-5? this should be specified.
Property connectivity As %String(MAXLEN = 1000000, XMLNAME = "connectivity", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// Each linkage will be registered as a fragment and have an ID.
Property identifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Each linkage will be registered as a fragment and have at least one name. 
/// A single name shall be assigned to each linkage.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Residues shall be captured as described in 5.3.6.8.3.
Property residueSite As %String(MAXLEN = 1000000, XMLNAME = "residueSite", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceNucleicAcid.subunit.linkage";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceNucleicAcid.subunit.linkage";

Storage Default
{
<Data name="linkageDefaultData">
<Subscript>"linkage"</Subscript>
<Value name="1">
<Value>connectivity</Value>
</Value>
<Value name="2">
<Value>identifier</Value>
</Value>
<Value name="3">
<Value>name</Value>
</Value>
<Value name="4">
<Value>residueSite</Value>
</Value>
</Data>
<DefaultData>linkageDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
