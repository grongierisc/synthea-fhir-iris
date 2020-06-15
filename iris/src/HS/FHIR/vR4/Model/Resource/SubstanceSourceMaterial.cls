/// Source material shall capture information on the taxonomic and anatomical origins as well as the fraction of a material that can result in or can be modified to form a substance. 
/// This set of data elements shall be used to define polymer substances isolated from biological matrices. 
/// Taxonomic and anatomical origins shall be described using a controlled vocabulary as required. 
/// This information is captured for naturally derived polymers ( . 
/// starch) and structurally diverse substances. 
/// For Organisms belonging to the Kingdom Plantae the Substance level defines the fresh material of a single species or infraspecies, 
/// the Herbal Drug and the Herbal preparation. 
/// For Herbal preparations, 
/// the fraction information will be captured at the Substance information level and additional information for herbal extracts will be captured at the Specified Substance Group 1 information level. 
/// See for further explanation the Substance Class: Structurally Diverse and the herbal annex.
Class HS.FHIR.vR4.Model.Resource.SubstanceSourceMaterial Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// General high level classification of the source material specific to the origin of the material.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property sourceMaterialClass As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "sourceMaterialClass", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The type of the source material shall be specified based on a controlled vocabulary. 
/// For vaccines, 
/// this subclause refers to the class of infectious agent.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property sourceMaterialType As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "sourceMaterialType", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The state of the source material when extracted.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property sourceMaterialState As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "sourceMaterialState", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// The unique identifier associated with the source material parent organism shall be specified.
Property organismId As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "organismId", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The organism accepted Scientific name shall be provided based on the organism taxonomy.
Property organismName As %String(MAXLEN = 1000000, XMLNAME = "organismName", XMLPROJECTION = "ATTRIBUTE");

/// Identifier
/// <p>
/// The parent of the herbal drug Ginkgo biloba, 
/// Leaf is the substance ID of the substance (fresh) of Ginkgo biloba L. 
/// or Ginkgo biloba L. 
/// (Whole plant)
Property parentSubstanceId As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "parentSubstanceId", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The parent substance of the Herbal Drug, 
/// or Herbal preparation.
Property parentSubstanceName As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "parentSubstanceName", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// The country where the plant material is harvested or the countries where the plasma is sourced from as laid down in accordance with the Plasma Master File. 
/// For ?Plasma-derived substances? the attribute country of origin provides information about the countries used for the manufacturing of the Cryopoor plama or Crioprecipitate.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property countryOfOrigin As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "countryOfOrigin", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The place/region where the plant is harvested or the places/regions where the animal source material has its habitat.
Property geographicalLocation As List Of %String(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",MAXLEN = 1000000, XMLNAME = "geographicalLocation", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Stage of life for animals, 
/// plants, 
/// insects and microorganisms. 
/// This information shall be provided only when the substance is significantly different in these stages (e.g. 
/// foetal bovine serum)
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property developmentStage As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "developmentStage", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Many complex materials are fractions of parts of plants, 
/// animals, 
/// or minerals. 
/// Fraction elements are often necessary to define both Substances and Specified Group 1 Substances. 
/// For substances derived from Plants, 
/// fraction information will be captured at the Substance information level ( . 
/// Oils, 
/// Juices and Exudates). 
/// Additional information for Extracts, 
/// such as extraction solvent composition, 
/// will be captured at the Specified Substance Group 1 information level. 
/// For plasma-derived products fraction information will be captured at the Substance and the Specified Substance Group 1 levels.
Property fractionDescription As List Of HS.FHIR.vR4.Model.Element.SubstanceSourceMaterial.fractionDescription(XMLNAME = "fractionDescription", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// This subclause describes the organism which the substance is derived from. 
/// For vaccines, 
/// the parent organism shall be specified based on these subclause elements. 
/// As an example, 
/// full taxonomy will be described for the Substance Name: ., 
/// Leaf.
Property organism As HS.FHIR.vR4.Model.Element.SubstanceSourceMaterial.organism(XMLNAME = "organism", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// To do.
Property partDescription As List Of HS.FHIR.vR4.Model.Element.SubstanceSourceMaterial.partDescription(XMLNAME = "partDescription", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSourceMaterial";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSourceMaterial";

}
