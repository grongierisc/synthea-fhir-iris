/// Resource in the implementation guide.
Class HS.FHIR.vR4.Model.Element.ImplementationGuide.definition.resource Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Location of the resource.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property reference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reference", XMLPROJECTION = "ELEMENT") [ Required ];

/// code
/// <p>
/// Versions this applies to (if different to IG)
/// <p>
/// FHIR-version|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend FHIR-version|4.0.1 and you may NOT use codes from other ValueSets.
Property fhirVersion As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "fhirVersion", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Human Name for the resource.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Reason why included in guide.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Is an example/What is this an example of?
Property exampleBoolean As %Boolean(XMLNAME = "exampleBoolean", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Is an example/What is this an example of?
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property exampleCanonical As %String(MAXLEN = 1000000, XMLNAME = "exampleCanonical", XMLPROJECTION = "ATTRIBUTE");

/// id
/// <p>
/// Grouping this is part of.
Property groupingId As %String(MAXLEN = 1000000, XMLNAME = "groupingId", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImplementationGuide.definition.resource";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImplementationGuide.definition.resource";

}
