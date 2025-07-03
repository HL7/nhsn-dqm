Instance: procedure-example-ach-ach-pass1-central-line
InstanceOf: QICoreProcedure
Title: "Procedure - Example ACH Pass1 Central Line"
Description: "Procedure - Example ACH Pass1 - Placement procedure"
Usage: #example
* meta.profile = Canonical(QICoreProcedure|6.0.0)
* identifier.use = #usual
* identifier.system = "http://example.org/identifiers/698.8"
* identifier.value = "1000510352"
* status = #completed
// TODO, Verify this is the correct Procedure code, update the code and description as appropriate.
* code = $sct#312052002 "Placement procedure (procedure)"
* subject = Reference(patient-example-ach-ach-pass1)
* subject.display = "Pass1 ACH"
* encounter = Reference(encounter-example-ach-ach-pass1)
* encounter.display = "Hospital Admission"
* performedDateTime = "2024-02-02T18:12:00-05:00"