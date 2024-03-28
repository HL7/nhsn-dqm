Instance: list-example-individual-measurereport-list
InstanceOf: IndividualMeasureReportList
Usage: #example
* status = #current
* mode = #snapshot
* entry[0].item = Reference(measurereport-example-individual-measurereport-sameresultdiffday)
* entry[+].item = Reference(MeasureReport/measurereport-example-individual-measurereport-hypo)