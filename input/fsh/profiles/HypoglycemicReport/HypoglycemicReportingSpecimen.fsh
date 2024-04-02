Profile: HypoglycemicReportingSpecimen
Parent: Specimen
Id: hypoglycemic-reporting-specimen
Title: "Hypoglycemic Event Specimen"
Description: "This profile contains Required and Must Support data elements for reporting blood glucose specimen information to the NHSN Glycemic Control, Hypoglycemia Module. This profile is based on the [HL7 FHIR R4 Specimen Profile v4.0.1](http://hl7.org/fhir/R4/specimen.html)."
* ^experimental = true
* ^status = #draft

* identifier MS
* accessionIdentifier MS
* type 1..
* collection 1..
* collection.collected[x] 1..
* collection.bodySite MS