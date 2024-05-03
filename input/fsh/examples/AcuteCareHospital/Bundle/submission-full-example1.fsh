Instance: submission-full-example1
InstanceOf: NHSNMeasureReportBundleProfileCurrent
Title: "Full Submission Bundle Example 1"
Description: "Measure Bundle - Full Submission Bundle Example 1"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1eaddf4c-2ec0-4dc4-b26f-9586d7a777e9"
* type = #collection
* timestamp = "2022-11-15T21:04:29.481+00:00"
* entry[0].fullUrl = "http://nhsnlink.org/fhir/Organization/organization-example-submitting-organization"
* entry[=].resource = organization-example-submitting-organization
* entry[+].fullUrl = "http://nhsnlink.org/fhir/Device/device-example-submitting-device"
* entry[=].resource = device-example-submitting-device
* entry[+].fullUrl = "http://nhsnlink.org/fhir/List/list-example-patients-of-interest"
* entry[=].resource = list-example-patients-of-interest
* entry[+].fullUrl = "http://nhsnlink.org/fhir/Patient/patient-example-sameresultdiffday"
* entry[=].resource = patient-example-sameresultdiffday