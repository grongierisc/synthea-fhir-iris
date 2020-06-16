/// Information about the success/failure of an action.
Class HS.FHIR.Storage.vR4.Model.Resource.OperationOutcome Extends HS.FHIR.Storage.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// BackboneElement
/// <p>
/// A single issue associated with the action.
Property issue As array Of HS.FHIR.Storage.vR4.Model.Element.OperationOutcome.issue(XMLNAME = "issue", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "OperationOutcome";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "OperationOutcome";

Storage Default
{
<Data name="issue">
<Attribute>issue</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.OperationOutcome.issue"</Subscript>
</Data>
<Type>%Storage.Persistent</Type>
}

}
