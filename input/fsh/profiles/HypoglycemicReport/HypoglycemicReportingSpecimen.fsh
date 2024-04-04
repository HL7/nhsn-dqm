Profile: HypoglycemicReportingSpecimen
Parent: Specimen
Id: hypoglycemic-reporting-specimen
Title: "Hypoglycemic Event Specimen"
Description: "This profile contains Required and Must Support data elements for reporting blood glucose specimen information to the NHSN Glycemic Control, Hypoglycemia Module."
* ^experimental = true
* ^status = #draft

* identifier MS
* accessionIdentifier MS
* type 1..
* collection 1..
* collection.collected[x] 1..
* collection.bodySite MS