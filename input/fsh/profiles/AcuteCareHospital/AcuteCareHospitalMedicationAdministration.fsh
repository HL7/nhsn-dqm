Profile: AcuteCareHospitalReportingMedicationAdministration
Parent: MedicationAdministration
Id: ach-medicationadministration
Title: "ACH Event MedicationAdministration"
Description: "This profile contains Required and Must Support data elements for reporting medication administration information to the NHSN Acute Care Hospital (ACH) Digital Quality Measures."
* ^experimental = true
* ^status = #draft

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