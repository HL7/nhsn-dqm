Instance: specimen-example-ach-ach-pass1-csf
InstanceOf: USCoreSpecimenProfile
Title: "Specimen - Example ACH Pass1 CSF"
Description: "Specimen - Example ACH Pass1 - Cerebral spinal fluid from superior articular process of lumbar vertebra"
Usage: #example
* meta.profile = Canonical(USCoreSpecimenProfile|6.1.0)
* identifier[0].system = "http://example.org/identifiers/798.32"
* identifier[=].value = "C104082902"
* identifier[=].assigner.display = "LIS"
* identifier[+].system = "http://example.org/identifiers/798.800"
* identifier[=].value = "C10408290:42"
* type = $v2-0487#CSF "Cerebral spinal fluid"
* type.text = "Cerebral spinal fluid"
* subject = Reference(patient-example-ach-ach-pass1)
* subject.display = "Pass1 ACH"
* receivedTime = "2024-02-02T18:20:00-05:00"
* collection.collectedDateTime = "2024-02-02T18:13:00-05:00"
* collection.bodySite = $sct#272005 "Structure of superior articular process of lumbar vertebra (body structure)"
* collection.bodySite.text = "Structure of superior articular process of lumbar vertebra"