/// List of locations where the patient has been.
Class HS.FHIR.vR4.Model.Element.Encounter.location Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// Reference
/// <p>
/// Location the encounter takes place.
/// <p>
/// Location
Property location As HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "location", XMLPROJECTION = "ELEMENT") [ Required ];

/// code
/// <p>
/// planned | active | reserved | completed
/// <p>
/// encounter-location-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend encounter-location-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// The physical type of the location (usually the level in the location hierachy - bed room ward etc.)
/// <p>
/// any FHIR4 code may be used; 
/// location-physical-type shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property physicalType As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "physicalType", XMLPROJECTION = "ELEMENT");

/// Period
/// <p>
/// Time period during which the patient was present at the location.
Property period As HS.FHIR.vR4.Model.Datatype.Period(XMLNAME = "period", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Encounter.location";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Encounter.location";

}
