Instance: medicationadministration-example-ach-pass2-insulin-lispro-1
InstanceOf: QICoreMedicationAdministration
Title: "MedicationAdministration - Example ACH Pass2 Insulin Lispro 1"
Description: "MedicationAdministration - Example ACH Pass2 - Insulin Lispro - First Encounter Administration"
Usage: #example
* meta.profile = Canonical(QICoreMedicationAdministration|6.0.0)
* identifier.use = #usual
* identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.798"
* identifier.value = "1018888942"
* status = #completed
* category = $medicationrequest-category#inpatient "Inpatient"
* category.text = "Inpatient Medication"
* medicationReference = Reference(medication-example-insulin-lispro)
* medicationReference.display = "Insulin Lispro"
* subject = Reference(patient-example-ach-ach-pass2)
* subject.display = "Pass2 ACH"
* context = Reference(encounter-example-ach-ach-pass2-inpatient)
* context.display = "Hospital Admission"
* effectiveDateTime = "2024-02-01T12:00:00-05:00"
* request = Reference(medicationrequest-example-ach-pass2-insulin-lispro)
//* recorder.display = "Patient Identified"
* dosage.text = "Give 5 units before breakfast"
* dosage.site = $sct#1255295007 "Structure of blood vessel of left upper arm (body structure)"
* dosage.route = $sct#47625008 "Intravenous route"
* dosage.route.text = "IV"
* dosage.dose.value = 5


Instance: medicationadministration-example-ach-pass2-insulin-lispro-2
InstanceOf: QICoreMedicationAdministration
Title: "MedicationAdministration - Example ACH Pass2 Insulin Lispro 2"
Description: "MedicationAdministration - Example ACH Pass2 - Insulin Lispro - Second Encounter Administration"
Usage: #example
* meta.profile = Canonical(QICoreMedicationAdministration|6.0.0)
* identifier.use = #usual
* identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.798"
* identifier.value = "1018888943"
* status = #completed
* category = $medicationrequest-category#inpatient "Inpatient"
* category.text = "Inpatient Medication"
* medicationReference = Reference(medication-example-insulin-lispro)
* medicationReference.display = "Insulin Lispro"
* subject = Reference(patient-example-ach-ach-pass2)
* subject.display = "Pass2 ACH"
* context = Reference(encounter-example-ach-ach-pass2-inpatient)
* context.display = "Hospital Admission"
* effectiveDateTime = "2024-02-01T19:00:00-05:00"
* request = Reference(medicationrequest-example-ach-pass2-insulin-lispro)
//* recorder.display = "Patient Identified"
* dosage.text = "Give 5 units before dinner"
* dosage.site = $sct#1255295007 "Structure of blood vessel of left upper arm (body structure)"
* dosage.route = $sct#47625008 "Intravenous route"
* dosage.route.text = "IV"
* dosage.dose.value = 4


Instance: medicationadministration-example-ach-pass2-insulin-lispro-3
InstanceOf: QICoreMedicationAdministration
Title: "MedicationAdministration - Example ACH Pass2 Insulin Lispro 3"
Description: "MedicationAdministration - Example ACH Pass2 - Insulin Lispro - Third Encounter Administration"
Usage: #example
* meta.profile = Canonical(QICoreMedicationAdministration|6.0.0)
* identifier.use = #usual
* identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.798"
* identifier.value = "1018888944"
* status = #completed
* category = $medicationrequest-category#inpatient "Inpatient"
* category.text = "Inpatient Medication"
* medicationReference = Reference(medication-example-insulin-lispro)
* medicationReference.display = "Insulin Lispro"
* subject = Reference(patient-example-ach-ach-pass2)
* subject.display = "Pass2 ACH"
* context = Reference(encounter-example-ach-ach-pass2-inpatient)
* context.display = "Hospital Admission"
* effectiveDateTime = "2024-02-02T07:00:00-05:00"
* request = Reference(medicationrequest-example-ach-pass2-insulin-lispro)
//* recorder.display = "Patient Identified"
* dosage.text = "Give 5 units before breakfast"
* dosage.site = $sct#1255295007 "Structure of blood vessel of left upper arm (body structure)"
* dosage.route = $sct#47625008 "Intravenous route"
* dosage.route.text = "IV"
* dosage.dose.value = 5


Instance: medicationadministration-example-ach-pass2-insulin-lispro-4
InstanceOf: QICoreMedicationAdministration
Title: "MedicationAdministration - Example ACH Pass2 Insulin Lispro 4"
Description: "MedicationAdministration - Example ACH Pass2 Insulin Lispro 4"
Usage: #example
* meta.profile = Canonical(QICoreMedicationAdministration|6.0.0)
* identifier.use = #usual
* identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.798"
* identifier.value = "1018888945"
* status = #completed
* category = $medicationrequest-category#inpatient "Inpatient"
* category.text = "Inpatient Medication"
* medicationReference = Reference(medication-example-insulin-lispro)
* medicationReference.display = "Insulin Lispro"
* subject = Reference(patient-example-ach-ach-pass2)
* subject.display = "Pass2 ACH"
* context = Reference(encounter-example-ach-ach-pass2-inpatient)
* context.display = "Hospital Admission"
* effectiveDateTime = "2024-02-02T15:00:00-05:00"
* request = Reference(medicationrequest-example-ach-pass2-insulin-lispro)
//* recorder.display = "Patient Identified"
* dosage.text = "Give 5 units before dinner"
* dosage.site = $sct#1255295007 "Structure of blood vessel of left upper arm (body structure)"
* dosage.route = $sct#47625008 "Intravenous route"
* dosage.route.text = "IV"
* dosage.dose.value = 4


