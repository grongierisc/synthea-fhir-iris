/// Who performed the series.
Class HS.FHIR.Storage.vR4.Model.Element.ImagingStudy.series.performer Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of performance.
/// <p>
/// series-performer-function is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in series-performer-function, 
/// you may formally EXTEND series-performer-function to add codes to it.
Property function As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "function", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Who performed the series.
/// <p>
/// Practitioner | PractitionerRole | Organization | CareTeam | Patient | Device | RelatedPerson
Property actor As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "actor", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImagingStudy.series.performer";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImagingStudy.series.performer";

Storage Default
{
<Data name="performerDefaultData">
<Subscript>"performer"</Subscript>
<Value name="1">
<Value>function</Value>
</Value>
<Value name="2">
<Value>actor</Value>
</Value>
</Data>
<DefaultData>performerDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
