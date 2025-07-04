Instance: servicerequest-example-ach-ach-pass1-blood
InstanceOf: QICoreServiceRequest
Title: "ServiceRequest - Example ACH Pass1 Blood"
Description: "ServiceRequest - Example ACH Pass1 Blood"
Usage: #example
* meta.profile = Canonical(QICoreServiceRequest|6.0.0)
* identifier.use = #usual
* identifier.type = $v2-0203#PLAC "Placer Identifier"
* identifier.type.text = "Placer Identifier"
* identifier.system = "http://example.org/identifiers/798"
* identifier.value = "1019631821"
* status = #completed
* intent = #original-order
* category = $sct#108252007 "Laboratory procedure"
* category.text = "Laboratory procedure"
// TODO, is this really a procedure code or an observation code. Orders should be for procedures. Need to verify and update appropriately.
* code = $loinc#600-7 "Bacteria identified in Blood by Culture"
* code.text = "Bacteria identified in Blood by Culture"
* quantityQuantity.value = 1
* subject = Reference(patient-example-ach-ach-pass1)
* subject.display = "Pass1 ACH"
* encounter = Reference(encounter-example-ach-ach-pass1)
* encounter.display = "Hospital Admission"
* occurrenceTiming.event = "2024-02-02T17:22:00-05:00"
//* occurrenceTiming.repeat.boundsPeriod.start = "2023-01-04T05:00:00Z"
* occurrenceTiming.repeat.count = 1
* occurrenceTiming.code.text = "Once"
* authoredOn = "2024-02-02T17:22:00-05:00"
* specimen = Reference(specimen-example-ach-ach-pass1-blood)