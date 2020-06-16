/// Describes the context of use for a conformance or knowledge resource.
Class HS.FHIR.Storage.vR4.Model.Datatype.UsageContext Extends HS.FHIR.Storage.vR4.Model.Base.Element [ Not ProcedureBlock ]
{

/// Coding
/// <p>
/// Type of context being specified.
/// <p>
/// usage-context-type is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in usage-context-type, 
/// you may formally EXTEND usage-context-type to add codes to it.
Property code As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "code", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Value that defines the context.
/// <p>
/// any FHIR4 code may be used; 
/// use-context shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property valueCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "valueCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Quantity
/// <p>
/// Value that defines the context.
Property valueQuantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "valueQuantity", XMLPROJECTION = "ELEMENT") [ Required ];

/// Range
/// <p>
/// Value that defines the context.
Property valueRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "valueRange", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Value that defines the context.
/// <p>
/// PlanDefinition | ResearchStudy | InsurancePlan | HealthcareService | Group | Location | Organization
Property valueReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "valueReference", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "UsageContext";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "UsageContext";

Storage Default
{
<Data name="UsageContextDefaultData">
<Subscript>"UsageContext"</Subscript>
<Value name="1">
<Value>code</Value>
</Value>
<Value name="2">
<Value>valueCodeableConcept</Value>
</Value>
<Value name="3">
<Value>valueQuantity</Value>
</Value>
<Value name="4">
<Value>valueRange</Value>
</Value>
<Value name="5">
<Value>valueReference</Value>
</Value>
</Data>
<DefaultData>UsageContextDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
