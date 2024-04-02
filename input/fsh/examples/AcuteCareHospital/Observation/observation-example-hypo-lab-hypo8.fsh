Instance: observation-example-hypo-lab-hypo8
InstanceOf: AcuteCareHospitalReportingLabObservation
Usage: #example

* basedOn.identifier.use = #usual
* basedOn.identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.798"
* basedOn.identifier.value = "101889052"
* basedOn.display = "Perform POC Glucose"
* status = #final
* category[us-core] = $observation-category#laboratory "Laboratory"
* category[us-core].text = "Laboratory"
* code = $loinc#41653-7 "Glucose [Mass/volume] in Capillary blood by Glucometer"
* code.text = "Glucose, POC"
* subject = Reference(patient-example-hypo)
* subject.display = "Hypo, Edadd"
* encounter = Reference(encounter-example-hypo-hypo)
* encounter.display = "Hospital Encounter"
* effectiveDateTime = "2022-08-17T16:29:29Z"
* issued = "2022-08-17T16:29:47Z"
* valueQuantity = 385 'mg/dL' "mg/dL"