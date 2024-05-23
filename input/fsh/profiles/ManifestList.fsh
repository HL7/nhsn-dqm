Profile: ManifestList
Parent: List
Id: manifest-list
Title: "Manifest List"
Description: "A List containing references to the set of resources that form a complete submission to NHSN, since the complete set may span multiple bundles. This is useful when the amount of data is too large to contain in a single Bundle."
* ^status = #active
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "item.resolve()"
* entry ^slicing.rules = #open
* entry contains
	sending-device 1..1 MS and
    sending-org 1..1 MS and
    census 1..1 MS and
    patient-data 0..* MS
* entry[sending-device].item only Reference(NHSNSubmittingDevice)
* entry[sending-device].extension contains SuppliedFileName named suppliedFileName 0..1 MS
* entry[sending-device] ^short = "Sending device"
* entry[sending-org].item only Reference(NHSNSubmittingOrganization)
* entry[sending-org].extension contains SuppliedFileName named suppliedFileName 0..1 MS
* entry[sending-org] ^short = "Sending organization"
* entry[census].item only Reference(PatientsOfInterestList)
* entry[census].extension contains SuppliedFileName named suppliedFileName 0..1 MS
* entry[census] ^short = "Patient Census"
* entry[patient-data].item only Reference(Bundle or BulkPatientData)
* entry[patient-data] ^short = "Patient data as a Bundle or ND-JSON file"
* entry[patient-data].extension contains SuppliedFileName named suppliedFileName 0..1 MS
* entry[patient-data].extension contains PatientDataEntry named patientDataEntry 0..* MS
  
  
Extension: SuppliedFileName
Id: supplied-file-name
Description: "The supplied file name of the resource reference, if not using a RESTful paradigm."
* ^context[+].type = #element
* ^context[=].expression = "List.entry"
* value[x] only string
  
Extension: PatientDataEntry
Id: patient-data-entry
Description: "A resource present in the patient data, along with an optional index into the patient data for ease of retrieval"
* ^context[+].type = #element
* ^context[=].expression = "List.entry"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    reference 1..1 MS and
    index 0..1 MS
* extension[reference].value[x] only Reference
* extension[index].value[x] only integer
* extension[index] ^short = "Optional index into the patient data for ease of retrieval (starting at 0). If the data is a Bundle it is the Bundle.entry index  and if a Bulk Data file it will be the line number in the nd-json file."

Instance: manifest-list-example
InstanceOf: ManifestList
Title: "Manifest List Example"
Description: "List - Patients of Interest Example 1"
Usage: #example
* status = #current
* mode = #snapshot
* date = "2021-07-28T00:00:00Z"
* entry[sending-device].extension[suppliedFileName].valueString = "Device-device-example-submitting-device.json"
* entry[sending-device].item = Reference(device-example-submitting-device)
* entry[sending-org].item = Reference(organization-example-submitting-organization)
* entry[sending-org].extension[suppliedFileName].valueString = "Organization-organization-example-submitting-organization.json"
* entry[census].item = Reference(list-example-patients-of-interest)
* entry[census].extension[suppliedFileName].valueString = "List-list-example-patients-of-interest.json"
* entry[patient-data].item = Reference(bundle-example-ach-subject-ach-pass1)
* entry[patient-data].extension[suppliedFileName].valueString = "Bundle-bundle-example-ach-subject-ach-pass1.json"

* entry[patient-data].extension[patientDataEntry][+].extension[reference].url = "reference"
* entry[patient-data].extension[patientDataEntry][=].extension[reference].valueReference = Reference(MeasureReport/measurereport-example-individual-ach-ach-pass1)
* entry[patient-data].extension[patientDataEntry][=].extension[index].url = "index"
* entry[patient-data].extension[patientDataEntry][=].extension[index].valueInteger = 0

* entry[patient-data].extension[patientDataEntry][+].extension[reference].url = "reference"
* entry[patient-data].extension[patientDataEntry][=].extension[reference].valueReference = Reference(Patient/patient-example-ach-ach-pass1)
* entry[patient-data].extension[patientDataEntry][=].extension[index].url = "index"
* entry[patient-data].extension[patientDataEntry][=].extension[index].valueInteger = 1




