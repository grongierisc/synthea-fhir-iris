/// The absolute geographic location.
Class HS.FHIR.vR4.Model.Element.Location.position Extends HS.FHIR.vR4.Model.Base.BackboneElement [ Not ProcedureBlock ]
{

/// decimal
/// <p>
/// Longitude with WGS84 datum.
Property longitude As %Decimal(XMLNAME = "longitude", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// decimal
/// <p>
/// Latitude with WGS84 datum.
Property latitude As %Decimal(XMLNAME = "latitude", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// decimal
/// <p>
/// Altitude with WGS84 datum.
Property altitude As %Decimal(XMLNAME = "altitude", XMLPROJECTION = "ATTRIBUTE");

Parameter ELEMENTQUALIFIED = 1;

Parameter XMLNAME = "Location.position";

Parameter XMLPROJECTION = "ELEMENT";

Parameter XMLSEQUENCE = 1;

Parameter XMLTYPE = "Location.position";

}
