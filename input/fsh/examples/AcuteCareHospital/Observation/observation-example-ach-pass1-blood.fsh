Instance: observation-example-ach-pass1-blood
InstanceOf: AcuteCareHospitalReportingLabObservation
Title: "Observation - Example ACH Pass1 Blood"
Description: "Observation - Example ACH Pass1 Blood"
Usage: #example
* status = #final
* basedOn = Reference(servicerequest-example-ach-ach-pass1-blood)
* category[us-core] = $observation-category#laboratory "Laboratory"
* category[us-core].text = "Laboratory"
* code = $loinc#600-7 "Bacteria identified in Blood by Culture"
* code.text = "Bacteria identified in Blood by Culture"
* subject = Reference(patient-example-ach-ach-pass1)
* subject.display = "Pass1 ACH"
* encounter = Reference(encounter-example-ach-ach-pass1)
* encounter.display = "Hospital Admission"
* effectiveDateTime = "2024-02-02T18:12:00-05:00"
* issued = "2024-02-03T11:42:00-05:00"
* valueCodeableConcept = $sct#113962001 "Staphylococcus capitis ss capitis (organism)"
* valueCodeableConcept.text = "Staphylococcus capitis"
* specimen = Reference(specimen-example-ach-ach-pass1-blood)