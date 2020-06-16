/// A language which may be used to communicate with the patient about his or her health.
Class HS.FHIR.Storage.vR4.Model.Element.Patient.communication Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The language which can be used to communicate with the patient about his or her health.
/// <p>
/// languages is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in languages, 
/// you may use codes from any ValueSet.
Property language As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "language", XMLPROJECTION = "ELEMENT") [ Required ];

/// boolean
/// <p>
/// Language preference indicator.
Property preferred As %Boolean(XMLNAME = "preferred", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Patient.communication";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Patient.communication";

Storage Default
{
<Data name="communicationDefaultData">
<Subscript>"communication"</Subscript>
<Value name="1">
<Value>language</Value>
</Value>
<Value name="2">
<Value>preferred</Value>
</Value>
</Data>
<DefaultData>communicationDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
