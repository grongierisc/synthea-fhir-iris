/// Group of multiple entities.
Class HS.FHIR.vR4.Model.Resource.Group Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// Unique id.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// Whether this group's record is in active use.
Property active As %Boolean(XMLNAME = "active", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// person | animal | practitioner | device | medication | substance
/// <p>
/// group-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend group-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// boolean
/// <p>
/// Descriptive or actual.
Property actual As %Boolean(XMLNAME = "actual", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// CodeableConcept
/// <p>
/// Kind of Group members.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property code As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Label for Group.
Property name As %String(MAXLEN = 1000000, XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

/// unsignedInt
/// <p>
/// Number of members.
Property quantity As %Integer(XMLNAME = "quantity", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Entity that is the custodian of the Group's definition.
/// <p>
/// Organization | RelatedPerson | Practitioner | PractitionerRole
Property managingEntity As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "managingEntity", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Include / Exclude group members by Trait.
Property characteristic As List Of HS.FHIR.vR4.Model.Element.Group.characteristic(XMLNAME = "characteristic", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Who or what is in group.
Property member As List Of HS.FHIR.vR4.Model.Element.Group.member(XMLNAME = "member", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Group";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Group";

}
