Instance: observation-example-hypo-lab-sameresultdiffday5
InstanceOf: AcuteCareHospitalReportingLabObservation
Usage: #example

* basedOn.identifier.use = #usual
* basedOn.identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.798"
* basedOn.identifier.value = "101888900"
* basedOn.display = "Perform POC Glucose"
* status = #final
* category[us-core] = $observation-category#laboratory "Laboratory"
* category[us-core].text = "Laboratory"
* code = $loinc#41653-7 "Glucose [Mass/volume] in Capillary blood by Glucometer"
* code.text = "Glucose, POC"
* subject = Reference(patient-example-sameresultdiffday)
* subject.display = "Hypo, Sameresultdiffday"
* encounter = Reference(encounter-example-hypo-sameresultdiffday)
* encounter.display = "Hospital Encounter"
* effectiveDateTime = "2022-08-18T01:00:00Z"
* issued = "2022-08-18T14:55:09Z"
* valueQuantity = 100 'mg/dL' "mg/dL"