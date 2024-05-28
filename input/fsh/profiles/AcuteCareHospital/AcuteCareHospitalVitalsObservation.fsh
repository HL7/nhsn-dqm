Profile: AcuteCareHospitalReportingVitalsObservation
Parent: USCoreVitalSignsProfile
Id: ach-observation-vitals
Title: "ACH Event Observation - Vital Signs"
Description: "This profile contains Required and Must Support data elements for reporting observation-vital signs information to the NHSN Acute Care Hospital (ACH) Digital Quality Measures."
* ^experimental = true
* ^status = #draft

* partOf MS
* encounter MS
* issued MS
* interpretation MS
* bodySite MS
* method MS
* referenceRange MS
  * low MS
  * high MS
* hasMember MS
* component
  * interpretation MS
  * referenceRange MS
    * low MS
    * high MS