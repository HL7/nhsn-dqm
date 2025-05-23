Instance: condition-example-diagnosis-ach-pass2-problem
InstanceOf: USCoreConditionProblemsHealthConcernsProfile
Title: "Condition - Example Diagnosis ACH Pass2 Problem"
Description: "Condition - Example Diagnosis ACH Pass2 - Problem List: Type 2 diabetes mellitus without complications"
Usage: #example
* meta.profile = Canonical(USCoreConditionProblemsHealthConcernsProfile|6.1.0)
* verificationStatus.coding.version = "4.0.0"
* verificationStatus.coding = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* clinicalStatus = $condition-clinical#active "Active"
* category[us-core] = $condition-category#problem-list-item "Problem List Item"
* category[us-core].text = "Problem List Item"
* code.coding[+] = $sct#73211009 "Diabetes mellitus (disorder)"
* code.coding[+] = $icd-10-cm#E11.9 "Type 2 diabetes mellitus without complications"
* code.text = "Diabetes mellitus without complication"
* subject = Reference(patient-example-ach-ach-pass2)
* subject.display = "Pass2 ACH"
