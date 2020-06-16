/// Contract Term Asset List.
Class HS.FHIR.Storage.vR4.Model.Element.Contract.term.asset Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Range of asset.
/// <p>
/// any FHIR4 code may be used; 
/// contract-assetscope shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property scope As HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "scope", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Asset category.
/// <p>
/// any FHIR4 code may be used; 
/// contract-assettype shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property type As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Reference
/// <p>
/// Associated entities.
/// <p>
/// Any FHIR4 Resource may be indicated by this Reference
Property typeReference As array Of HS.FHIR.Storage.vR4.Model.Base.Reference(XMLNAME = "typeReference", XMLPROJECTION = "ELEMENT");

/// CodeableConcept
/// <p>
/// Asset sub-category.
/// <p>
/// any FHIR4 code may be used; 
/// contract-assetsubtype shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property subtype As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "subtype", XMLPROJECTION = "ELEMENT");

/// Coding
/// <p>
/// Kinship of the asset.
/// <p>
/// consent-content-class is the REQUIRED FHIR4 ValueSet for codes, 
/// but if you need to express meanings not found in consent-content-class, 
/// you may formally EXTEND consent-content-class to add codes to it.
Property relationship As HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "relationship", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Circumstance of the asset.
Property context As array Of HS.FHIR.Storage.vR4.Model.Element.Contract.term.asset.context(XMLNAME = "context", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Quality desctiption of asset.
Property condition As %String(MAXLEN = 1000000, XMLNAME = "condition", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// Asset availability types.
/// <p>
/// any FHIR4 code may be used; 
/// asset-availability shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property periodType As array Of HS.FHIR.Storage.vR4.Model.Datatype.CodeableConcept(XMLNAME = "periodType", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Time period of the asset.
Property period As array Of HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Time period.
Property usePeriod As array Of HS.FHIR.Storage.vR4.Model.Datatype.Period(XMLNAME = "usePeriod", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Asset clause or question text.
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Pointer to asset text.
Property linkId As array Of %String(MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ELEMENT");

/// Contract:term[n].offer.answer
/// <p>
/// Response to assets.
Property answer As array Of HS.FHIR.Storage.vR4.Model.Element.Contract.term.offer.answer(XMLNAME = "answer", XMLPROJECTION = "ELEMENT");

/// unsignedInt
/// <p>
/// Asset restriction numbers.
Property securityLabelNumber As array Of %Integer(XMLNAME = "securityLabelNumber", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Contract Valued Item List.
Property valuedItem As array Of HS.FHIR.Storage.vR4.Model.Element.Contract.term.asset.valuedItem(XMLNAME = "valuedItem", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Contract.term.asset";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Contract.term.asset";

Storage Default
{
<Data name="answer">
<Attribute>answer</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.asset.answer"</Subscript>
</Data>
<Data name="assetDefaultData">
<Subscript>"asset"</Subscript>
<Value name="1">
<Value>scope</Value>
</Value>
<Value name="2">
<Value>relationship</Value>
</Value>
<Value name="3">
<Value>condition</Value>
</Value>
<Value name="4">
<Value>text</Value>
</Value>
</Data>
<Data name="context">
<Attribute>context</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.asset.context"</Subscript>
</Data>
<Data name="linkId">
<Attribute>linkId</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.asset.linkId"</Subscript>
</Data>
<Data name="period">
<Attribute>period</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.asset.period"</Subscript>
</Data>
<Data name="periodType">
<Attribute>periodType</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.asset.periodType"</Subscript>
</Data>
<Data name="securityLabelNumber">
<Attribute>securityLabelNumber</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.asset.securityLabelNumber"</Subscript>
</Data>
<Data name="subtype">
<Attribute>subtype</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.asset.subtype"</Subscript>
</Data>
<Data name="type">
<Attribute>type</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.asset.type"</Subscript>
</Data>
<Data name="typeReference">
<Attribute>typeReference</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.asset.typeReference"</Subscript>
</Data>
<Data name="usePeriod">
<Attribute>usePeriod</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.asset.usePeriod"</Subscript>
</Data>
<Data name="valuedItem">
<Attribute>valuedItem</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Contract.term.asset.valuedItem"</Subscript>
</Data>
<DefaultData>assetDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
