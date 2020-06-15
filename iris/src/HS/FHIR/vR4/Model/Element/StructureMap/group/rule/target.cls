/// Content to create because of this mapping rule.
Class HS.FHIR.vR4.Model.Element.StructureMap.group.rule.target Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// id
/// <p>
/// Type or variable this rule applies to.
Property context As %String(MAXLEN = 1000000, XMLNAME = "context", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// type | variable
/// <p>
/// map-context-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend map-context-type|4.0.1 and you may NOT use codes from other ValueSets.
Property contextType As %String(MAXLEN = 1000000, XMLNAME = "contextType", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Field to create in the context.
Property element As %String(MAXLEN = 1000000, XMLNAME = "element", XMLPROJECTION = "ATTRIBUTE");

/// id
/// <p>
/// Named context for field, 
/// if desired, 
/// and a field is specified.
Property variable As %String(MAXLEN = 1000000, XMLNAME = "variable", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// first | share | last | collate
/// <p>
/// map-target-list-mode|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend map-target-list-mode|4.0.1 and you may NOT use codes from other ValueSets.
Property listMode As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "listMode", XMLPROJECTION = "ELEMENT");

/// id
/// <p>
/// Internal rule reference for shared list items.
Property listRuleId As %String(MAXLEN = 1000000, XMLNAME = "listRuleId", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// create | copy +
/// <p>
/// map-transform|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend map-transform|4.0.1 and you may NOT use codes from other ValueSets.
Property transform As %String(MAXLEN = 1000000, XMLNAME = "transform", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Parameters to the transform.
Property parameter As List Of HS.FHIR.vR4.Model.Element.StructureMap.group.rule.target.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "StructureMap.group.rule.target";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "StructureMap.group.rule.target";

}
