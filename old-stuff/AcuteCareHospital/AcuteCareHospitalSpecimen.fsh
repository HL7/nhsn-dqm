Profile: AcuteCareHospitalReportingSpecimen
Parent: USCoreSpecimenProfile
Id: ach-specimen
Title: "ACH Event Specimen"
Description: "This profile contains Required and Must Support data elements for reporting specimen information to the NHSN Acute Care Hospital (ACH) Digital Quality Measures."
* ^experimental = true
* ^status = #draft
* identifier MS
* accessionIdentifier MS
* status MS
* collection 1.. 
* collection.collected[x] 1..
* collection.bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)
* collection.bodySite 1..