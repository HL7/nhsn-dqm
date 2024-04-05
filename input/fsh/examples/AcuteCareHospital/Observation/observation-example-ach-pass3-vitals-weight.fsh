Instance: observation-example-ach-pass3-vitals-weight
InstanceOf: AcuteCareHospitalReportingVitalsObservation
Usage: #inline
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* code.text = "Weight"
* subject = Reference(patient-example-ach-ach-pass3)
* subject.display = "Pass3 ACH"
* encounter = Reference(encounter-example-ach-ach-pass3-short-stay)
* encounter.display = "Short Stay"
* effectiveDateTime = "2024-02-01T19:21:00-05:00"
* issued = "2024-02-01T19:21:00-05:00"
* valueQuantity = 54.4 'kg' "kg"