/// Transform Rule from source to target.
Class HS.FHIR.vR4.Model.Element.StructureMap.group.rule Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// id
/// <p>
/// Name of the rule for internal references.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// BackboneElement
/// <p>
/// Source inputs to the mapping.
Property source As List Of HS.FHIR.vR4.Model.Element.StructureMap.group.rule.source(XMLNAME = "source", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Content to create because of this mapping rule.
Property target As List Of HS.FHIR.vR4.Model.Element.StructureMap.group.rule.target(XMLNAME = "target", XMLPROJECTION = "ELEMENT");

/// StructureMap:group[n].rule
/// <p>
/// Rules contained in this rule.
Property rule As List Of HS.FHIR.vR4.Model.Element.StructureMap.group.rule(XMLNAME = "rule", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Which other rules to apply in the context of this rule.
Property dependent As List Of HS.FHIR.vR4.Model.Element.StructureMap.group.rule.dependent(XMLNAME = "dependent", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Documentation for this instance of data.
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "StructureMap.group.rule";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "StructureMap.group.rule";

}
