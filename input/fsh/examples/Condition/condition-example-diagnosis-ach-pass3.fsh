Instance: condition-example-diagnosis-ach-pass3
InstanceOf: USCoreConditionEncounterDiagnosisProfile
Title: "Condition - Example Diagnosis ACH Pass3"
Description: "Condition - Example Diagnosis ACH Pass3 - Encounter Diagnosis: Enterocolitis due to Clostridium difficile"
Usage: #example
* verificationStatus.coding.version = "4.0.0"
* verificationStatus.coding = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* clinicalStatus = $condition-clinical#active "Active"
* category[us-core] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category[us-core].text = "Encounter Diagnosis"
* code.coding[+] = $icd-10-cm#A04.7 "Enterocolitis due to Clostridium difficile"
* code.text = "Enterocolitis due to Clostridium difficile"
* subject = Reference(patient-example-ach-ach-pass3)
* subject.display = "Pass3 ACH"
