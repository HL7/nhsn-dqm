Profile: PatientsOfInterestList
Parent: List
Id: poi-list
Title: "Patients-Of-Interest List"
Description: "A Patients of Interest List defines all individual Patients considered for inclusion in NHSN Measure reporting."
* ^status = #active

* identifier 1..
* entry.item only Reference(QICorePatient)
  * ^short = "Patient Of Interest reference"