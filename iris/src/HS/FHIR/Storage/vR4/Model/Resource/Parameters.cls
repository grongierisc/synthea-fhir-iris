/// Operation Request or Response.
Class HS.FHIR.Storage.vR4.Model.Resource.Parameters Extends HS.FHIR.Storage.vR4.Model.Base.Resource [ Not ProcedureBlock ]
{

/// BackboneElement
/// <p>
/// Operation Parameter.
Property parameter As array Of HS.FHIR.Storage.vR4.Model.Element.Parameters.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Parameters";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Parameters";

Storage Default
{
<Data name="parameter">
<Attribute>parameter</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Resource.Parameters.parameter"</Subscript>
</Data>
<Type>%Storage.Persistent</Type>
}

}
