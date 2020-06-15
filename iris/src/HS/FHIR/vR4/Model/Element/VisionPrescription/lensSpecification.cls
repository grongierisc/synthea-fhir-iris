/// Vision lens authorization.
Class HS.FHIR.vR4.Model.Element.VisionPrescription.lensSpecification Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// CodeableConcept
/// <p>
/// Product to be supplied.
/// <p>
/// any FHIR4 code may be used; 
/// vision-product shows EXAMPLE codes, 
/// but you may use codes from any ValueSet.
Property product As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "product", XMLPROJECTION = "ELEMENT") [ Required ];

/// code
/// <p>
/// right | left
/// <p>
/// vision-eye-codes|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend vision-eye-codes|4.0.1 and you may NOT use codes from other ValueSets.
Property eye As %String(MAXLEN = 1000000, XMLNAME = "eye", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// decimal
/// <p>
/// Power of the lens.
Property sphere As %Decimal(XMLNAME = "sphere", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Lens power for astigmatism.
Property cylinder As %Decimal(XMLNAME = "cylinder", XMLPROJECTION = "ATTRIBUTE");

/// integer
/// <p>
/// Lens meridian which contain no power for astigmatism.
Property axis As %Integer(XMLNAME = "axis", XMLPROJECTION = "ATTRIBUTE");

/// BackboneElement
/// <p>
/// Eye alignment compensation.
Property prism As List Of HS.FHIR.vR4.Model.Element.VisionPrescription.lensSpecification.prism(XMLNAME = "prism", XMLPROJECTION = "ELEMENT");

/// decimal
/// <p>
/// Added power for multifocal levels.
Property add As %Decimal(XMLNAME = "add", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Contact lens power.
Property power As %Decimal(XMLNAME = "power", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Contact lens back curvature.
Property backCurve As %Decimal(XMLNAME = "backCurve", XMLPROJECTION = "ATTRIBUTE");

/// decimal
/// <p>
/// Contact lens diameter.
Property diameter As %Decimal(XMLNAME = "diameter", XMLPROJECTION = "ATTRIBUTE");

/// Quantity
/// <p>
/// Lens wear duration.
Property duration As HS.FHIR.vR4.Model.Datatype.Quantity(XMLNAME = "duration", XMLPROJECTION = "ELEMENT");

/// string
/// <p>
/// Color required.
Property color As %String(MAXLEN = 1000000, XMLNAME = "color", XMLPROJECTION = "ATTRIBUTE");

/// string
/// <p>
/// Brand required.
Property brand As %String(MAXLEN = 1000000, XMLNAME = "brand", XMLPROJECTION = "ATTRIBUTE");

/// Annotation
/// <p>
/// Notes for coatings.
Property note As List Of HS.FHIR.vR4.Model.Datatype.Annotation(XMLNAME = "note", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "VisionPrescription.lensSpecification";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "VisionPrescription.lensSpecification";

}
