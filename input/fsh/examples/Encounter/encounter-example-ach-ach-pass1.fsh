Instance: encounter-example-ach-ach-pass1
InstanceOf: QICoreEncounter
Title: "Encounter - Example ACH Pass1 - Inpatient"
Description: "Encounter - Example ACH Pass1 - Hospital Admission"
Usage: #example
* identifier.use = #usual
* identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.698.8"
* identifier.value = "10005104251"
* status = #in-progress
* class = $v3-ActCode#ACUTE "inpatient acute"
* type = $sct#32485007 "Hospital admission (procedure)"
* type.text = "Hospital Admission"
* subject = Reference(patient-example-ach-ach-pass1)
* subject.display = "Pass1 ACH"
* period.start = "2024-02-01T16:02:00-05:00"
* period.end = "2024-02-04T19:00:00-05:00"
* reasonCode = $icd-10-cm#R50.9 "Fever, unspecified"
* reasonCode.text = "Fever"
* diagnosis.condition = Reference(condition-example-diagnosis-ach-pass1)
* diagnosis.condition.display = "Thrombophlebitis"
* hospitalization.admitSource = $admit-source#born "Born in hospital"
* hospitalization.admitSource.text = "Born in hospital"
* hospitalization.dischargeDisposition = $discharge-disposition#oth "Other"
* hospitalization.dischargeDisposition.text = "Other"
* location[0].location.display = "ACH Neonatal critical care"
* location[=].location = Reference(location-example-ach-nicu-level-iii)
* location[=].physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#wa "Ward"
* location[=].period.start = "2024-02-01T16:02:00-05:00"
* location[=].period.end = "2024-02-02T16:02:00-05:00"