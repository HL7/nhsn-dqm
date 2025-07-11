Instance: specimen-example-ach-ach-pass3-stool
InstanceOf: USCoreSpecimenProfile
Title: "Specimen - Example ACH Pass3 Stool"
Description: "Specimen - Example ACH Pass3 - Bloody stool"
Usage: #example
* meta.profile = Canonical(USCoreSpecimenProfile|6.1.0)
* identifier[0].system = "http://example.org/identifiers/798.32"
* identifier[=].value = "C104082905"
* identifier[=].assigner.display = "LIS"
* identifier[+].system = "http://example.org/identifiers/798.800"
* identifier[=].value = "C10408290:45"
* type = $sct#429901000124102 "Bloody stool specimen (specimen)"
* type.text = "Bloody stool"
* subject = Reference(patient-example-ach-ach-pass3)
* subject.display = "Pass3 ACH"
* receivedTime = "2024-02-01T19:12:00-05:00"
* collection.collectedDateTime = "2024-02-01T19:02:00-05:00"
* collection.bodySite = $sct#181261002 "Entire rectum (body structure)"


