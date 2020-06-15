/// Other elements required for this mapping (from context)
Class HS.FHIR.vR4.Model.Element.ConceptMap.group.element.target.dependsOn Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// uri
/// <p>
/// Reference to property mapping depends on.
Property property As %String(MAXLEN = 1000000, XMLNAME = "property", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// canonical
/// <p>
/// Code System (if necessary)
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property system As %String(MAXLEN = 1000000, XMLNAME = "system", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Value of the referenced element.
Property value As %String(MAXLEN = 1000000, XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// string
/// <p>
/// Display for the code (if value is a code)
Property display As %String(MAXLEN = 1000000, XMLNAME = "display", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ConceptMap.group.element.target.dependsOn";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ConceptMap.group.element.target.dependsOn";

}
