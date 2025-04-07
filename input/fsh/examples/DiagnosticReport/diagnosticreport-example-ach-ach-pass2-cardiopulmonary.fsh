Instance: diagnosticreport-example-ach-ach-pass2-cardiopulmonary
InstanceOf: QICoreDiagnosticReportNote
Title: "DiagnosticReport - Example ACH Pass2 Cardiopulmonary"
Description: "DiagnosticReport - Example ACH Pass2 - Cardiovascular stress testing"
Usage: #example
* meta.profile = Canonical(QICoreDiagnosticReportNote|6.0.0)
* status = #final
* category = $loinc#LP29708-2 "Cardiology"
* category.text = "Cardiology"
* code = $sct#76746007 "Cardiovascular stress testing"
* code.text = "Cardiovascular stress testing"
* subject = Reference(patient-example-ach-ach-pass2)
* subject.display = "Pass2 ACH"
* encounter = Reference(encounter-example-ach-ach-pass2-inpatient)
* encounter.display = "Hospital Admission"
* conclusionCode = $sct#710031008 "Inducible ischemia manifest on stress test post myocardial infarction (finding)"
* effectiveDateTime = "2024-03-01T23:14:00-05:00"
* issued = "2024-03-02T08:52:00-05:00"

 
