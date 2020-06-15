/// A material substance originating from a biological entity.
Class HS.FHIR.vR4.Model.Resource.BiologicallyDerivedProduct Extends HS.FHIR.vR4.Model.Base.DomainResource [ Not ProcedureBlock ]
{

/// Identifier
/// <p>
/// External ids for this item.
Property identifier As List Of HS.FHIR.vR4.Model.Datatype.Identifier(XMLNAME = "identifier", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// organ | tissue | fluid | cells | biologicalAgent
/// <p>
/// product-category|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend product-category|4.0.1 and you may NOT use codes from other ValueSets.
Property productCategory As %String(MAXLEN = 1000000, XMLNAME = "productCategory", XMLPROJECTION = "ATTRIBUTE");

/// CodeableConcept
/// <p>
/// What this biologically derived product is.
/// <p>
/// any FHIR4 code from any ValueSet may be used.
Property productCode As HS.FHIR.vR4.Model.Datatype.CodeableConcept(XMLNAME = "productCode", XMLPROJECTION = "ELEMENT");

/// code
/// <p>
/// available | unavailable
/// <p>
/// product-status|4.0.1 is the REQUIRED FHIR4 ValueSet for codes; 
/// you may NOT extend product-status|4.0.1 and you may NOT use codes from other ValueSets.
Property status As %String(MAXLEN = 1000000, XMLNAME = "status", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// Procedure request.
/// <p>
/// ServiceRequest
Property request As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "request", XMLPROJECTION = "ELEMENT");

/// integer
/// <p>
/// The amount of this biologically derived product.
Property quantity As %Integer(XMLNAME = "quantity", XMLPROJECTION = "ATTRIBUTE");

/// Reference
/// <p>
/// BiologicallyDerivedProduct parent.
/// <p>
/// BiologicallyDerivedProduct
Property parent As List Of HS.FHIR.vR4.Model.Base.Reference(XMLNAME = "parent", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// How this product was collected.
Property collection As HS.FHIR.vR4.Model.Element.BiologicallyDerivedProduct.collection(XMLNAME = "collection", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Any processing of the product during collection.
Property processing As List Of HS.FHIR.vR4.Model.Element.BiologicallyDerivedProduct.processing(XMLNAME = "processing", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Any manipulation of product post-collection.
Property manipulation As HS.FHIR.vR4.Model.Element.BiologicallyDerivedProduct.manipulation(XMLNAME = "manipulation", XMLPROJECTION = "ELEMENT");

/// BackboneElement
/// <p>
/// Product storage.
Property storage As List Of HS.FHIR.vR4.Model.Element.BiologicallyDerivedProduct.storage(XMLNAME = "storage", XMLPROJECTION = "ELEMENT");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "BiologicallyDerivedProduct";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "BiologicallyDerivedProduct";

}
