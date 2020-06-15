/// A link between this substance and another, 
/// with details of the relationship.
Class HS.FHIR.vR4.Model.Element.SubstanceSpecification.relationship Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// A pointer to another substance, 
/// as a resource or just a representational code.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property substanceCodeableConcept As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "substanceCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// A pointer to another substance, 
/// as a resource or just a representational code.
/// <p>
/// SubstanceSpecification.
Property substanceReference As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "substanceReference", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// For example \"salt to parent\", 
/// \"active moiety\", 
/// \"starting material\"
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property relationship As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "relationship", XMLPROJECTION = "ELEMENT");

/// boolean
/// <p>
/// For example where an enzyme strongly bonds with a particular substance, 
/// this is a defining relationship for that enzyme, 
/// out of several possible substance relationships.
Property isDefining As %Boolean(XMLNAME = "isDefining", XMLPROJECTION = "ATTRIBUTE");

/// Quantity
/// <p>
/// A numeric factor for the relationship, 
/// for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.
Property amountQuantity As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "amountQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// A numeric factor for the relationship, 
/// for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.
Property amountRange As HS.FHIR.vR4.Model.Datatype.Range(XMLNAME = "amountRange", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// A numeric factor for the relationship, 
/// for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.
Property amountRatio As HS.FHIR.vR4.Model.Datatype.Ratio(XMLNAME = "amountRatio", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// A numeric factor for the relationship, 
/// for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.
Property amountString As %String(MAXLEN = 1000000, XMLNAME = "amountString", XMLPROJECTION = "ATTRIBUTE");

/// Ratio
/// <p>
/// For use when the numeric.
Property amountRatioLowLimit As HS.FHIR.vR4.Model.Datatype.Ratio(XMLNAME = "amountRatioLowLimit", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// An operator for the amount, 
/// for example \"average\", 
/// \"approximately\", 
/// \"less than\"
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property amountType As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "amountType", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Supporting literature.
/// <p>
/// DocumentReference
Property source As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSpecification.relationship";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSpecification.relationship";

}
