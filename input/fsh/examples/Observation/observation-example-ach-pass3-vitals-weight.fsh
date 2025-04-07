Instance: observation-example-ach-pass3-vitals-weight
InstanceOf: USCoreVitalSignsProfile
Title: "Observation - Example ACH Pass3 Vitals Weight"
Description: "Observation - Example ACH Pass3 Vitals Signs: Body weight"
Usage: #example
* meta.profile = Canonical(USCoreVitalSignsProfile|6.1.0)
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* category[VSCat].text = "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* code.text = "Weight"
* subject = Reference(patient-example-ach-ach-pass3)
* subject.display = "Pass3 ACH"
* encounter = Reference(encounter-example-ach-ach-pass3-short-stay)
* encounter.display = "Short Stay"
* effectiveDateTime = "2024-02-01T19:21:00-05:00"
* issued = "2024-02-01T19:21:00-05:00"
* performer = Reference(practitioner-example)
* valueQuantity = 54.4 'kg' "kg"