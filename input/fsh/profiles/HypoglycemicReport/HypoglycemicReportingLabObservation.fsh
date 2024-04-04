Profile: HypoglycemicReportingLabObservation
Parent: USCoreLaboratoryResultObservationProfile
Id: hypoglycemic-reporting-observation-lab
Title: "Hypoglycemic Event Lab Result Observation"
Description: "This profile contains Required and Must Support data elements for reporting blood-glucose result information to the NHSN Glycemic Control, Hypoglycemia Module."
* ^experimental = true
* ^status = #draft

* encounter MS
* effective[x] 1..
* issued MS
* interpretation MS
* bodySite MS
* method MS
* referenceRange MS
  * low MS
  * high MS
  * age MS
* specimen MS
* component MS
  * value[x] MS
  * interpretation MS
  * referenceRange MS
    * low MS
    * high MS
    * age MS