/// Base Resource.
Class HS.FHIR.vR4.Model.Base.Resource Extends (%Library.Persistent , HS.FHIR.DTL.Util.XML.Adapter, HS.FHIR.Util.JSON.Adapter, %XML.Adaptor) [ Inheritance = right, Not ProcedureBlock ]
{

Property id As %String;

Property meta As HS.FHIR.vR4.Model.Base.Meta(XMLNAME = "meta", XMLPROJECTION = "ELEMENT");

/// Meta
/// <p>
/// Metadata about the resource.
/// uri
/// <p>
/// A set of rules under which this content was created.
Property implicitRules As %String(MAXLEN = 1000000, XMLNAME = "implicitRules", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// Language of the resource content.
/// <p>
/// languages is the PREFERRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in languages, 
/// you may use codes from any ValueSet.
Property language As %String(MAXLEN = 1000000, XMLNAME = "language", XMLPROJECTION = "ATTRIBUTE");

Property newResource As List Of HS.FHIR.vR4.Model.Base.Resource(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array");

/// Generated property, not a FHIR element: Storage space for 'contained' resources that are actually separate from the parent, and need to be serialized as separate objects.
/// Generated property, not a FHIR element: Storage space for the location the corresponding newResource entry reference should be stored in after adding it to a repository
Property newResourceReference As %String;

Property primitiveExtension As List Of HS.FHIR.vR4.Model.Base.Extension(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array");

/// Generated property, not a FHIR element: Storage space for extensions of any elements that have a primitive data type.
/// Generated property, not a FHIR element: returns the resource type for the resource object.
Property resourceType As %String [ Calculated ];

Method resourceTypeGet() As %String
{
 quit ..%ClassName(0)
}

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Resource";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Resource";


}
