/// Device capabilities.
Class HS.FHIR.vR4.Model.Element.DeviceDefinition.capability Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Type of capability.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT") [ Required ];

/// CodeableConcept
/// <p>
/// Description of capability.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property description As List Of HS.FHIR.vR4.Model.Datatype.CodeableConcept(SQLPROJECTION = "table/column", STORAGEDEFAULT = "array",XMLNAME = "description", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "DeviceDefinition.capability";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "DeviceDefinition.capability";

}
