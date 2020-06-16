/// MedicinalProductContraindication.
Class HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductContraindication Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
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
/// symptom or procedure for the contraindication.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property disease As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "disease", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The status of the disease or symptom for the contraindication.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property diseaseStatus As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "diseaseStatus", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// A comorbidity (concurrent condition) or coinfection.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property comorbidity As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "comorbidity", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Information about the use of the medicinal product in relation to other therapies as part of the indication.
/// <p>
/// MedicinalProductIndication
Property therapeuticIndication As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "therapeuticIndication", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Information about the use of the medicinal product in relation to other therapies described as part of the indication.
Property otherTherapy As array Of HS.FHIR.Storage.vR4.Model.Element.MedicinalProductContraindication.otherTherapy(XMLNAME = "otherTherapy", XMLPROJECTION = "ELEMENT");

/// Population
/// <p>
/// The population group to which this applies.
Property population As array Of HS.FHIR.Storage.vR4.Model.Datatype.Population(XMLNAME = "population", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductContraindication";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductContraindication";

Storage Default
{
<Data name="MedicinalProductContraindicationDefaultData">
<Subscript>"MedicinalProductContraindication"</Subscript>
<Value name="1">
<Value>disease</Value>
</Value>
<Value name="2">
<Value>diseaseStatus</Value>
</Value>
</Data>
<Data name="comorbidity">
<Attribute>comorbidity</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductContraindication.comorbidity"</Subscript>
</Data>
<Data name="otherTherapy">
<Attribute>otherTherapy</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductContraindication.otherTherapy"</Subscript>
</Data>
<Data name="population">
<Attribute>population</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductContraindication.population"</Subscript>
</Data>
<Data name="subject">
<Attribute>subject</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductContraindication.subject"</Subscript>
</Data>
<Data name="therapeuticIndication">
<Attribute>therapeuticIndication</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.MedicinalProductContraindication.therapeuticIndication"</Subscript>
</Data>
<DefaultData>MedicinalProductContraindicationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
