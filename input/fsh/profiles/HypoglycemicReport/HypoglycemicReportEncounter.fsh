
Profile: HypoglycemicReportEncounter
Parent: USCoreEncounterProfile
Id: hypoglycemic-reporting-encounter
Title: "Hypoglycemic Event Encounter"
Description: "This profile contains Required and Must Support data elements for reporting encounter information to the NHSN Glycemic Control, Hypoglycemia Module."
* ^experimental = true
* ^status = #draft

* identifier 1..
  * use MS
  * type MS
  * period MS
* status from AcuteCareHospitalEncounterStatus (required) // MEASDEV-703, MEASDEV-756
* status ^short = "triaged | in-progress | finished | onleave | entered-in-error"
* status ^definition = "triaged | in-progress | finished | onleave | entered-in-error."
* classHistory MS
* period 1..
* diagnosis MS
  * use MS
* hospitalization
  * admitSource MS
  * reAdmission MS
* location 1..
  * ^short = "List of locations where the patient has been. Used in part to discern whether the patient is Inpatient, Emergency and or Observation status."
  * status MS
  * period 1..