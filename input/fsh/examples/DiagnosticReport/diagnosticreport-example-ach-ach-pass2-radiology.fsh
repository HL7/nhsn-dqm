Instance: diagnosticreport-example-ach-ach-pass2-radiology
InstanceOf: QICoreDiagnosticReportNote
Title: "DiagnosticReport - Example ACH Pass2 Radiology"
Description: "DiagnosticReport - Example ACH Pass2 - Ultrasonography of right lower limb"
Usage: #example
* meta.profile = Canonical(QICoreDiagnosticReportNote|6.0.0)
* status = #final
* category = $loinc#LP29684-5 "Radiology"
* category.text = "Radiology"
* code = $sct#14331000087103 "Doppler ultrasonography of vascular structure of right lower limb (procedure)"
* code.text = "ultrasonography of right lower limb"
* subject = Reference(patient-example-ach-ach-pass2)
* subject.display = "Pass2 ACH"
* encounter = Reference(encounter-example-ach-ach-pass2-inpatient)
* encounter.display = "Hospital Admission"
* conclusionCode = $sct#128053003 "Deep venous thrombosis (disorder)"
* effectiveDateTime = "2024-02-01T23:14:00-05:00"
* issued = "2024-02-02T08:52:00-05:00"


