/// This subclause describes the organism which the substance is derived from. 
/// For vaccines, 
/// the parent organism shall be specified based on these subclause elements. 
/// As an example, 
/// full taxonomy will be described for the Substance Name: ., 
/// Leaf.
Class HS.FHIR.vR4.Model.Element.SubstanceSourceMaterial.organism Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The family of an organism shall be specified.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property family As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "family", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The genus of an organism shall be specified; 
/// refers to the Latin epithet of the genus element of the plant/animal scientific name; 
/// it is present in names for genera, 
/// species and infraspecies.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property genus As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "genus", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The species of an organism shall be specified; 
/// refers to the Latin epithet of the species of the plant/animal; 
/// it is present in names for species and infraspecies.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property species As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "species", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The Intraspecific type of an organism shall be specified.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property intraspecificType As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "intraspecificType", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The intraspecific description of an organism shall be specified based on a controlled vocabulary. 
/// For Influenza Vaccine, 
/// the intraspecific description shall contain the syntax of the antigen in line with the WHO convention.
Property intraspecificDescription As %String(MAXLEN = 1000000, XMLNAME = "intraspecificDescription", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// 4.9.13.6.1 Author type (Conditional)
Property author As List Of HS.FHIR.vR4.Model.Element.SubstanceSourceMaterial.organism.author(XMLNAME = "author", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// 4.9.13.8.1 Hybrid species maternal organism ID (Optional)
Property hybrid As HS.FHIR.vR4.Model.Element.SubstanceSourceMaterial.organism.hybrid(XMLNAME = "hybrid", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// 4.9.13.7.1 Kingdom (Conditional)
Property organismGeneral As HS.FHIR.vR4.Model.Element.SubstanceSourceMaterial.organism.organismGeneral(XMLNAME = "organismGeneral", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSourceMaterial.organism";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSourceMaterial.organism";

}
