/// Structural information.
Class HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.structure Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Stereochemistry type.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property stereochemistry As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "stereochemistry", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Optical activity type.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property opticalActivity As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "opticalActivity", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Molecular formula.
Property molecularFormula As %String(MAXLEN = 1000000, XMLNAME = "molecularFormula", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Specified per moiety according to the Hill system, 
/// i.e. 
/// first C, 
/// then H, 
/// then alphabetical, 
/// each moiety separated by a dot.
Property molecularFormulaByMoiety As %String(MAXLEN = 1000000, XMLNAME = "molecularFormulaByMoiety", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Applicable for single substances that contain a radionuclide or a non-natural isotopic ratio.
Property isotope As array Of HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.structure.isotope(XMLNAME = "isotope", XMLPROJECTION = "ELEMENT");

/// SubstanceSpecification:structure.isotope[n].molecularWeight
/// <p>
/// The molecular weight or weight range (for proteins, 
/// polymers or nucleic acids)
Property molecularWeight As HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.structure.isotope.molecularWeight(XMLNAME = "molecularWeight", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Supporting literature.
/// <p>
/// DocumentReference
Property source As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Molecular structural representation.
Property representation As array Of HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.structure.representation(XMLNAME = "representation", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSpecification.structure";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSpecification.structure";

Storage Default
{
<Data name="isotope">
<Attribute>isotope</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.structure.isotope"</Subscript>
</Data>
<Data name="representation">
<Attribute>representation</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.structure.representation"</Subscript>
</Data>
<Data name="source">
<Attribute>source</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.structure.source"</Subscript>
</Data>
<Data name="structureDefaultData">
<Subscript>"structure"</Subscript>
<Value name="1">
<Value>stereochemistry</Value>
</Value>
<Value name="2">
<Value>opticalActivity</Value>
</Value>
<Value name="3">
<Value>molecularFormula</Value>
</Value>
<Value name="4">
<Value>molecularFormulaByMoiety</Value>
</Value>
<Value name="5">
<Value>molecularWeight</Value>
</Value>
</Data>
<DefaultData>structureDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
