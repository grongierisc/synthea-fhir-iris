/// MedicinalProductIndication.
Class HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductIndication Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// The medication for which this is an indication.
/// <p>
/// MedicinalProduct | Medication
Property subject As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "subject", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The disease, 
/// symptom or procedure that is the indication for treatment.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property diseaseSymptomProcedure As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "diseaseSymptomProcedure", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The status of the disease or symptom for which the indication applies.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property diseaseStatus As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "diseaseStatus", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Comorbidity (concurrent condition) or co-infection as part of the indication.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property comorbidity As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "comorbidity", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The intended effect, 
/// aim or strategy to be achieved by the indication.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property intendedEffect As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "intendedEffect", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Timing or duration information as part of the indication.
Property duration As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "duration", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Information about the use of the medicinal product in relation to other therapies described as part of the indication.
Property otherTherapy As array Of HS.FHIR.Storage.vR4.Model.Element.MedicinalProductIndication.otherTherapy(XMLNAME = "otherTherapy", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Describe the undesirable effects of the medicinal product.
/// <p>
/// MedicinalProductUndesirableEffect
Property undesirableEffect As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "undesirableEffect", XMLPROJECTION = "ELEMENT");

/// Population
/// <p>
/// The population group to which this applies.
Property population As array Of HS.FHIR.Storage.vR4.Model.Datatype.Population(XMLNAME = "population", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductIndication";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductIndication";

Storage Default
{
<Data name="MedicinalProductIndicationDefaultData">
<Subscript>"MedicinalProductIndication"</Subscript>
<Value name="1">
<Value>diseaseSymptomProcedure</Value>
</Value>
<Value name="2">
<Value>diseaseStatus</Value>
</Value>
<Value name="3">
<Value>intendedEffect</Value>
</Value>
<Value name="4">
<Value>duration</Value>
</Value>
</Data>
<Data name="comorbidity">
<Attribute>comorbidity</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductIndication.comorbidity"</Subscript>
</Data>
<Data name="otherTherapy">
<Attribute>otherTherapy</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductIndication.otherTherapy"</Subscript>
</Data>
<Data name="population">
<Attribute>population</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductIndication.population"</Subscript>
</Data>
<Data name="subject">
<Attribute>subject</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductIndication.subject"</Subscript>
</Data>
<Data name="undesirableEffect">
<Attribute>undesirableEffect</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductIndication.undesirableEffect"</Subscript>
</Data>
<DefaultData>MedicinalProductIndicationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
