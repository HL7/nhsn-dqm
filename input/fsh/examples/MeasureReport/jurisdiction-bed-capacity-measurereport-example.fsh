Alias: $bed-capacity-code-system = http://hl7.org/fhir/us/nhsn-dqm/CodeSystem/healthcare-capacity-codes

Instance: hosp-location-example-bed-capacity
InstanceOf: QICoreLocation
Title: "Location - Example Bed Capacity Location"
Description: "Location - Example  Bed Capacity Location"
Usage: #inline
* identifier.system = "http://www.example.org/location"
* identifier.value = "123"
* status = #active
* name = "XYZ Hospital"
* type = $bed-capacity-code-system#HOSP "Hospital"


Instance: bed-capacity-measurereport-example-hosp
InstanceOf: DEQMIndividualMeasureReportProfile
Title: "MeasureReport - Hospital Bed Capacity Individual Measure Report"
Description: "MeasureReport - Hospital Bed Capacity Individual Measure Report"
Usage: #example

// * contained.resourceType = "Location"
// * contained.id = "hosp-location-example-bed-capacity"
// * contained.identifier.system = "http://www.example.org/location"
// * contained.identifier.value = "123"
// * contained.name = "XYZ Hospital"
// * contained.type = $bed-capacity-code-system#HOSP "Hospital"

* contained[0] = hosp-location-example-bed-capacity
* status = #complete
* type = #individual
* measure = "http://hl7.org/fhir/us/nhsn-dqm/Measure/BedCapacityMeasure"
// Uncomment the line below when DEQM is updated to allow non-patient subjects in individual reports
// * subject = Reference(hosp-location-example-bed-capacity)
* subject.identifier.system = "http://www.example.org/location"
* subject.identifier.value = "123"
* date = "2023-08-28T07:01:07.563Z"
* reporter = Reference(organization-example-submitting-organization)
* period.start = "2023-08-28T07:01:07.563Z"
* period.end = "2023-08-28T19:01:07.562Z"
* group.population[0].code = $bed-capacity-code-system#AllBedsOccupied
* group.population[=].count = 177
* group.population[+].code = $bed-capacity-code-system#AllBedsUnoccupied
* group.population[=].count = 5
* group.population[+].code = $bed-capacity-code-system#AdultTotalOccupied
* group.population[=].count = 177
* group.population[+].code = $bed-capacity-code-system#AdultTotalUnoccupied
* group.population[=].count = 5
* group.population[+].code = $bed-capacity-code-system#AdultICUOccupied
* group.population[=].count = 32
* group.population[+].code = $bed-capacity-code-system#AdultICUUnoccupied
* group.population[=].count = 2
* group.population[+].code = $bed-capacity-code-system#AdultICU_LOCOccupied
* group.population[=].count = 32
* group.population[+].code = $bed-capacity-code-system#AdultNonICUOccupied
* group.population[=].count = 3
* group.population[+].code = $bed-capacity-code-system#AdultNonICUUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultPCUOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#AdultPCUUnoccupied
* group.population[=].count = 145
* group.population[+].code = $bed-capacity-code-system#AdultMTMSOccupied
* group.population[=].count = 3
* group.population[+].code = $bed-capacity-code-system#AdultMTMSUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#AdultObsOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultObsUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#PedsTotalOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#PedsTotalUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#PedsICUOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#PedsICUUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#PedsICU_LOCOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#PedsNonICUOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#PedsNonICUUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#PedsPCUOccupied
* group.population[=].count = 110
* group.population[+].code = $bed-capacity-code-system#PedsPCUUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#PedsMTMSOccupied
* group.population[=].count = 145
* group.population[+].code = $bed-capacity-code-system#PedsMTMSUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#PedsObsOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#PedsObsUnoccupied
* group.population[=].count = 11
* group.population[+].code = $bed-capacity-code-system#SpecialtyTotalOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#SpecialtyTotalUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#SpecialtyNonCribOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#SpecialtyNonCribUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#OBOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#OBUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#NICUOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICUUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU4Occupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU4Unoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU3PlusOccupied
* group.population[=].count = 18
* group.population[+].code = $bed-capacity-code-system#NICU3PlusUnoccupied
* group.population[=].count = 2
* group.population[+].code = $bed-capacity-code-system#NICU3Occupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU3Unoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU2Occupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU2Unoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU1Occupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU1Unoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NurseryOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NurseryUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#AdultPsychOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#AdultPsychUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#PedsPsychOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#PedsPsychUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#RehabOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#RehabUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeActiveTotalOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeActiveTotalUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeInactiveTotalUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeActiveICUOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeActiveICUUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeInactiveICUUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeActiveNonICUOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeActiveNonICUUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeInactiveNonICUUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#BurnOccupied
* group.population[=].count = 18
* group.population[+].code = $bed-capacity-code-system#BurnUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NegativePressureOccupied
* group.population[=].count = 18
* group.population[+].code = $bed-capacity-code-system#NegativePressureUnoccupied
* group.population[=].count = 1
* group.population[+].code = $bed-capacity-code-system#AdultEDCensus
* group.population[=].count = 2
* group.population[+].code = $bed-capacity-code-system#AdultEDAdmittedCensus
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#PedsEDCensus
* group.population[=].count = 18
* group.population[+].code = $bed-capacity-code-system#PedsEDAdmittedCensus
* group.population[=].count = 1
* group.population[+].code = $bed-capacity-code-system#TotalEDCensus
* group.population[=].count = 412
* group.population[+].code = $bed-capacity-code-system#TotalEDAdmittedCensus
* group.population[=].count = 1921

Instance: bed-capacity-measurereport-example-ipf
InstanceOf: DEQMIndividualMeasureReportProfile
Title: "MeasureReport - Inpatient Psychiatric Facility Bed Capacity Individual Measure Report"
Description: "MeasureReport - Inpatient Psychiatric Facility Bed Capacity Individual Measure Report"
Usage: #example
* contained[0] = hosp-location-example-bed-capacity
* status = #complete
* type = #individual
* measure = "http://hl7.org/fhir/us/nhsn-dqm/Measure/BedCapacityMeasure"
// Uncomment the line below when DEQM is updated to allow non-patient subjects in individual reports
// * subject = Reference(hosp-location-example-bed-capacity)
* subject.identifier.system = "http://www.example.org/location"
* subject.identifier.value = "123"
* date = "2023-08-28T07:01:07.563Z"
* reporter = Reference(organization-example-submitting-organization)
* period.start = "2023-08-28T07:01:07.563Z"
* period.end = "2023-08-28T19:01:07.562Z"
* group.population[0].code = $bed-capacity-code-system#AllBedsOccupied
* group.population[=].count = 91
* group.population[+].code = $bed-capacity-code-system#AllBedsUnoccupied
* group.population[=].count = 16
* group.population[+].code = $bed-capacity-code-system#AdultTotalOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultTotalUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultICUOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultICUUnoccupied
* group.population[=].count = 2
* group.population[+].code = $bed-capacity-code-system#AdultICU_LOCOccupied
* group.population[=].count = 32
* group.population[+].code = $bed-capacity-code-system#AdultNonICUOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultNonICUUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultPCUOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultPCUUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultMTMSOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultMTMSUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultObsOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultObsUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#PedsTotalOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#PedsTotalUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#PedsICUOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#PedsICUUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#PedsICU_LOCOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#PedsNonICUOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#PedsNonICUUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#PedsPCUOccupied
* group.population[=].count = 110
* group.population[+].code = $bed-capacity-code-system#PedsPCUUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#PedsMTMSOccupied
* group.population[=].count = 145
* group.population[+].code = $bed-capacity-code-system#PedsMTMSUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#PedsObsOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#PedsObsUnoccupied
* group.population[=].count = 11
* group.population[+].code = $bed-capacity-code-system#SpecialtyTotalOccupied
* group.population[=].count = 91
* group.population[+].code = $bed-capacity-code-system#SpecialtyTotalUnoccupied
* group.population[=].count = 16
* group.population[+].code = $bed-capacity-code-system#SpecialtyNonCribOccupied
* group.population[=].count = 91
* group.population[+].code = $bed-capacity-code-system#SpecialtyNonCribUnoccupied
* group.population[=].count = 16
* group.population[+].code = $bed-capacity-code-system#OBOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#OBUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#NICUOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICUUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU4Occupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU4Unoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU3PlusOccupied
* group.population[=].count = 18
* group.population[+].code = $bed-capacity-code-system#NICU3PlusUnoccupied
* group.population[=].count = 2
* group.population[+].code = $bed-capacity-code-system#NICU3Occupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU3Unoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU2Occupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU2Unoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU1Occupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU1Unoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NurseryOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NurseryUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#AdultPsychOccupied
* group.population[=].count = 91
* group.population[+].code = $bed-capacity-code-system#AdultPsychUnoccupied
* group.population[=].count = 16
* group.population[+].code = $bed-capacity-code-system#PedsPsychOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#PedsPsychUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#RehabOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#RehabUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeActiveTotalOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeActiveTotalUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeInactiveTotalUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeActiveICUOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeActiveICUUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeInactiveICUUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeActiveNonICUOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeActiveNonICUUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeInactiveNonICUUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#BurnOccupied
* group.population[=].count = 18
* group.population[+].code = $bed-capacity-code-system#BurnUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NegativePressureOccupied
* group.population[=].count = 1
* group.population[+].code = $bed-capacity-code-system#NegativePressureUnoccupied
* group.population[=].count = 1
* group.population[+].code = $bed-capacity-code-system#AdultEDCensus
* group.population[=].count = 29
* group.population[+].code = $bed-capacity-code-system#AdultEDAdmittedCensus
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#PedsEDCensus
* group.population[=].count = 18
* group.population[+].code = $bed-capacity-code-system#PedsEDAdmittedCensus
* group.population[=].count = 1
* group.population[+].code = $bed-capacity-code-system#TotalEDCensus
* group.population[=].count = 29
* group.population[+].code = $bed-capacity-code-system#TotalEDAdmittedCensus
* group.population[=].count = 0

Instance: bed-capacity-measurereport-example-chld
InstanceOf: DEQMIndividualMeasureReportProfile
Title: "MeasureReport - Children's Hospital Bed Capacity Individual Measure Report"
Description: "MeasureReport - Children's Hospital Bed Capacity Individual Measure Report"
Usage: #example
* contained[0] = hosp-location-example-bed-capacity
* status = #complete
* type = #individual
* measure = "http://hl7.org/fhir/us/nhsn-dqm/Measure/BedCapacityMeasure"
// Uncomment the line below when DEQM is updated to allow non-patient subjects in individual reports
// * subject = Reference(hosp-location-example-bed-capacity)
* subject.identifier.system = "http://www.example.org/location"
* subject.identifier.value = "123"
* date = "2023-08-28T07:01:07.563Z"
* reporter = Reference(organization-example-submitting-organization)
* period.start = "2023-08-28T07:01:07.563Z"
* period.end = "2023-08-28T19:01:07.562Z"
* group.population[0].code = $bed-capacity-code-system#AllBedsOccupied
* group.population[=].count = 104
* group.population[+].code = $bed-capacity-code-system#AllBedsUnoccupied
* group.population[=].count = 86
* group.population[+].code = $bed-capacity-code-system#AdultTotalOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultTotalUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultICUOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultICUUnoccupied
* group.population[=].count = 2
* group.population[+].code = $bed-capacity-code-system#AdultICU_LOCOccupied
* group.population[=].count = 32
* group.population[+].code = $bed-capacity-code-system#AdultNonICUOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultNonICUUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultPCUOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultPCUUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultMTMSOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultMTMSUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultObsOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#AdultObsUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#PedsTotalOccupied
* group.population[=].count = 56
* group.population[+].code = $bed-capacity-code-system#PedsTotalUnoccupied
* group.population[=].count = 53
* group.population[+].code = $bed-capacity-code-system#PedsICUOccupied
* group.population[=].count = 12
* group.population[+].code = $bed-capacity-code-system#PedsICUUnoccupied
* group.population[=].count = 12
* group.population[+].code = $bed-capacity-code-system#PedsICU_LOCOccupied
* group.population[=].count = 12
* group.population[+].code = $bed-capacity-code-system#PedsNonICUOccupied
* group.population[=].count = 44
* group.population[+].code = $bed-capacity-code-system#PedsNonICUUnoccupied
* group.population[=].count = 41
* group.population[+].code = $bed-capacity-code-system#PedsPCUOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#PedsPCUUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#PedsMTMSOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#PedsMTMSUnoccupied
* group.population[=].count = 41
* group.population[+].code = $bed-capacity-code-system#PedsObsOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#PedsObsUnoccupied
* group.population[=].count = 11
* group.population[+].code = $bed-capacity-code-system#SpecialtyTotalOccupied
* group.population[=].count = 91
* group.population[+].code = $bed-capacity-code-system#SpecialtyTotalUnoccupied
* group.population[=].count = 16
* group.population[+].code = $bed-capacity-code-system#SpecialtyNonCribOccupied
* group.population[=].count = 91
* group.population[+].code = $bed-capacity-code-system#SpecialtyNonCribUnoccupied
* group.population[=].count = 16
* group.population[+].code = $bed-capacity-code-system#OBOccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#OBUnoccupied
* group.population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group.population[=].count.extension.valueCode = #not-applicable
* group.population[+].code = $bed-capacity-code-system#NICUOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICUUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU4Occupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU4Unoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU3PlusOccupied
* group.population[=].count = 18
* group.population[+].code = $bed-capacity-code-system#NICU3PlusUnoccupied
* group.population[=].count = 2
* group.population[+].code = $bed-capacity-code-system#NICU3Occupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU3Unoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU2Occupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU2Unoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU1Occupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NICU1Unoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NurseryOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NurseryUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#AdultPsychOccupied
* group.population[=].count = 91
* group.population[+].code = $bed-capacity-code-system#AdultPsychUnoccupied
* group.population[=].count = 16
* group.population[+].code = $bed-capacity-code-system#PedsPsychOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#PedsPsychUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#RehabOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#RehabUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeActiveTotalOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeActiveTotalUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeInactiveTotalOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeInactiveTotalUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeActiveICUOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeActiveICUUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeInactiveICUUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeActiveNonICUOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeActiveNonICUUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeInactiveNonICUOccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#SurgeInactiveNonICUUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#BurnOccupied
* group.population[=].count = 18
* group.population[+].code = $bed-capacity-code-system#BurnUnoccupied
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#NegativePressureOccupied
* group.population[=].count = 9
* group.population[+].code = $bed-capacity-code-system#NegativePressureUnoccupied
* group.population[=].count = 1
* group.population[+].code = $bed-capacity-code-system#AdultEDCensus
* group.population[=].count = 29
* group.population[+].code = $bed-capacity-code-system#AdultEDAdmittedCensus
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#PedsEDCensus
* group.population[=].count = 5
* group.population[+].code = $bed-capacity-code-system#PedsEDAdmittedCensus
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#TotalEDCensus
* group.population[=].count = 0
* group.population[+].code = $bed-capacity-code-system#TotalEDAdmittedCensus
* group.population[=].count = 0