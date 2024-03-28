Instance: observation-example-hypo-lab-sameresultdiffday1
InstanceOf: AcuteCareHospitalReportingLabObservation
Usage: #example

* status = #final
* category = $observation-category#laboratory "Laboratory"
* category.text = "Laboratory"
* code = $loinc#41653-7 "Glucose [Mass/volume] in Capillary blood by Glucometer"
* code.text = "Glucose, POC"
* subject = Reference(patient-example-sameresultdiffday)
* subject.display = "Hypo, Sameresultdiffday"
* encounter = Reference(encounter-example-hypo-sameresultdiffday)
* encounter.display = "Hospital Encounter"
* effectiveDateTime = "2022-08-17T04:00:00Z"
* issued = "2022-08-18T00:18:49Z"
* valueQuantity = 39 'mg/dL' "mg/dL"