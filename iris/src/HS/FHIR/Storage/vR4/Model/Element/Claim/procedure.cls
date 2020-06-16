/// Clinical procedures performed.
Class HS.FHIR.Storage.vR4.Model.Element.Claim.procedure Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// positiveInt
/// <p>
/// Procedure instance identifier.
Property sequence As %Integer(XMLNAME = "sequence", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Category of Procedure.
/// <p>
/// any FHIR4 code may be used; 
/// ex-procedure-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// dateTime
/// <p>
/// When the procedure was performed.
Property date As %String(MAXLEN = 1000000, XMLNAME = "date", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Specific clinical procedure.
/// <p>
/// any FHIR4 code may be used; 
/// icd-10-procedures shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property procedureCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "procedureCodeableConcept", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Specific clinical procedure.
/// <p>
/// Procedure.
Property procedureReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "procedureReference", XMLPROJECTION = "ELEMENT") [ Required ];

/// Reference
/// <p>
/// Unique device identifier.
/// <p>
/// Device
Property udi As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "udi", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Claim.procedure";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Claim.procedure";

Storage Default
{
<Data name="procedureDefaultData">
<Subscript>"procedure"</Subscript>
<Value name="1">
<Value>sequence</Value>
</Value>
<Value name="2">
<Value>date</Value>
</Value>
<Value name="3">
<Value>procedureCodeableConcept</Value>
</Value>
<Value name="4">
<Value>procedureReference</Value>
</Value>
</Data>
<Data name="type">
<Attribute>type</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Claim.procedure.type"</Subscript>
</Data>
<Data name="udi">
<Attribute>udi</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Claim.procedure.udi"</Subscript>
</Data>
<DefaultData>procedureDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
