/// The results of the series of required setup operations before the tests were executed.
Class HS.FHIR.Storage.vR4.Model.Element.TestReport.setup Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// BackboneElement
/// <p>
/// A setup operation or assert that was executed.
Property action As array Of HS.FHIR.Storage.vR4.Model.Element.TestReport.setup.action(XMLNAME = "action", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "TestReport.setup";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "TestReport.setup";

Storage Default
{
<Data name="action">
<Attribute>action</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.TestReport.setup.action"</Subscript>
</Data>
<Type>%Storage.Persistent</Type>
}

}
