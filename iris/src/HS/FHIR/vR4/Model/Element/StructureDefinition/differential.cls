/// Differential view of the structure.
Class HS.FHIR.vR4.Model.Element.StructureDefinition.differential Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// ElementDefinition
/// <p>
/// Definition of elements in the resource (if no StructureDefinition)
Property element As List Of HS.FHIR.vR4.Model.Element.ElementDefinition(XMLNAME = "element", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "StructureDefinition.differential";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "StructureDefinition.differential";

}
