Instance: medicationrequest-example-hypo-hypo3
InstanceOf: AcuteCareHospitalReportingMedicationRequest
Usage: #example
* identifier.use = #usual
* identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.798"
* identifier.value = "101902997"
* status = #stopped
* intent = #order
* category = $medicationrequest-category#inpatient "Inpatient"
* category.text = "Inpatient"
* medicationReference = Reference(medication-example-hypo-hypo3)
* medicationReference.display = "Insulin glargine (LANTUS) 100 unit/mL injection"
* subject = Reference(patient-example-hypo)
* subject.display = "Hypo, Edadd"
* encounter = Reference(encounter-example-hypo-hypo)
* encounter.display = "Hospital Encounter"
* authoredOn = "2022-08-17T17:06:15Z"
* requester.type = "Practitioner"
* requester.display = "Faculty Physician Um_Cln, MD"
* recorder.type = "Practitioner"
* recorder.display = "Faculty Physician Um_Cln, MD"
* courseOfTherapyType = $medicationrequest-course-of-therapy#continuous "Continuous long term therapy"
* courseOfTherapyType.text = "Continuous long term therapy"
* dosageInstruction.text = "18 units (rounded from 18.2 units = 0.2 units/kg  per DOSE × 91 kg Order-specific weight), Subcutaneous, EVERY MORNING\n**High Alert**\nFirst dose on Thu 8/18/22 at 0900, Until Discontinued"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2022-08-18T13:00:00Z"
* dosageInstruction.timing.repeat.boundsPeriod.end = "2022-08-22T20:10:09Z"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.code.text = "QAM"
* dosageInstruction.asNeededBoolean = false
* dosageInstruction.route = $sct#34206005 "Subcutaneous route"
* dosageInstruction.route.text = "Subcutaneous"
* dosageInstruction.doseAndRate[0].type = $dose-rate-type#calculated "Calculated"
* dosageInstruction.doseAndRate[=].type.text = "calculated"
* dosageInstruction.doseAndRate[=].doseQuantity = 18 'U' "units"
* dosageInstruction.doseAndRate[+].type.text = "Administered Amount"
* dosageInstruction.doseAndRate[=].doseQuantity = 0.18 'mL' "mL"
* dosageInstruction.doseAndRate[+].type = $dose-rate-type#ordered "Ordered"
* dosageInstruction.doseAndRate[=].type.text = "ordered"
* dosageInstruction.doseAndRate[=].doseQuantity = 0.2 'U/kg' "units/kg  per DOSE"
* priorPrescription.display = "insulin glargine (LANTUS SOLOSTAR) 100 unit/mL injection pen"