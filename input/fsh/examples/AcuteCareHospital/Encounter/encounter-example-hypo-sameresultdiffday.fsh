Instance: encounter-example-hypo-sameresultdiffday
InstanceOf: AcuteCareHospitalReportingEncounter
Usage: #example
* identifier.use = #usual
* identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.698.8"
* identifier.value = "1000510155"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* type = $sct#32485007 "Hospital admission (procedure)"
* type.text = "Hospital Admission"
* subject = Reference(patient-example-sameresultdiffday)
* subject.display = "Hypo, Sameresultdiffday"
* participant[0].type = $v3-ParticipationType#ADM "admitter"
* participant[=].type.text = "admitter"
* participant[=].individual.display = "Kelly Abraham Orringer, MD"
* participant[+].type = $v3-ParticipationType#DIS "discharger"
* participant[=].type.text = "discharger"
* participant[=].individual.display = "Kelly Abraham Orringer, MD"
* participant[+].type = $v3-ParticipationType#ATND "attender"
* participant[=].type.text = "attender"
* participant[=].period.start = "2022-08-17T16:06:44Z"
* participant[=].period.end = "2022-08-22T19:01:00Z"
* participant[=].individual.display = "Kelly Abraham Orringer, MD"
* period.start = "2022-08-11T18:52:00Z"
* period.end = "2022-08-22T19:01:00Z"
* reasonCode[0] = $sct#28876000 "Disease condition determination, uncontrolled (finding)"
* reasonCode[=].text = "Uncontrolled blood glucose"
* reasonCode[+] = $sct#8943002 "Weight gain (finding)"
* reasonCode[=].text = "Weight Gain"
* reasonCode[+] = $sct#267954009 "Arthralgia of the ankle and/or foot (finding)"
* reasonCode[=].text = "Foot and/or Ankle Pain"
* diagnosis.condition.display = "Uncontrolled blood glucose"
* account.identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.3.726"
* account.identifier.value = "100066812"
* account.display = "HYPO,SAMERESULTDIFFDAY"
* hospitalization.admitSource = $admit-source#nursing "From nursing home"
* hospitalization.admitSource.text = "From nursing home"
* hospitalization.dischargeDisposition = $discharge-disposition#home "Home"
* hospitalization.dischargeDisposition.text = "Home"
* location[0].location.display = "UH Adult Emergency Department"
* location[=].period.start = "2022-08-11T18:52:00Z"
* location[=].period.end = "2022-08-17T16:09:00Z"
//* location[=].location = Reference(location-example-hypo-encounter-location-sameresultdiffday)
* location[+].location.display = "UH 7B MED ACUTE CARE"
* location[=].period.start = "2022-08-17T16:09:00Z"
* location[=].period.end = "2022-08-22T19:01:00Z"
* location[+].location.display = "7129"
* location[=].physicalType = $location-physical-type#ro "Room"
* location[=].physicalType.text = "Room"
* location[=].period.start = "2022-08-11T18:52:00Z"
* location[=].period.end = "2022-08-17T16:09:00Z"
* location[+].location.identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.6669"
* location[=].location.identifier.value = "1405"
* location[=].location.display = "7129 / 01"
* location[=].physicalType = $location-physical-type#bd "Bed"
* location[=].physicalType.text = "Bed"
* location[=].period.start = "2022-08-17T16:09:00Z"
* location[=].period.end = "2022-08-22T19:01:00Z"


/*
Instance: location-example-hypo-hospital
InstanceOf: AcuteCareHospitalReportingLocation
Usage: #example
* identifier.use = #usual
* identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.6865"
* identifier.value = "100"
* name = "Health Hospital Location"
* mode = #instance
* type = $v3-RoleCode#HOSP "Hospital"
* telecom.system = #phone
* telecom.value = "916-734-2011"
* telecom.rank = 1
* address.line = "2315 Stockton Blvd"
* address.city = "Sacramento"
* address.state = "CALIFORNIA"
* address.postalCode = "95817"

Instance: location-example-hypo-hospital1
InstanceOf: AcuteCareHospitalReportingLocation
Usage: #example
* identifier.use = #usual
* identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.6865"
* identifier.value = "100"
* name = "Health Hospital Location"
* mode = #instance
* type = $hsloc.html#1060-3 "Medical Ward"
* telecom.system = #phone
* telecom.value = "916-734-2011"
* telecom.rank = 1
* address.line = "2315 Stockton Blvd"
* address.city = "Sacramento"
* address.state = "CALIFORNIA"
* address.postalCode = "95817"
*/