Profile: AcuteCareHospitalReportingLabObservation
Parent: USCoreLaboratoryResultObservationProfile
Id: ach-observation-lab
Title: "ACH Event Lab Result Observation"
Description: "This profile contains Required and Must Support data elements for reporting laboratory result information to the NHSN Acute Care Hospital (ACH) Digital Quality Measures. This profile is based on the [HL7 FHIR® US Core Lab Observation Profile v3.1.1](http://hl7.org/fhir/us/core/STU3.1.1/StructureDefinition-us-core-observation-lab.html)."
* ^experimental = true
* ^status = #draft

* encounter MS
* effective[x] 1..
* issued MS
* interpretation MS
* bodySite MS
* method MS
* specimen MS
* component MS
  * value[x] MS
  * interpretation MS