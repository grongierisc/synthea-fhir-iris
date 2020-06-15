/// 5.3.6.8.1 Sugar ID (Mandatory)
Class HS.FHIR.vR4.Model.Element.SubstanceNucleicAcid.subunit.sugar Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// The Substance ID of the sugar or sugar-like component that make up the nucleotide.
Property identifier As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The name of the sugar or sugar-like component that make up the nucleotide.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// The residues that contain a given sugar will be captured. 
/// The order of given residues will be captured in the 5?-3?direction consistent with the base sequences listed above.
Property residueSite As %String(MAXLEN = 1000000, XMLNAME = "residueSite", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceNucleicAcid.subunit.sugar";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceNucleicAcid.subunit.sugar";

}
