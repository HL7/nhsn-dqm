Instance: condition-example-diagnosis-ach-pass2
InstanceOf: USCoreConditionEncounterDiagnosisProfile
Title: "Condition - Example Diagnosis ACH Pass2"
Description: "Condition - Example Diagnosis ACH Pass2 - Encounter Diagnosis: Thrombophlebitis of deep femoral vein"
Usage: #example
* meta.profile = Canonical(USCoreConditionEncounterDiagnosisProfile|6.1.0)
* verificationStatus.coding.version = "4.0.0"
* verificationStatus.coding = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* clinicalStatus = $condition-clinical#active "Active"
* category[us-core] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category[us-core].text = "Encounter Diagnosis"
* code = $sct#1748006 "Thrombophlebitis of deep femoral vein (disorder)"
* code.text = "Thrombophlebitis"
* subject = Reference(patient-example-ach-ach-pass2)
* subject.display = "Pass2 ACH"
