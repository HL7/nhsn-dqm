Profile: AcuteCareHospitalReportingMedicationAdministration
Parent: MedicationAdministration
Id: ach-medicationadministration
Title: "ACH Event MedicationAdministration"
Description: "This profile contains Required and Must Support data elements for reporting medication administration information to the NHSN Acute Care Hospital (ACH) Digital Quality Measures. This profile is based on the [HL7 FHIR® R4 MedicationAdministration Resource v4.0.1](http://hl7.org/fhir/R4/medicationadministration.html)."
* ^experimental = true
* ^status = #draft
* id 1..

* statusReason MS
* category MS
* context MS
* reasonCode MS
* reasonReference MS
* request MS
* dosage 1..
  * route 1..
  * method MS
  * dose 1..