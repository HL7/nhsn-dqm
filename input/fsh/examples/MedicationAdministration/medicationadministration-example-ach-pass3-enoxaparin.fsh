Instance: medicationadministration-example-ach-pass3-enoxaparin
InstanceOf: QICoreMedicationAdministrationNotDone
Title: "MedicationAdministration - Example ACH Pass3 Enoxaparin"
Description: "MedicationAdministration - Example ACH Pass3 - Enoxaparin sodium, 0.4 ML, 100 MG/ML Prefilled Syringe"
Usage: #example
* meta.profile = Canonical(QICoreMedicationAdministrationNotDone|6.0.0)
* extension[0].url = "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-recorded"
* extension[=].valueDateTime = "2024-02-02T21:04:00-05:00"
* identifier.use = #usual
* identifier.system = "http://example.org/identifiers/798"
* identifier.value = "101888833"
* status = #not-done
* statusReason = $sct#182903008 "Drug declined by patient - reason unknown (situation)"
* category = $medicationrequest-category#inpatient "Inpatient"
* category.text = "Inpatient Medication"
// * medicationReference = Reference(medication-example-enoxaparin)
// * medicationReference.display = "0.4 ML enoxaparin sodium 100 MG/ML Prefilled Syringe"
* medicationCodeableConcept.coding[+] = $rxnorm#854235 "0.4 ML enoxaparin sodium 100 MG/ML Prefilled Syringe"
* medicationCodeableConcept.text = "Enoxaparin sodium, 0.4 ML,  100 MG/ML Prefilled Syringe"
* subject = Reference(patient-example-ach-ach-pass3)
* subject.display = "Pass2 ACH"
* context = Reference(encounter-example-ach-ach-pass3-acute)
* context.display = "Critical care visit"
* effectiveDateTime = "2024-02-02T21:04:00-05:00"
* request = Reference(medicationrequest-example-ach-pass3-enoxaparin)
//* recorder.display = "Patient Identified"
* dosage.text = "0.4ml subcutaneous once daily in abdomen"
* dosage.site = $sct#42972002 "Subcutaneous tissue structure of anterior abdominal wall (body structure)"
* dosage.route = $sct#26643006 "Oral Use"
* dosage.route.text = "Oral"
* dosage.dose = 4000 'uL' "uL"