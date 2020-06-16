/// Specimen in container intended for testing by lab.
Class HS.FHIR.Storage.vR4.Model.Element.SpecimenDefinition.typeTested Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// boolean
/// <p>
/// Primary or secondary specimen.
Property isDerived As %Boolean(XMLNAME = "isDerived", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Type of intended specimen.
/// <p>
/// any FHIR4 code may be used; 
/// v2-0487 shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// preferred | alternate
/// <p>
/// specimen-contained-preference|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend specimen-contained-preference|4.0.1 and you may NOT use codes from other ValueSets.
Property preference As %String(MAXLEN = 1000000, XMLNAME = "preference", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// BackboneElement
/// <p>
/// The specimen's container.
Property container As HS.FHIR.Storage.vR4.Model.Element.SpecimenDefinition.typeTested.container(XMLNAME = "container", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Specimen requirements.
Property requirement As %String(MAXLEN = 1000000, XMLNAME = "requirement", XMLPROJECTION = "ATTRIBUTE");

/// Duration
/// <p>
/// Specimen retention time.
Property retentionTime As HS.FHIR.Storage.vR4.Model.Datatype.Duration(XMLNAME = "retentionTime", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Rejection criterion.
/// <p>
/// any FHIR4 code may be used; 
/// rejection-criteria shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property rejectionCriterion As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "rejectionCriterion", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Specimen handling before testing.
Property handling As array Of HS.FHIR.Storage.vR4.Model.Element.SpecimenDefinition.typeTested.handling(XMLNAME = "handling", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SpecimenDefinition.typeTested";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SpecimenDefinition.typeTested";

Storage Default
{
<Data name="handling">
<Attribute>handling</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SpecimenDefinition.typeTested.handling"</Subscript>
</Data>
<Data name="rejectionCriterion">
<Attribute>rejectionCriterion</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SpecimenDefinition.typeTested.rejectionCriterion"</Subscript>
</Data>
<Data name="typeTestedDefaultData">
<Subscript>"typeTested"</Subscript>
<Value name="1">
<Value>isDerived</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
<Value name="3">
<Value>preference</Value>
</Value>
<Value name="4">
<Value>container</Value>
</Value>
<Value name="5">
<Value>requirement</Value>
</Value>
<Value name="6">
<Value>retentionTime</Value>
</Value>
</Data>
<DefaultData>typeTestedDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
