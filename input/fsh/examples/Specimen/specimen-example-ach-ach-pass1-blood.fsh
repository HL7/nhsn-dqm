Instance: specimen-example-ach-ach-pass1-blood
InstanceOf: USCoreSpecimenProfile
Title: "Specimen - Example ACH Pass1 Blood"
Description: "Specimen - Example ACH Pass1 - Blood venous from heel"
Usage: #example
* meta.profile = Canonical(USCoreSpecimenProfile|6.1.0)
* identifier[0].system = "http://example.org/identifiers/798.32"
* identifier[=].value = "C104082901"
* identifier[=].assigner.display = "LIS"
* identifier[+].system = "http://example.org/identifiers/798.800"
* identifier[=].value = "C10408290:41"
* type = $v2-0487#BLDV "Blood venous"
* type.text = "Blood venous"
* subject = Reference(patient-example-ach-ach-pass1)
* subject.display = "Pass1 ACH"
* receivedTime = "2024-02-02T18:20:00-05:00"
* collection.collectedDateTime = "2024-02-02T18:12:00-05:00"
* collection.bodySite = $sct#76853006 "Heel structure (body structure)"
* collection.bodySite.text = "Heel structure"