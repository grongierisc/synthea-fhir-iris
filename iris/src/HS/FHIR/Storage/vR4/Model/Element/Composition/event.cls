/// The clinical service(s) being documented.
Class HS.FHIR.Storage.vR4.Model.Element.Composition.event Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Code(s) that apply to the event being documented.
/// <p>
/// any FHIR4 code may be used; 
/// v3-ActCode shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// The period covered by the documentation.
Property period As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// The event(s) being documented.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property detail As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "detail", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Composition.event";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Composition.event";

Storage Default
{
<Data name="code">
<Attribute>code</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Composition.event.code"</Subscript>
</Data>
<Data name="detail">
<Attribute>detail</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Composition.event.detail"</Subscript>
</Data>
<Data name="eventDefaultData">
<Subscript>"event"</Subscript>
<Value name="1">
<Value>period</Value>
</Value>
</Data>
<DefaultData>eventDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
