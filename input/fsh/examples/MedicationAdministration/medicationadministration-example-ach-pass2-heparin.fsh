Instance: medicationadministration-example-ach-pass2-heparin-1
InstanceOf: QICoreMedicationAdministration
Title: "MedicationAdministration - Example ACH Pass2 Heparin 1"
Description: "MedicationAdministration - Example ACH Pass2 - heparin sodium, 0.5 ML, porcine 10000 UNT/ML Prefilled Syringe - First Encounter Administration"
Usage: #example
* meta.profile = Canonical(QICoreMedicationAdministration|6.0.0)
* identifier.use = #usual
* identifier.system = "http://example.org/identifiers/798"
* identifier.value = "101888895"
* status = #completed
* category = $medicationrequest-category#inpatient "Inpatient"
* category.text = "Inpatient Medication"
* medicationReference = Reference(medication-example-heparin)
* medicationReference.display = "0.5 ML heparin sodium, porcine 10000 UNT/ML Prefilled Syringe"
* subject = Reference(patient-example-ach-ach-pass2)
* subject.display = "Pass2 ACH"
* context = Reference(encounter-example-ach-ach-pass2-inpatient)
* context.display = "Hospital Admission"
* effectiveDateTime = "2024-02-01T12:22:00-05:00"
* request = Reference(medicationrequest-example-ach-pass2-heparin)
//* recorder.display = "Patient Identified"
* dosage.text = "0.5 mL"
* dosage.site = $sct#1255295007 "Structure of blood vessel of left upper arm (body structure)"
* dosage.route = $sct#47625008 "Intravenous route"
* dosage.route.text = "IV"
* dosage.dose = 5000 'uL' "uL"


Instance: medicationadministration-example-ach-pass2-heparin-2
InstanceOf: QICoreMedicationAdministration
Title: "MedicationAdministration - Example ACH Pass2 Heparin 2"
Description: "MedicationAdministration - Example ACH Pass2 - heparin sodium, 0.5 ML, porcine 10000 UNT/ML Prefilled Syringe - Second Encounter Administration"
Usage: #example
* meta.profile = Canonical(QICoreMedicationAdministration|6.0.0)
* identifier.use = #usual
* identifier.system = "http://example.org/identifiers/798"
* identifier.value = "101888895"
* status = #completed
* category = $medicationrequest-category#inpatient "Inpatient"
* category.text = "Inpatient Medication"
* medicationReference = Reference(medication-example-heparin)
* medicationReference.display = "0.5 ML heparin sodium, porcine 10000 UNT/ML Prefilled Syringe"
* subject = Reference(patient-example-ach-ach-pass2)
* subject.display = "Pass2 ACH"
* context = Reference(encounter-example-ach-ach-pass2-inpatient)
* context.display = "Hospital Admission"
* effectiveDateTime = "2024-02-02T13:26:00-05:00"
* request = Reference(medicationrequest-example-ach-pass2-heparin)
//* recorder.display = "Patient Identified"
* dosage.text = "0.5 mL"
* dosage.site = $sct#1255295007 "Structure of blood vessel of left upper arm (body structure)"
* dosage.route = $sct#47625008 "Intravenous route"
* dosage.route.text = "IV"
* dosage.dose = 5000 'uL' "uL"
