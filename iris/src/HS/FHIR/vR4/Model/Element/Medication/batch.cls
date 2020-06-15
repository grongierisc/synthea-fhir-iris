/// Details about packaged medications.
Class HS.FHIR.vR4.Model.Element.Medication.batch Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// string
/// <p>
/// Identifier assigned to batch.
Property lotNumber As %String(MAXLEN = 1000000, XMLNAME = "lotNumber", XMLPROJECTION = "ATTRIBUTE");

/// dateTime
/// <p>
/// When batch will expire.
Property expirationDate As %String(MAXLEN = 1000000, XMLNAME = "expirationDate", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Medication.batch";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Medication.batch";

}
