/// The actual design of the device or software version running on the device.
Class HS.FHIR.vR4.Model.Element.Device.version Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// The type of the device version.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property type As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "type", XMLPROJECTION = "ELEMENT");

/// Identifier
/// <p>
/// A single component of the device version.
Property component As HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "component", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// The version text.
Property value As %String(MAXLEN = 1000000, XMLNAME = "value", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Device.version";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Device.version";

}
