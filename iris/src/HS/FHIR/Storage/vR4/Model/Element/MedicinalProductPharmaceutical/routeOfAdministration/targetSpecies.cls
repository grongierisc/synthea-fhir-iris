/// A species for which this route applies.
Class HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPharmaceutical.routeOfAdministration.targetSpecies Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Coded expression for the species.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// A species specific time during which consumption of animal product is not appropriate.
Property withdrawalPeriod As array Of HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPharmaceutical.routeOfAdministration.targetSpecies.withdrawalPeriod(XMLNAME = "withdrawalPeriod", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductPharmaceutical.routeOfAdministration.targetSpecies";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductPharmaceutical.routeOfAdministration.targetSpecies";

Storage Default
{
<Data name="targetSpeciesDefaultData">
<Subscript>"targetSpecies"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
</Data>
<Data name="withdrawalPeriod">
<Attribute>withdrawalPeriod</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPharmaceutical.routeOfAdministration.targetSpecies.withdrawalPeriod"</Subscript>
</Data>
<DefaultData>targetSpeciesDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
