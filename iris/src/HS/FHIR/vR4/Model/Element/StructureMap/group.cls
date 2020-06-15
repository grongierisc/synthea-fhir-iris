/// Named sections for reader convenience.
Class HS.FHIR.vR4.Model.Element.StructureMap.group Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// id
/// <p>
/// Human-readable label.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// id
/// <p>
/// Another group that this group adds rules to.
Property extends As %String(MAXLEN = 1000000, XMLNAME = "extends", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// none | types | type-and-types
/// <p>
/// map-group-type-mode|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend map-group-type-mode|4.0.1 and you may NOT use codes from other ValueSets.
Property typeMode As %String(MAXLEN = 1000000, XMLNAME = "typeMode", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Additional description/explanation for group.
Property documentation As %String(MAXLEN = 1000000, XMLNAME = "documentation", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Named instance provided when invoking the map.
Property input As List Of HS.FHIR.vR4.Model.Element.StructureMap.group.input(XMLNAME = "input", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// Transform Rule from source to target.
Property rule As List Of HS.FHIR.vR4.Model.Element.StructureMap.group.rule(XMLNAME = "rule", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "StructureMap.group";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "StructureMap.group";

}
