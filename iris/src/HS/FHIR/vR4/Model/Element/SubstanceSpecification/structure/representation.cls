/// Molecular structural representation.
Class HS.FHIR.vR4.Model.Element.SubstanceSpecification.structure.representation Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The type of structure (e.g. 
/// Full, 
/// Partial, 
/// Representative)
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The structural representation as text string in a format e.g. 
/// InChI, 
/// SMILES, 
/// MOLFILE, 
/// CDX.
Property representation As %String(MAXLEN = 1000000, XMLNAME = "representation", XMLPROJECTION = "ATTRIBUTE");

/// Attachment
/// <p>
/// An attached file with the structural representation.
Property attachment As HS.FHIR.vR4.Model.Datatype.Attachment(XMLNAME = "attachment", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSpecification.structure.representation";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSpecification.structure.representation";

}
