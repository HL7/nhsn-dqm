Instance: device-example-ach-ach-pass1-central-line
InstanceOf: QICoreDevice
Title: "Device - Example ACH Pass1 Central Line"
Description: "Device - Example ACH Pass1 - Central venous catheter"
Usage: #example
* meta.profile = Canonical(QICoreDevice|6.0.0)
* identifier.use = #usual
* identifier.system = "http://example.org/identifiers/698.8"
* identifier.value = "1000510341"

* type.coding[+] = $sct#52124006 "Central venous catheter, device (physical object)"
* type.text = "Central venous catheter, device"
* patient = Reference(patient-example-ach-ach-pass1)
* patient.display = "Pass1 ACH"


