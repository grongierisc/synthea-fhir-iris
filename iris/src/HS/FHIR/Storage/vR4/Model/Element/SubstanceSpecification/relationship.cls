/// A link between this substance and another, 
/// with details of the relationship.
Class HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.relationship Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// A pointer to another substance, 
/// as a resource or just a representational code.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property substanceCodeableConcept As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "substanceCodeableConcept", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// A pointer to another substance, 
/// as a resource or just a representational code.
/// <p>
/// SubstanceSpecification.
Property substanceReference As HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "substanceReference", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// For example \"salt to parent\", 
/// \"active moiety\", 
/// \"starting material\"
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property relationship As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "relationship", XMLPROJECTION = "ELEMENT");

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
Property amountQuantity As HS.FHIR.Storage.vR4.Model.Datatype.Quantity(XMLNAME = "amountQuantity", XMLPROJECTION = "ELEMENT");

/// Range
/// <p>
/// A numeric factor for the relationship, 
/// for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.
Property amountRange As HS.FHIR.Storage.vR4.Model.Datatype.Range(XMLNAME = "amountRange", XMLPROJECTION = "ELEMENT");

/// Ratio
/// <p>
/// A numeric factor for the relationship, 
/// for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.
Property amountRatio As HS.FHIR.Storage.vR4.Model.Datatype.Ratio(XMLNAME = "amountRatio", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// A numeric factor for the relationship, 
/// for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.
Property amountString As %String(MAXLEN = 1000000, XMLNAME = "amountString", XMLPROJECTION = "ATTRIBUTE");

/// Ratio
/// <p>
/// For use when the numeric.
Property amountRatioLowLimit As HS.FHIR.Storage.vR4.Model.Datatype.Ratio(XMLNAME = "amountRatioLowLimit", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// An operator for the amount, 
/// for example \"average\", 
/// \"approximately\", 
/// \"less than\"
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property amountType As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "amountType", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Supporting literature.
/// <p>
/// DocumentReference
Property source As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "source", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "SubstanceSpecification.relationship";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "SubstanceSpecification.relationship";

Storage Default
{
<Data name="relationshipDefaultData">
<Subscript>"relationship"</Subscript>
<Value name="1">
<Value>substanceCodeableConcept</Value>
</Value>
<Value name="2">
<Value>substanceReference</Value>
</Value>
<Value name="3">
<Value>relationship</Value>
</Value>
<Value name="4">
<Value>isDefining</Value>
</Value>
<Value name="5">
<Value>amountQuantity</Value>
</Value>
<Value name="6">
<Value>amountRange</Value>
</Value>
<Value name="7">
<Value>amountRatio</Value>
</Value>
<Value name="8">
<Value>amountString</Value>
</Value>
<Value name="9">
<Value>amountRatioLowLimit</Value>
</Value>
<Value name="10">
<Value>amountType</Value>
</Value>
</Data>
<Data name="source">
<Attribute>source</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.SubstanceSpecification.relationship.source"</Subscript>
</Data>
<DefaultData>relationshipDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
