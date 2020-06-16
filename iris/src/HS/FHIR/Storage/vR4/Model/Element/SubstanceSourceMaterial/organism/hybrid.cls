/// 4.9.13.8.1 Hybrid species maternal organism ID (Optional)
Class HS.FHIR.Storage.vR4.Model.Element.SubstanceSourceMaterial.organism.hybrid Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// The identifier of the maternal species constituting the hybrid organism shall be specified based on a controlled vocabulary. 
/// For plants, 
/// the parents aren?t always known, 
/// and it is unlikely that it will be known which is maternal and which is paternal.
Property maternalOrganismId As %String(MAXLEN = 1000000, XMLNAME = "maternalOrganismId", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// The name of the maternal species constituting the hybrid organism shall be specified. 
/// For plants, 
/// the parents aren?t always known, 
/// and it is unlikely that it will be known which is maternal and which is paternal.
Property maternalOrganismName As %String(MAXLEN = 1000000, XMLNAME = "maternalOrganismName", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// The identifier of the paternal species constituting the hybrid organism shall be specified based on a controlled vocabulary.
Property paternalOrganismId As %String(MAXLEN = 1000000, XMLNAME = "paternalOrganismId", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// The name of the paternal species constituting the hybrid organism shall be specified.
Property paternalOrganismName As %String(MAXLEN = 1000000, XMLNAME = "paternalOrganismName", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// The hybrid type of an organism shall be specified.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property hybridType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "hybridType", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSourceMaterial.organism.hybrid";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSourceMaterial.organism.hybrid";

Storage Default
{
<Data name="hybridDefaultData">
<Subscript>"hybrid"</Subscript>
<Value name="1">
<Value>maternalOrganismId</Value>
</Value>
<Value name="2">
<Value>maternalOrganismName</Value>
</Value>
<Value name="3">
<Value>paternalOrganismId</Value>
</Value>
<Value name="4">
<Value>paternalOrganismName</Value>
</Value>
<Value name="5">
<Value>hybridType</Value>
</Value>
</Data>
<DefaultData>hybridDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
