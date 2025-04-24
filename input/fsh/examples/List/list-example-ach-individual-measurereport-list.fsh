Instance: list-example-ach-individual-measurereport-list
InstanceOf: DEQMIndividualMeasureReportList
Title: "List - Example ACH Individual Measure Report List"
Description: "List - Example ACH Individual Measure Report List Example"
Usage: #example
* meta.profile = Canonical(DEQMIndividualMeasureReportList|5.0.0)
* status = #current
* mode = #snapshot
* entry[+].item = Reference(measurereport-example-individual-ach-ach-pass1)
* entry[+].item = Reference(measurereport-example-individual-ach-ach-pass2)
* entry[+].item = Reference(measurereport-example-individual-ach-ach-pass3)