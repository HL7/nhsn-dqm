
Profile: HypoglycemicReportingMedicationAdministration
Parent: MedicationAdministration
Id: hypoglycemic-reporting-medicationadministration
Title: "Hypoglycemic Event MedicationAdministration"
Description: "This profile contains Required and Must Support data elements for reporting medication administration information to the NHSN Glycemic Control, Hypoglycemia Module."
* ^experimental = true
* ^status = #draft

* statusReason MS
* category MS
* reasonCode MS
* reasonReference MS
* dosage 1..
  * route 1..
  * method MS
  * dose 1..
