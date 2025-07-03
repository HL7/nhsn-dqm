Instance: procedure-example-ach-ach-pass3-transfusion
InstanceOf: QICoreProcedure
Title: "Procedure - Example ACH Pass3 Transfusion"
Description: "Procedure - Example ACH Pass3 - Transfusion of red blood cells"
Usage: #example
* meta.profile = Canonical(QICoreProcedure|6.0.0)
* identifier.use = #usual
* identifier.system = "http://example.org/identifiers/698.8"
* identifier.value = "100051035264"
* status = #completed
* code = $sct#116863004 "Transfusion of red blood cells (procedure)"
* subject = Reference(patient-example-ach-ach-pass3)
* subject.display = "Pass3 ACH"
* encounter = Reference(encounter-example-ach-ach-pass3-acute)
* encounter.display = "Critical care visit"
* performedDateTime = "2024-02-02T20:43:00-05:00"
