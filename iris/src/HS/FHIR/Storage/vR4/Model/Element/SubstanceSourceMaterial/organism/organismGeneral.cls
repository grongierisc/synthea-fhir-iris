/// 4.9.13.7.1 Kingdom (Conditional)
Class HS.FHIR.Storage.vR4.Model.Element.SubstanceSourceMaterial.organism.organismGeneral Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The kingdom of an organism shall be specified.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property kingdom As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "kingdom", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The phylum of an organism shall be specified.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property phylum As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "phylum", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The class of an organism shall be specified.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property class As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "class", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The order of an organism shall be specified,
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property order As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "order", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSourceMaterial.organism.organismGeneral";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSourceMaterial.organism.organismGeneral";

Storage Default
{
<Data name="organismGeneralDefaultData">
<Subscript>"organismGeneral"</Subscript>
<Value name="1">
<Value>kingdom</Value>
</Value>
<Value name="2">
<Value>phylum</Value>
</Value>
<Value name="3">
<Value>class</Value>
</Value>
<Value name="4">
<Value>order</Value>
</Value>
</Data>
<DefaultData>organismGeneralDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
