Instance: observation-example-ach-pass1-gestational-age
InstanceOf: QICoreLaboratoryResultObservation
Title: "Observation - Example ACH Pass1 Gestational Age"
Description: "Observation - Example ACH Pass1 - Lab: Gestational age at birth"
Usage: #example
//https://build.fhir.org/ig/HL7/fhir-qi-core/Observation-example-gestation.json.html
* status = #final
* category[us-core] = $observation-category#laboratory "Laboratory"
* code = $loinc#76516-4 "Gestational age--at birth"
* code.text = "Gestational age at birth"
* subject = Reference(patient-example-ach-ach-pass1)
* subject.display = "Pass1 ACH"
* encounter = Reference(encounter-example-ach-ach-pass1)
* encounter.display = "Hospital Admission"
* effectiveDateTime = "2024-02-01T16:02:00-05:00"
* issued = "2024-02-01T16:02:00-05:00"
* performer = Reference(practitioner-example)
* valueQuantity = 164 'd' "day"