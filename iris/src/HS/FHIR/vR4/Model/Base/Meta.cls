/// Metadata about a resource.
Class HS.FHIR.vR4.Model.Base.Meta Extends (%Persistent,HS.FHIR.vR4.Model.Base.Element) [ Not ProcedureBlock ]
{

/// id
/// <p>
/// Version specific identifier.
Property versionId As %String(MAXLEN = 1000000, XMLNAME = "versionId", XMLPROJECTION = "ATTRIBUTE");

/// instant
/// <p>
/// When the resource version last changed.
Property lastUpdated As %String(MAXLEN = 1000000, XMLNAME = "lastUpdated", XMLPROJECTION = "ATTRIBUTE");

/// uri
/// <p>
/// Identifies where the resource comes from.
Property source As %String(MAXLEN = 1000000, XMLNAME = "source", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Profiles this resource claims to conform to.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property profile As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "profile", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Security Labels applied to this resource.
/// <p>
/// security-labels is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in security-labels, 
/// you may formally EXTEND security-labels to add codes to it.
Property security As List Of HS.FHIR.vR4.Model.Datatype.Coding(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "security", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Tags applied to this resource.
/// <p>
/// any FHIR4 code may be used; 
/// common-tags shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property tag As List Of HS.FHIR.vR4.Model.Datatype.Coding(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "tag", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Meta";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Meta";

}
