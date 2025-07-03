Instance: device-example-ach-ach-pass3-ivcs-pump
InstanceOf: QICoreDevice
Title: "Device - Example ACH Pass3 Ivcs Pump"
Description: "Device - Example ACH Pass3 - Intermittent venous compression system pump"
Usage: #example
* meta.profile = Canonical(QICoreDevice|6.0.0)
* identifier.use = #usual
* identifier.system = "http://example.org/identifiers/698.8"
* identifier.value = "100051035"

* type.coding[+] = $sct#469317002 "Intermittent venous compression system pump (physical object)"
* type.text = "Intermittent venous compression system pump"
* patient = Reference(patient-example-ach-ach-pass3)
* patient.display = "Pass3 ACH"


