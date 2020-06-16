/// Todo.
Class HS.FHIR.Storage.vR4.Model.Element.SubstancePolymer.monomerSet Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Todo.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property ratioType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "ratioType", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Todo.
Property startingMaterial As array Of HS.FHIR.Storage.vR4.Model.Element.SubstancePolymer.monomerSet.startingMaterial(XMLNAME = "startingMaterial", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstancePolymer.monomerSet";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstancePolymer.monomerSet";

Storage Default
{
<Data name="monomerSetDefaultData">
<Subscript>"monomerSet"</Subscript>
<Value name="1">
<Value>ratioType</Value>
</Value>
</Data>
<Data name="startingMaterial">
<Attribute>startingMaterial</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstancePolymer.monomerSet.startingMaterial"</Subscript>
</Data>
<DefaultData>monomerSetDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
