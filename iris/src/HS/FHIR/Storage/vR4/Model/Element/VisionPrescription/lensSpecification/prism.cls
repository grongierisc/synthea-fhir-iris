/// Eye alignment compensation.
Class HS.FHIR.Storage.vR4.Model.Element.VisionPrescription.lensSpecification.prism Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// decimal
/// <p>
/// Amount of adjustment.
Property amount As %Decimal(XMLNAME = "amount", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// code
/// <p>
/// up | down | in | out
/// <p>
/// vision-base-codes|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend vision-base-codes|4.0.1 and you may NOT use codes from other ValueSets.
Property base As %String(MAXLEN = 1000000, XMLNAME = "base", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "VisionPrescription.lensSpecification.prism";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "VisionPrescription.lensSpecification.prism";

Storage Default
{
<Data name="prismDefaultData">
<Subscript>"prism"</Subscript>
<Value name="1">
<Value>amount</Value>
</Value>
<Value name="2">
<Value>base</Value>
</Value>
</Data>
<DefaultData>prismDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
