Profile: AcuteCareHospitalReportingSpecimen
Parent: Specimen
Id: ach-specimen
Title: "ACH Event Specimen"
Description: "This profile contains Required and Must Support data elements for reporting specimen information to the NHSN Acute Care Hospital (ACH) Digital Quality Measures. This profile is based on the [HL7 FHIR® R4 Specimen Profile v4.0.1](http://hl7.org/fhir/R4/specimen.html)."
* ^experimental = true
* ^status = #draft
* identifier MS
* accessionIdentifier MS
* status MS
* type 1..
* collection 1.. 
* collection.collected[x] 1..
* collection.bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)
* collection.bodySite 1..