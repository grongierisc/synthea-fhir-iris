/// The regulatory procedure for granting or amending a marketing authorization.
Class HS.FHIR.Storage.vR4.Model.Element.MedicinalProductAuthorization.procedure Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Identifier for this procedure.
Property identifier As HS.FHIR.Storage.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Type of procedure.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// dateTime
/// <p>
/// Date of procedure.
Property dateDateTime As %String(MAXLEN = 1000000, XMLNAME = "dateDateTime", XMLPROJECTION = "ATTRIBUTE");

/// Period
/// <p>
/// Date of procedure.
Property datePeriod As HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "datePeriod", XMLPROJECTION = "ELEMENT");

/// MedicinalProductAuthorization:procedure
/// <p>
/// Applcations submitted to obtain a marketing authorization.
Property application As array Of HS.FHIR.Storage.vR4.Model.Element.MedicinalProductAuthorization.procedure(XMLNAME = "application", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProductAuthorization.procedure";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProductAuthorization.procedure";

Storage Default
{
<Data name="application">
<Attribute>application</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.MedicinalProductAuthorization.procedure.application"</Subscript>
</Data>
<Data name="procedureDefaultData">
<Subscript>"procedure"</Subscript>
<Value name="1">
<Value>identifier</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
<Value name="3">
<Value>dateDateTime</Value>
</Value>
<Value name="4">
<Value>datePeriod</Value>
</Value>
</Data>
<DefaultData>procedureDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
