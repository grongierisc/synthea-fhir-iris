/// Questions and sections within the Questionnaire.
Class HS.FHIR.Storage.vR4.Model.Element.Questionnaire.item Extends HS.FHIR.Storage.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Unique id for item in questionnaire.
Property linkId As %String(MAXLEN = 1000000, XMLNAME = "linkId", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// uri
/// <p>
/// ElementDefinition - details for the item.
Property definition As %String(MAXLEN = 1000000, XMLNAME = "definition", XMLPROJECTION = "ATTRIBUTE");

/// Coding
/// <p>
/// Corresponding concept for this item in a terminology.
/// <p>
/// any FHIR4 code may be used; 
/// questionnaire-questions shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property code As array Of HS.FHIR.Storage.vR4.Model.Datatype.Coding(XMLNAME = "code", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// E.g. 
/// \"1(a)\", 
/// \"2.5.3\"
Property prefix As %String(MAXLEN = 1000000, XMLNAME = "prefix", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Primary text for the item.
Property text As %String(MAXLEN = 1000000, XMLNAME = "text", XMLPROJECTION = "ATTRIBUTE");

/// code
/// <p>
/// group | display | boolean | decimal | integer | date | dateTime +
/// <p>
/// item-type|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend item-type|4.0.1 and you may NOT use codes from other ValueSets.
Property type As %String(MAXLEN = 1000000, XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// BackboneElement
/// <p>
/// Only allow data when.
Property enableWhen As array Of HS.FHIR.Storage.vR4.Model.Element.Questionnaire.item.enableWhen(XMLNAME = "enableWhen", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// all | any
/// <p>
/// questionnaire-enable-behavior|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend questionnaire-enable-behavior|4.0.1 and you may NOT use codes from other ValueSets.
Property enableBehavior As %String(MAXLEN = 1000000, XMLNAME = "enableBehavior", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Whether the item must be included in data results.
Property required As %Boolean(XMLNAME = "required", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Whether the item may repeat.
Property repeats As %Boolean(XMLNAME = "repeats", XMLPROJECTION = "ATTRIBUTE");

/// boolean
/// <p>
/// Don't allow human editing.
Property readOnly As %Boolean(XMLNAME = "readOnly", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// No more than this many characters.
Property maxLength As %Integer(XMLNAME = "maxLength", XMLPROJECTION = "ATTRIBUTE");

/// canonical
/// <p>
/// Valueset containing permitted answers.
/// <p>
/// TO DO: Unrecognized value type for the FHIR4 model
Property answerValueSet As %String(MAXLEN = 1000000, XMLNAME = "answerValueSet", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Permitted answer.
Property answerOption As array Of HS.FHIR.Storage.vR4.Model.Element.Questionnaire.item.answerOption(XMLNAME = "answerOption", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Initial value(s) when item is first rendered.
Property initial As array Of HS.FHIR.Storage.vR4.Model.Element.Questionnaire.item.initial(XMLNAME = "initial", XMLPROJECTION = "ELEMENT");

/// Questionnaire:item
/// <p>
/// Nested questionnaire items.
Property item As array Of HS.FHIR.Storage.vR4.Model.Element.Questionnaire.item(XMLNAME = "item", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Questionnaire.item";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Questionnaire.item";

Storage Default
{
<Data name="answerOption">
<Attribute>answerOption</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Questionnaire.item.answerOption"</Subscript>
</Data>
<Data name="code">
<Attribute>code</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Questionnaire.item.code"</Subscript>
</Data>
<Data name="enableWhen">
<Attribute>enableWhen</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Questionnaire.item.enableWhen"</Subscript>
</Data>
<Data name="initial">
<Attribute>initial</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Questionnaire.item.initial"</Subscript>
</Data>
<Data name="item">
<Attribute>item</Attribute>
<Structure>subnode</Structure>
<Subscript>"HS.FHIR.Storage.vR4.Model.Element.Questionnaire.item.item"</Subscript>
</Data>
<Data name="itemDefaultData">
<Subscript>"item"</Subscript>
<Value name="1">
<Value>linkId</Value>
</Value>
<Value name="2">
<Value>definition</Value>
</Value>
<Value name="3">
<Value>prefix</Value>
</Value>
<Value name="4">
<Value>text</Value>
</Value>
<Value name="5">
<Value>type</Value>
</Value>
<Value name="6">
<Value>enableBehavior</Value>
</Value>
<Value name="7">
<Value>required</Value>
</Value>
<Value name="8">
<Value>repeats</Value>
</Value>
<Value name="9">
<Value>readOnly</Value>
</Value>
<Value name="10">
<Value>maxLength</Value>
</Value>
<Value name="11">
<Value>answerValueSet</Value>
</Value>
</Data>
<DefaultData>itemDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
