/// 4.9.13.6.1 Author type (Conditional)
Class HS.FHIR.vR4.Model.Element.SubstanceSourceMaterial.organism.author Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The type of author of an organism species shall be specified. 
/// The parenthetical author of an organism species refers to the first author who published the plant/animal name (of any rank). 
/// The primary author of an organism species refers to the first author(s), 
/// who validly published the plant/animal name.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property authorType As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "authorType", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The author of an organism species shall be specified. 
/// The author year of an organism shall also be specified when applicable; 
/// refers to the year in which the first author(s) published the infraspecific plant/animal name (of any rank)
Property authorDescription As %String(MAXLEN = 1000000, XMLNAME = "authorDescription", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSourceMaterial.organism.author";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSourceMaterial.organism.author";

}
