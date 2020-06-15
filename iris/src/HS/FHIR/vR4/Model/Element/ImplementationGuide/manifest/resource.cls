/// Resource in the implementation guide.
Class HS.FHIR.vR4.Model.Element.ImplementationGuide.manifest.resource Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Location of the resource.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property reference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "reference", XMLPROJECTION = "ELEMENT") [ Required ];

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

/// url
/// <p>
/// Relative path for page in IG.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property relativePath As %String(MAXLEN = 1000000, XMLNAME = "relativePath", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImplementationGuide.manifest.resource";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImplementationGuide.manifest.resource";

}
