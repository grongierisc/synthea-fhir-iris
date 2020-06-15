/// Pure binary content defined by a format other than FHIR.
Class HS.FHIR.vR4.Model.Resource.Binary Extends HS.FHIR.vR4.Model.Base.Resource [ Not ProcedureBlock ]
{

/// code
/// <p>
/// MimeType of the binary content.
/// <p>
/// mimetypes|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend mimetypes|4.0.1 and you may NOT use codes from other ValueSets.
Property contentType As %String(MAXLEN = 1000000, XMLNAME = "contentType", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Identifies another resource to use as proxy when enforcing access control.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property securityContext As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "securityContext", XMLPROJECTION = "ELEMENT");

/// base64Binary
/// <p>
/// The actual content.
Property data As %Binary(XMLNAME = "data", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Binary";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Binary";

}
