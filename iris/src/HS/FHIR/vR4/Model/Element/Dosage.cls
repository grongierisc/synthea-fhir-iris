/// How the medication is/was taken or should be taken.
Class HS.FHIR.vR4.Model.Element.Dosage Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// integer
/// <p>
/// The order of the dosage instructions.
Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Free text dosage instructions e.g. 
/// SIG.
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Supplemental instruction or warnings to the patient - e.g. 
/// \"with meals\", 
/// \"may cause drowsiness\"
/// <p>
/// any FHIR4 code may be used; 
/// additional-instruction-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property additionalInstruction As list Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "additionalInstruction", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Patient or consumer oriented instructions.
Property patientInstruction As %String(MAXLEN = 1000000, XMLNAME = "patientInstruction", XMLPROJECTION = "ATTRIBUTE");

/// Timing
/// <p>
/// When medication should be administered.
Property timing As HS.FHIR.vR4.Model.Datatype.Timing(XMLNAME = "timing", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Take \"as needed\" (for x)
Property asNeededBoolean As %Boolean(XMLNAME = "asNeededBoolean", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Take \"as needed\" (for x)
/// <p>
/// any FHIR4 code may be used; 
/// medication-as-needed-reason shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property asNeededCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "asNeededCodeableConcept", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Body site to administer to.
/// <p>
/// any FHIR4 code may be used; 
/// approach-site-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property site As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "site", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// How drug should enter body.
/// <p>
/// any FHIR4 code may be used; 
/// route-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property route As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "route", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Technique for administering medication.
/// <p>
/// any FHIR4 code may be used; 
/// administration-method-codes shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property method As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "method", XMLPROJECTION = "ELEMENT");

/// Element
/// <p>
/// Amount of medication administered.
Property doseAndRate As list Of HS.FHIR.vR4.Model.Element.Dosage.doseAndRate(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array", XMLNAME = "doseAndRate", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// Upper limit on medication per unit of time.
Property maxDosePerPeriod As HS.FHIR.vR4.Model.Datatype.Ratio(XMLNAME = "maxDosePerPeriod", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Upper limit on medication per administration.
Property maxDosePerAdministration As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "maxDosePerAdministration", XMLPROJECTION = "ELEMENT");

/// Quantity
/// <p>
/// Upper limit on medication per lifetime of the patient.
Property maxDosePerLifetime As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "maxDosePerLifetime", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Dosage";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Dosage";

Storage Default
{
<Data name="DosageDefaultData">
<Subscript>"Dosage"</Subscript>
<Value name="1">
<Value>sequence</Value>
</Value>
<Value name="2">
<Value>text</Value>
</Value>
<Value name="3">
<Value>patientInstruction</Value>
</Value>
<Value name="4">
<Value>timing</Value>
</Value>
<Value name="5">
<Value>asNeededBoolean</Value>
</Value>
<Value name="6">
<Value>asNeededCodeableConcept</Value>
</Value>
<Value name="7">
<Value>site</Value>
</Value>
<Value name="8">
<Value>route</Value>
</Value>
<Value name="9">
<Value>method</Value>
</Value>
<Value name="10">
<Value>maxDosePerPeriod</Value>
</Value>
<Value name="11">
<Value>maxDosePerAdministration</Value>
</Value>
<Value name="12">
<Value>maxDosePerLifetime</Value>
</Value>
</Data>
<Data name="additionalInstruction">
<Attribute>additionalInstruction</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.Dosage.additionalInstruction"</Subscript>
</Data>
<Data name="doseAndRate">
<Attribute>doseAndRate</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.vR4.Model.Element.Dosage.doseAndRate"</Subscript>
</Data>
<DefaultData>DosageDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
