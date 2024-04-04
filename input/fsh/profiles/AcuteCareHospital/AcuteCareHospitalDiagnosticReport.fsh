Profile: AcuteCareHospitalDiagnosticReport
Parent: DiagnosticReport
Id: ach-diagnosticreport
Title: "ACH Event General Diagnostic Report"
Description: "This profile contains Required and Must Support data elements for reporting general diagnostic report information to the NHSN Acute Care Hospital (ACH) Digital Quality Measures."
* ^experimental = true
* ^status = #draft

* basedOn MS
* status MS
* category 1.. MS
* category from report-codes (extensible)
* code MS
* code from report-codes (extensible)
* subject 1.. MS
* encounter MS
* effective[x] MS
* issued MS
* performer MS
* conclusionCode MS
* presentedForm MS

