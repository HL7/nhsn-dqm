Instance: manifest-list-example
InstanceOf: ManifestList
Title: "Manifest List Example"
Description: "List - Patients of Interest Example 1"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "bfb448e1-b47d-4940-9b09-8f55e3b0a9b8"
* status = #current
* mode = #snapshot
* date = "2021-07-28T00:00:00Z"
* entry[sending-device].extension[suppliedFileName].valueString = "Device-device-example-submitting-device.json"
* entry[sending-device].item = Reference(device-example-submitting-device)
* entry[sending-org].item = Reference(organization-example-submitting-organization)
* entry[census].item = Reference(list-example-patients-of-interest)

