Instance: observation-example-hypo-lab-hypo7
InstanceOf: AcuteCareHospitalReportingLabObservation
Usage: #example

* basedOn.identifier.use = #usual
* basedOn.identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.798"
* basedOn.identifier.value = "101903010"
* basedOn.display = "Perform POC Glucose"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* category.text = "Laboratory"
* code = $loinc#41653-7 "Glucose [Mass/volume] in Capillary blood by Glucometer"
* code.text = "Glucose, POC"
* subject = Reference(patient-example-hypo)
* subject.display = "Hypo, Edadd"
* encounter = Reference(encounter-example-hypo-hypo)
* encounter.display = "Hospital Encounter"
* effectiveDateTime = "2022-08-19T12:00:00Z"
* issued = "2022-08-22T19:06:12Z"
* valueQuantity = 95 'mg/dL' "mg/dL"