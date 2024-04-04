Profile: AcuteCareHospitalReportingLabObservation
Parent: USCoreLaboratoryResultObservationProfile
Id: ach-observation-lab
Title: "ACH Event Lab Result Observation"
Description: "This profile contains Required and Must Support data elements for reporting laboratory result information to the NHSN Acute Care Hospital (ACH) Digital Quality Measures."
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