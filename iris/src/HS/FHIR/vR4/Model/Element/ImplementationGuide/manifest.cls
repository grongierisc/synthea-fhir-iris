/// Information about an assembled IG.
Class HS.FHIR.vR4.Model.Element.ImplementationGuide.manifest Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// url
/// <p>
/// Location of rendered implementation guide.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property rendering As %String(MAXLEN = 1000000, XMLNAME = "rendering", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Resource in the implementation guide.
Property resource As List Of HS.FHIR.vR4.Model.Element.ImplementationGuide.manifest.resource(XMLNAME = "resource", XMLPROJECTION = "ELEMENT") [ Required ];

/// BackboneElement
/// <p>
/// HTML page within the parent IG.
Property page As List Of HS.FHIR.vR4.Model.Element.ImplementationGuide.manifest.page(XMLNAME = "page", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Image within the IG.
Property image As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "image", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Additional linkable file in IG.
Property other As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "other", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "ImplementationGuide.manifest";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "ImplementationGuide.manifest";

}
