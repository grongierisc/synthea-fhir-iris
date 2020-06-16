/// A homogeneous material with a definite composition.
Class HS.FHIR.Storage.vR4.Model.Resource.Substance Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Unique identifier.
Property identifier As array Of HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// active | inactive | entered-in-error
/// <p>
/// substance-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend substance-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// What class/type of substance this is.
/// <p>
/// substance-category is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in substance-category, 
/// you may formally EXTEND substance-category to add codes to it.
Property category As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "category", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// What substance this is.
/// <p>
/// any FHIR4 code may be used; 
/// substance-code shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// string
/// <p>
/// Textual description of the substance, 
/// comments.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// If this describes a specific package/container of the substance.
Property instance As array Of HS.FHIR.Storage.vR4.Model.Element.Substance.instance(XMLNAME = "instance", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Composition information about the substance.
Property ingredient As array Of HS.FHIR.Storage.vR4.Model.Element.Substance.ingredient(XMLNAME = "ingredient", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Substance";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Substance";

Storage Default
{
<Data name="SubstanceDefaultData">
<Subscript>"Substance"</Subscript>
<Value name="1">
<Value>status</Value>
</Value>
<Value name="2">
<Value>code</Value>
</Value>
<Value name="3">
<Value>description</Value>
</Value>
</Data>
<Data name="category">
<Attribute>category</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Substance.category"</Subscript>
</Data>
<Data name="identifier">
<Attribute>identifier</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Substance.identifier"</Subscript>
</Data>
<Data name="ingredient">
<Attribute>ingredient</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Substance.ingredient"</Subscript>
</Data>
<Data name="instance">
<Attribute>instance</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Substance.instance"</Subscript>
</Data>
<DefaultData>SubstanceDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
