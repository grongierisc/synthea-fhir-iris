/// Todo.
Class HS.FHIR.vR4.Model.Resource.SubstanceReferenceInformation Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Todo.
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Todo.
Property gene As List Of HS.FHIR.vR4.Model.Element.SubstanceReferenceInformation.gene(XMLNAME = "gene", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Todo.
Property geneElement As List Of HS.FHIR.vR4.Model.Element.SubstanceReferenceInformation.geneElement(XMLNAME = "geneElement", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Todo.
Property classification As List Of HS.FHIR.vR4.Model.Element.SubstanceReferenceInformation.classification(XMLNAME = "classification", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Todo.
Property target As List Of HS.FHIR.vR4.Model.Element.SubstanceReferenceInformation.target(XMLNAME = "target", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceReferenceInformation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceReferenceInformation";

}
