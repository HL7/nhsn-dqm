Profile: AcuteCareHospitalReportingCondition
Parent: USCoreConditionEncounterDiagnosisProfile
Id: ach-condition
Title: "ACH Event Condition"
Description: "This profile contains Required and Must Support data elements for reporting patient condition information to the NHSN Acute Care Hospital (ACH) Digital Quality Measures."
* ^experimental = true
* ^status = #draft

* obeys Condition-coding-from-common-codesystems
* id 1..

* encounter MS
* onset[x] MS
* abatement[x] MS
* recordedDate MS