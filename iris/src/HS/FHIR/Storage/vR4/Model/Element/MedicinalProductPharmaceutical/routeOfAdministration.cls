/// The path by which the pharmaceutical product is taken into or makes contact with the body.
Class HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPharmaceutical.routeOfAdministration Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Coded expression for the route.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// Quantity
/// <p>
/// The first dose (dose quantity) administered in humans can be specified, 
/// for a product under investigation, 
/// using a numerical value and its unit of measurement.
Property firstDose As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "firstDose", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// The maximum single dose that can be administered as per the protocol of a clinical trial can be specified using a numerical value and its unit of measurement.
Property maxSingleDose As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "maxSingleDose", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// The maximum dose per day (maximum dose quantity to be administered in any one 24-h period) that can be administered as per the protocol referenced in the clinical trial authorisation.
Property maxDosePerDay As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "maxDosePerDay", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// The maximum dose per treatment period that can be administered as per the protocol referenced in the clinical trial authorisation.
Property maxDosePerTreatmentPeriod As HS.FHIR.Storage.vR4.Model.Datatype.Ratio(XMLNAME = "maxDosePerTreatmentPeriod", XMLPROJECTION = "ELEMENT");

/// Duration
/// <p>
/// The maximum treatment period during which an Investigational Medicinal Product can be administered as per the protocol referenced in the clinical trial authorisation.
Property maxTreatmentPeriod As HS.FHIR.Storage.vR4.Model.Datatype.Duration(XMLNAME = "maxTreatmentPeriod", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A species for which this route applies.
Property targetSpecies As array Of HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPharmaceutical.routeOfAdministration.targetSpecies(XMLNAME = "targetSpecies", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductPharmaceutical.routeOfAdministration";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductPharmaceutical.routeOfAdministration";

Storage Default
{
<Data name="routeOfAdministrationDefaultData">
<Subscript>"routeOfAdministration"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>firstDose</Value>
</Value>
<Value name="3">
<Value>maxSingleDose</Value>
</Value>
<Value name="4">
<Value>maxDosePerDay</Value>
</Value>
<Value name="5">
<Value>maxDosePerTreatmentPeriod</Value>
</Value>
<Value name="6">
<Value>maxTreatmentPeriod</Value>
</Value>
</Data>
<Data name="targetSpecies">
<Attribute>targetSpecies</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicinalProductPharmaceutical.routeOfAdministration.targetSpecies"</Subscript>
</Data>
<DefaultData>routeOfAdministrationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
