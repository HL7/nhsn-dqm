Profile: PatientsOfInterestList
Parent: List
Id: poi-list
Title: "Patients-Of-Interest List"
Description: "A Patients of Interest (POI) List defines all individual Patients considered for inclusion in NHSN Measure reporting. Note that the POI list is not always required, because not all NHSN measures will be patient-based (e.g. some measures can be about facilities, etc.)."
* ^status = #active

* identifier 0.. MS
* entry.item only Reference(QICorePatient)
  * ^short = "Patient Of Interest reference"