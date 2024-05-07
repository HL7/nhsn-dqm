Profile: ManifestList
Parent: List
Id: manifest-list
Title: "Manifest List"
Description: "A List containing references to the set of resources that form a complete submission to NHSN, since the complete set may span multiple bundles. This is useful when the amount of data is too large to contain in a single Bundle."
* ^status = #active
* identifier 1..
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "item"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slice different resources included in the bundle"
* entry contains
	sending-device 1..1 MS and
    sending-org 1..1 MS and
    census 1..1 MS and
    patient-data 0..* MS
* entry[sending-device].item only Reference(NHSNSubmittingDevice)
* entry[sending-device] ^short = "Sending device"
* entry[sending-org].item only Reference(SubmittingOrganization)
* entry[sending-org] ^short = "Sending organization"
* entry[census].item only Reference(PatientsOfInterestList)
* entry[census] ^short = "Patient Census"
* entry[patient-data].item only Reference(Bundle or BulkPatientData)
* entry[patient-data] ^short = "Patient data as a Bundle or ND-JSON file"
* entry[patient-data].extension contains PatientDataEntry named patientDataEntry 0..* MS
  
  
Extension: PatientDataEntry
Id: patient-data-entry
Description: "A resource present in the patient data"
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