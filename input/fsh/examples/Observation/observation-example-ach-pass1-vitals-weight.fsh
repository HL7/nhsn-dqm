Instance: observation-example-ach-pass1-vitals-weight
InstanceOf: USCoreVitalSignsProfile
Title: "Observation - Example ACH Pass1 Vitals Weight"
Description: "Observation - Example ACH Pass1 - Vitals Signs: Birth weight Measured"
Usage: #example
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* category[VSCat].text = "Vital Signs"
* code = $loinc#8339-4 "Birth weight Measured"
* code.text = "Birth Weight"
* subject = Reference(patient-example-ach-ach-pass1)
* subject.display = "Pass1 ACH"
* encounter = Reference(encounter-example-ach-ach-pass1)
* encounter.display = "Hospital Admission"
* effectiveDateTime = "2024-02-01T16:02:00-05:00"
* issued = "2024-02-01T16:02:00-05:00"
* performer = Reference(practitioner-example)
* valueQuantity = 0.58 'kg' "kg"