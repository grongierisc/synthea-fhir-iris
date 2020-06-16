/// The people who performed the procedure.
Class HS.FHIR.Storage.vR4.Model.Element.Procedure.performer Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of performance.
/// <p>
/// any FHIR4 code may be used; 
/// performer-role shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property function As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "function", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The reference to the practitioner.
/// <p>
/// Practitioner | PractitionerRole | Organization | Patient | RelatedPerson | Device
Property actor As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "actor", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Organization the device or practitioner was acting for.
/// <p>
/// Organization
Property onBehalfOf As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "onBehalfOf", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Procedure.performer";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Procedure.performer";

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
<Value name="3">
<Value>onBehalfOf</Value>
</Value>
</Data>
<DefaultData>performerDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
