Profile: BulkPatientData
Parent: DocumentReference
Id: bulk-patient-data
Title: "Bulk Patient Data"
Description: "A DocumentReference resource pointing to a FHIR bulk-data compliant ND-JSON file"
* ^status = #active
* content ^slicing.discriminator.type = #value
* content ^slicing.discriminator.path = "attachment.contentType"
* content ^slicing.rules = #open
* content ^slicing.description = "Slice different resources included in the bundle"
* content contains
	nd-json 1..1 MS
* content[nd-json].attachment.contentType = #application/fhir+ndjson
* content[nd-json].attachment.url 1..1