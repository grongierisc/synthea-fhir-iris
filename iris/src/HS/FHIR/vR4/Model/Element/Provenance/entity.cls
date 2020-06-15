/// An entity used in this activity.
Class HS.FHIR.vR4.Model.Element.Provenance.entity Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// code
/// <p>
/// derivation | revision | quotation | source | removal
/// <p>
/// provenance-entity-role|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend provenance-entity-role|4.0.1 and you may NOT use codes from other ValueSets.
Property role As %String(MAXLEN = 1000000, XMLNAME = "role", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Reference
/// <p>
/// Identity of entity.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property what As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "what", XMLPROJECTION = "ELEMENT") [ Required ];

/// Provenance:agent
/// <p>
/// Entity is attributed to this agent.
Property agent As List Of HS.FHIR.vR4.Model.Element.Provenance.agent(XMLNAME = "agent", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Provenance.entity";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Provenance.entity";

}
