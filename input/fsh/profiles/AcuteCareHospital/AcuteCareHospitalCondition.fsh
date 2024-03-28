Profile: AcuteCareHospitalReportingCondition
Parent: USCoreCondition
Id: ach-condition
Title: "ACH Event Condition"
Description: "This profile contains Required and Must Support data elements for reporting patient condition information to the NHSN Acute Care Hospital (ACH) Digital Quality Measures. This profile is based on the [HL7 FHIR® US Core Condition Profile v3.1.1](http://hl7.org/fhir/us/core/STU3.1.1/StructureDefinition-us-core-condition.html)."
* ^experimental = true
* ^status = #draft

* obeys Condition-coding-from-common-codesystems
* id 1..

* encounter MS
* onset[x] MS
* abatement[x] MS
* recordedDate MS