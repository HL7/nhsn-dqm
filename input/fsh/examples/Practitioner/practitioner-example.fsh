Instance: practitioner-example
InstanceOf: QICorePractitioner
Title: "Practitioner Example"
Description: "An example practitioner"
Usage: #example
* meta.profile = Canonical(QICorePractitioner|6.0.0)
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9941339100"
* name[+].family = "Practitioner"
* name[=].given = "Example"