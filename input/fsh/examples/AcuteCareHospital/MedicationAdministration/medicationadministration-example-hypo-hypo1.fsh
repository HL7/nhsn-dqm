Instance: medicationadministration-example-hypo-hypo1
InstanceOf: AcuteCareHospitalReportingMedicationAdministration
Usage: #example
* status = #completed
* medicationReference = Reference(medication-example-hypo-hypo3)
* medicationReference.display = "Insulin glargine (LANTUS) 100 unit/mL injection"
* subject = Reference(patient-example-hypo)
* subject.display = "Hypo, Edadd"
* effectivePeriod.start = "2022-08-18T13:00:00Z"
* effectivePeriod.end = "2022-08-22T20:10:09Z"
* performer.actor.display = "Patrick Pump"
* request = Reference(medicationrequest-example-hypo-hypo3)
* dosage.text = "18 Units SC before breakfast"
* dosage.route = $sct#263887005 "Subcutaneous (qualifier value)"
* dosage.dose = 18 'U' "U"