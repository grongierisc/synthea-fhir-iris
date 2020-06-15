/// Coding words or phrases of the name.
Class HS.FHIR.vR4.Model.Element.MedicinalProduct.name.namePart Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// A fragment of a product name.
Property part As %String(MAXLEN = 1000000, XMLNAME = "part", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Coding
/// <p>
/// Idenifying type for this part of the name (e.g. 
/// strength part)
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.Coding(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "MedicinalProduct.name.namePart";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "MedicinalProduct.name.namePart";

}
