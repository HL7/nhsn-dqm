Instance: device-example-ach-ach-pass2-compress-hose
InstanceOf: QICoreDevice
Title: "Device - Example ACH Pass2 Compress Hose"
Description: "Device - Example ACH Pass2 - Graduated compression elastic hosiery"
Usage: #example
* meta.profile = Canonical(QICoreDevice|6.0.0)
* identifier.use = #usual
* identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.698.8"
* identifier.value = "100051034"

* type.coding[+] = $sct#348681001 "Graduated compression elastic hosiery (physical object)"
* type.text = "Graduated compression elastic hosiery"
* patient = Reference(patient-example-ach-ach-pass2)
* patient.display = "Pass2 ACH"


