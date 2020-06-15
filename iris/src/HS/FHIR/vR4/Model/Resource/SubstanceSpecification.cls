/// The detailed description of a substance, 
/// typically at a level beyond what is used for prescribing.
Class HS.FHIR.vR4.Model.Resource.SubstanceSpecification Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Identifier by which this substance is known.
Property identifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// High level categorization, 
/// e.g. 
/// polymer or nucleic acid.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Status of substance within the catalogue e.g. 
/// approved.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property status As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "status", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// If the substance applies to only human or veterinary use.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property domain As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "domain", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Textual description of the substance.
Property description As %String(MAXLEN = 1000000, XMLNAME = "description", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Supporting literature.
/// <p>
/// DocumentReference
Property source As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Textual comment about this record of a substance.
Property comment As %String(MAXLEN = 1000000, XMLNAME = "comment", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Moiety, 
/// for structural modifications.
Property moiety As List Of HS.FHIR.vR4.Model.Element.SubstanceSpecification.moiety(XMLNAME = "moiety", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// General specifications for this substance, 
/// including how it is related to other substances.
Property property As List Of HS.FHIR.vR4.Model.Element.SubstanceSpecification.property(XMLNAME = "property", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// General information detailing this substance.
/// <p>
/// SubstanceReferenceInformation
Property referenceInformation As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "referenceInformation", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Structural information.
Property structure As HS.FHIR.vR4.Model.Element.SubstanceSpecification.structure(XMLNAME = "structure", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Codes associated with the substance.
Property code As List Of HS.FHIR.vR4.Model.Element.SubstanceSpecification.code(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Names applicable to this substance.
Property name As List Of HS.FHIR.vR4.Model.Element.SubstanceSpecification.name(XMLNAME = "name", XMLPROJECTION = "ELEMENT");

/// SubstanceSpecification:structure.isotope[n].molecularWeight
/// <p>
/// The molecular weight or weight range (for proteins, 
/// polymers or nucleic acids)
Property molecularWeight As List Of HS.FHIR.vR4.Model.Element.SubstanceSpecification.structure.isotope.molecularWeight(XMLNAME = "molecularWeight", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// A link between this substance and another, 
/// with details of the relationship.
Property relationship As List Of HS.FHIR.vR4.Model.Element.SubstanceSpecification.relationship(XMLNAME = "relationship", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Data items specific to nucleic acids.
/// <p>
/// SubstanceNucleicAcid
Property nucleicAcid As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "nucleicAcid", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Data items specific to polymers.
/// <p>
/// SubstancePolymer
Property polymer As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "polymer", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Data items specific to proteins.
/// <p>
/// SubstanceProtein
Property protein As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "protein", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Material or taxonomic/anatomical source for the substance.
/// <p>
/// SubstanceSourceMaterial
Property sourceMaterial As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "sourceMaterial", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSpecification";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSpecification";

}
