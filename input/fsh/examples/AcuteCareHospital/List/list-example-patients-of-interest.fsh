Instance: list-example-patients-of-interest
InstanceOf: PatientsOfInterestList
Usage: #example
* identifier.system = "https://nhsnlink.org"
* identifier.value = "NHSNdQMAcuteCareHospitalInitialPopulation"
* status = #current
* mode = #changes
* date = "2021-07-28T00:00:00Z"
* entry[0].item = Reference(patient-example-sameresultdiffday)
* entry[+].item = Reference(patient-example-hypo)