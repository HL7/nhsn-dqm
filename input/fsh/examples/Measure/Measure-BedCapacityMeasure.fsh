Alias: $measure-scoring = http://terminology.hl7.org/CodeSystem/measure-scoring
Alias: $healthcare-capacity-codes = http://hl7.org/fhir/us/nhsn-dqm/CodeSystem/healthcare-capacity-codes
Alias: $measure-population = http://terminology.hl7.org/CodeSystem/measure-population
Alias: $location-physical-type = http://terminology.hl7.org/CodeSystem/location-physical-type
Alias: $library-type = http://terminology.hl7.org/CodeSystem/library-type

Instance: BedCapacityMeasure
InstanceOf: Measure
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/computable-measure-cqfm"
* contained = bed-capacity-effective-data-requirements
* extension[0].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-softwaresystem"
* extension[=].valueReference = Reference(Device/cqf-tooling)
* extension[+].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis"
* extension[=].valueCode = #boolean
* extension[+].id = "bed-capacity-effective-data-requirements"
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-effectiveDataRequirements"
* extension[=].valueReference = Reference(bed-capacity-effective-data-requirements)
// * extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
// * extension[=].valueCode = #pher
* url = "http://hl7.org/fhir/us/nhsn-dqm/Measure/BedCapacityMeasure"
* version = "1.0.0"
* name = "BedCapacityMeasure"
* title = "NHSN dQM Bed Capacity"
* status = #draft
* experimental = true
* date = "2024-06-25T17:37:47-04:00"
* publisher = "HL7 International / Public Health"
* contact.name = "HL7 International / Public Health"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* description = "NHSN bed capacity example measure"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* library = "http://hl7.org/fhir/us/nhsn-dqm/Library/BedCapacityMeasureLibrary"
* scoring = $measure-scoring#cohort "Cohort"
* group[0].code = $healthcare-capacity-codes#AllBedsOccupied
* group[=].population.id = "d2e4301"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "All Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#AllBedsUnoccupied
* group[=].population.id = "d2e4378"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "All Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#AdultTotalOccupied
* group[=].population.id = "d2e4455"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#AdultTotalUnoccupied
* group[=].population.id = "d2e4533"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#AdultICUOccupied
* group[=].population.id = "d2e4610"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult ICU Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#AdultICUUnoccupied
* group[=].population.id = "d2e4687"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult ICU Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#AdultICU_LOCOccupied
* group[=].population.id = "d2e4764"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult ICULOC Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#AdultNonICUOccupied
* group[=].population.id = "d2e4918"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult NonICU Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#AdultNonICUUnoccupied
* group[=].population.id = "d2e4996"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult NonICU Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#AdultPCUOccupied
* group[=].population.id = "d2e5073"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult PCU Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#AdultPCUUnoccupied
* group[=].population.id = "d2e5150"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult PCU Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#AdultMTMSOccupied
* group[=].population.id = "d2e5227"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult MTMS Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#AdultMTMSUnoccupied
* group[=].population.id = "d2e5304"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult MTMS Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#AdultObsOccupied
* group[=].population.id = "d2e5381"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult Obs Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#AdultObsUnoccupied
* group[=].population.id = "d2e5459"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult Obs Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#PedsTotalOccupied
* group[=].population.id = "d2e5536"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Peds Total Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#PedsTotalUnoccupied
* group[=].population.id = "d2e5613"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Peds Total Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#PedsICUOccupied
* group[=].population.id = "d2e5690"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Peds ICU Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#PedsICUUnoccupied
* group[=].population.id = "d2e5767"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Peds ICU Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#PedsICU_LOCOccupied
* group[=].population.id = "d2e5844"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Peds ICULOC Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#PedsNonICUOccupied
* group[=].population.id = "d2e5999"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Peds NonICU Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#PedsNonICUUnoccupied
* group[=].population.id = "d2e6076"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Peds NonICU Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#PedsPCUOccupied
* group[=].population.id = "d2e6153"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Peds PCU Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#PedsPCUUnoccupied
* group[=].population.id = "d2e6230"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Peds PCU Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#PedsMTMSOccupied
* group[=].population.id = "d2e6307"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Peds MTMS Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#PedsMTMSUnoccupied
* group[=].population.id = "d2e6385"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Peds MTMS Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#PedsObsOccupied
* group[=].population.id = "d2e6462"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Peds Obs Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#PedsObsUnoccupied
* group[=].population.id = "d2e6539"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Peds Obs Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#SpecialtyTotalOccupied
* group[=].population.id = "d2e6616"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Specialty Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#SpecialtyTotalUnoccupied
* group[=].population.id = "d2e6693"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Specialty Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#SpecialtyNonCribOccupied
* group[=].population.id = "d2e6770"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Specialty NonCrib Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#SpecialtyNonCribUnoccupied
* group[=].population.id = "d2e6848"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Specialty NonCrib Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#OBOccupied
* group[=].population.id = "d2e6925"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "OB Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#OBUnoccupied
* group[=].population.id = "d2e7002"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "OB Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#NICUOccupied
* group[=].population.id = "d2e7079"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "NICU Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#NICUUnoccupied
* group[=].population.id = "d2e7156"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "NICU Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#NICU4Occupied
* group[=].population.id = "d2e7233"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "NICU4 Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#NICU4Unoccupied
* group[=].population.id = "d2e7311"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "NICU4 Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#NICU3PlusOccupied
* group[=].population.id = "d2e7388"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "NICU3Plus Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#NICU3PlusUnoccupied
* group[=].population.id = "d2e7465"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "NICU3Plus Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#NICU3Occupied
* group[=].population.id = "d2e7542"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "NICU3 Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#NICU3Unoccupied
* group[=].population.id = "d2e7619"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "NICU3 Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#NICU2Occupied
* group[=].population.id = "d2e7696"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "NICU2 Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#NICU2Unoccupied
* group[=].population.id = "d2e7774"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "NICU2 Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#NICU1Occupied
* group[=].population.id = "d2e7851"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "NICU1 Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#NICU1Unoccupied
* group[=].population.id = "d2e7928"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "NICU1 Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#NurseryOccupied
* group[=].population.id = "d2e8005"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Nursery Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#NurseryUnoccupied
* group[=].population.id = "d2e8082"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Nursery Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#AdultPsychOccupied
* group[=].population.id = "d2e8159"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult Psych Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#AdultPsychUnoccupied
* group[=].population.id = "d2e8237"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult Psych Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#PedsPsychOccupied
* group[=].population.id = "d2e8314"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Peds Psych Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#PedsPsychUnoccupied
* group[=].population.id = "d2e8391"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Peds Psych Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#RehabOccupied
* group[=].population.id = "d2e8468"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Rehab Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#RehabUnoccupied
* group[=].population.id = "d2e8545"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Rehab Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#SurgeActiveTotalOccupied
* group[=].population.id = "d2e8622"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Surge Active Total Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#SurgeActiveTotalUnoccupied
* group[=].population.id = "d2e8700"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Surge Active Total Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#SurgeInactiveTotalOccupied
* group[=].population.id = "d2e8777"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Surge Inactive Total Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#SurgeInactiveTotalUnoccupied
* group[=].population.id = "d2e8854"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Surge Inactive Total Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#SurgeActiveICUOccupied
* group[=].population.id = "d2e8931"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Surge Active ICU Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#SurgeActiveICUUnoccupied
* group[=].population.id = "d2e9008"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Surge Active ICU Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#SurgeInactiveICUUnoccupied
* group[=].population.id = "d2e9163"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Surge Inactive ICU Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#SurgeActiveNonICUOccupied
* group[=].population.id = "d2e9240"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Surge Active NonICU Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#SurgeActiveNonICUUnoccupied
* group[=].population.id = "d2e9317"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Surge Active NonICU Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#SurgeInactiveNonICUOccupied
* group[=].population.id = "d2e9394"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Surge Inactive NonICU Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#SurgeInactiveNonICUUnoccupied
* group[=].population.id = "d2e9471"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Surge Inactive NonICU Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#BurnOccupied
* group[=].population.id = "d2e9548"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Burn Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#BurnUnoccupied
* group[=].population.id = "d2e9626"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Burn Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#NegativePressureOccupied
* group[=].population.id = "d2e9703"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Negative Pressure Beds Occupied Initial Population"
* group[+].code = $healthcare-capacity-codes#NegativePressureUnoccupied
* group[=].population.id = "d2e9780"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Negative Pressure Beds Unoccupied Initial Population"
* group[+].code = $healthcare-capacity-codes#AdultEDCensus
* group[=].population.id = "d2e9857"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult ED Census Initial Population"
* group[+].code = $healthcare-capacity-codes#AdultEDAdmittedCensus
* group[=].population.id = "d2e9934"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult ED Admitted Census Initial Population"
* group[+].code = $healthcare-capacity-codes#PedsEDCensus
* group[=].population.id = "d2e10011"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Peds ED Census Initial Population"
* group[+].code = $healthcare-capacity-codes#PedsEDAdmittedCensus
* group[=].population.id = "d2e10089"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Peds ED Admitted Census Initial Population"
* group[+].code = $healthcare-capacity-codes#TotalEDCensus
* group[=].population.id = "d2e10166"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Total ED Census Initial Population"
* group[+].code = $healthcare-capacity-codes#TotalEDAdmittedCensus
* group[=].population.id = "d2e10243"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Total ED Admitted Census Initial Population"

Instance: bed-capacity-effective-data-requirements
InstanceOf: Library
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-directReferenceCode"
* extension[=].valueCoding = $location-physical-type#bd "Bed"
* extension[+].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-directReferenceCode"
* extension[=].valueCoding = $healthcare-capacity-codes#CHLD "Children's or Pediatric"
* extension[+].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-directReferenceCode"
* extension[=].valueCoding = $healthcare-capacity-codes#IPF "Inpatient Psychiatric"
* extension[+].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-directReferenceCode"
* extension[=].valueCoding = $healthcare-capacity-codes#OTH "Other facility-within-facility or subunit"
* extension[+].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-directReferenceCode"
* extension[=].valueCoding = $healthcare-capacity-codes#HOSP "Hospital"
* extension[+].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-directReferenceCode"
* extension[=].valueCoding = $healthcare-capacity-codes#IRF "Inpatient Rehabilitation"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "IsBedLocation"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"IsBedLocation\":\n  Location.physicalType ~ \"Bed\""
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 0
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Encounters"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Encounters\":\n  [Encounter]"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 1
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "EncounterCheck"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define EncounterCheck:\n  exists(\"Encounters\" Encounters\n  where exists(LocationMatch(Encounters.location))\n    and Encounters.period overlaps \"Measurement Period\")"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 2
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "LocationIsCHLD"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"LocationIsCHLD\":\n  exists(\n    Location.type types\n    where types ~ \"CHLD\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 3
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Peds Total Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Peds Total Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsCHLD\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 4
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "NoEncounterCheck"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define NoEncounterCheck:\n  exists(\"Encounters\" Encounters\n  where not exists(LocationMatch(Encounters.location))\n    and Encounters.period overlaps \"Measurement Period\")"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 5
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "All Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"All Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 6
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Peds ED Census Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Peds ED Census Initial Population\":\n  IsBedLocation\n  and exists(\n    [Encounter: \"Emergency Department Visit\"] EDVisit\n    where exists(LocationMatch(EDVisit.location))\n      and EDVisit.period overlaps \"Measurement Period\"\n    )\n  and exists(\n    Location.type types\n    where \"LocationIsCHLD\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 7
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "LocationIsIPF"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"LocationIsIPF\":\n  exists(\n    Location.type types\n    where types ~ \"IPF\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 8
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "LocationIsOTH"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"LocationIsOTH\":\n  exists(\n    Location.type types\n    where types ~ \"OTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 9
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Adult PCU Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Adult PCU Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsIPF\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 10
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "LocationIsHOSP"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"LocationIsHOSP\":\n  exists(\n    Location.type types\n    where types ~ \"HOSP\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 11
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Peds ICU Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Peds ICU Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsCHLD\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 12
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Negative Pressure Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Negative Pressure Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 13
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Adult PCU Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Adult PCU Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsIPF\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 14
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Peds PCU Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Peds PCU Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 15
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "LocationIsIRF"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"LocationIsIRF\":\n  exists(\n    Location.type types\n    where types ~ \"IRF\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 16
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "OB Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"OB Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsIRF\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 17
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Surge Inactive NonICU Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Surge Inactive NonICU Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsCHLD\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 18
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "NICU3 Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"NICU3 Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsCHLD\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 19
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Peds ICULOC Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Peds ICULOC Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 20
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Surge Inactive Total Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Surge Inactive Total Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 21
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Peds NonICU Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Peds NonICU Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsIPF\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 22
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Peds MTMS Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Peds MTMS Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 23
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Peds NonICU Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Peds NonICU Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsIPF\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 24
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Peds Psych Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Peds Psych Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIPF\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 25
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Surge Inactive Total Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Surge Inactive Total Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 26
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Specialty Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Specialty Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 27
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Surge Active ICU Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Surge Active ICU Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 28
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Adult NonICU Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Adult NonICU Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 29
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Specialty NonCrib Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Specialty NonCrib Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 30
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Peds Psych Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Peds Psych Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIPF\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 31
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Peds ICULOC Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Peds ICULOC Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 32
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Rehab Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Rehab Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsIRF\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 33
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Adult MTMS Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Adult MTMS Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 34
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "NICU3 Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"NICU3 Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsCHLD\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 35
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Adult Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Adult Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsIPF\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 36
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Burn Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Burn Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 37
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Peds ICU Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Peds ICU Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsCHLD\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 38
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "NICU1 Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"NICU1 Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 39
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Negative Pressure Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Negative Pressure Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 40
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Adult ICU Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Adult ICU Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 41
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "NICU4 Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"NICU4 Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 42
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Adult ICULOC Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Adult ICULOC Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIPF\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 43
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Adult Obs Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Adult Obs Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 44
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Adult NonICU Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Adult NonICU Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 45
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Peds Obs Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Peds Obs Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 46
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "NICU Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"NICU Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 47
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "NICU Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"NICU Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 48
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Nursery Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Nursery Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsIRF\"\n      and \"LocationIsCHLD\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 49
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Adult Psych Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Adult Psych Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIPF\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 50
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Adult ED Admitted Census Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Adult ED Admitted Census Initial Population\":\n  IsBedLocation\n  and exists(\n    [Encounter: \"Emergency Department Visit\"] EDVisit\n    where exists(LocationMatch(EDVisit.location))\n      and EDVisit.period overlaps \"Measurement Period\"\n      and EDVisit.status in {'arrived', 'triaged', 'in-progress'}\n    )\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 51
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "NICU3Plus Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"NICU3Plus Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsCHLD\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 52
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Surge Active NonICU Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Surge Active NonICU Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsCHLD\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 53
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Rehab Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Rehab Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsIRF\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 54
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Surge Active Total Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Surge Active Total Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 55
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Specialty NonCrib Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Specialty NonCrib Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 56
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Adult ED Census Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Adult ED Census Initial Population\":\n  IsBedLocation\n  and exists(\n    [Encounter: \"Emergency Department Visit\"] EDVisit\n    where exists(LocationMatch(EDVisit.location))\n      and EDVisit.period overlaps \"Measurement Period\"\n    )\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 57
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "OB Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"OB Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsIRF\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 58
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Peds PCU Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Peds PCU Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 59
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Peds MTMS Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Peds MTMS Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 60
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Total ED Census Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Total ED Census Initial Population\":\n  IsBedLocation\n  and exists(\n    [Encounter: \"Emergency Department Visit\"] EDVisit\n    where exists(LocationMatch(EDVisit.location))\n      and EDVisit.period overlaps \"Measurement Period\"\n    )\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 61
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Burn Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Burn Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 62
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Adult ICULOC Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Adult ICULOC Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIPF\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 63
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Adult Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Adult Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where LocationIsHOSP\n      and \"LocationIsIRF\"\n      and \"LocationIsIPF\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 64
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Surge Inactive ICU Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Surge Inactive ICU Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 65
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Specialty Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Specialty Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 66
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "NICU3Plus Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"NICU3Plus Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsCHLD\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 67
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "NICU1 Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"NICU1 Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 68
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Adult Psych Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Adult Psych Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIPF\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 69
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Adult Obs Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Adult Obs Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 70
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Surge Active Total Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Surge Active Total Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 71
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Surge Active NonICU Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Surge Active NonICU Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsCHLD\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 72
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Surge Inactive NonICU Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Surge Inactive NonICU Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsCHLD\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 73
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Adult ICU Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Adult ICU Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 74
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Adult MTMS Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Adult MTMS Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 75
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Peds Total Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Peds Total Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsCHLD\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 76
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Total ED Admitted Census Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Total ED Admitted Census Initial Population\":\n  IsBedLocation\n  and exists(\n    [Encounter: \"Emergency Department Visit\"] EDVisit\n    where exists(LocationMatch(EDVisit.location))\n      and EDVisit.period overlaps \"Measurement Period\"\n      and EDVisit.status in {'arrived', 'triaged', 'in-progress'}\n    )\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 77
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Nursery Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Nursery Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsIRF\"\n      and \"LocationIsCHLD\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 78
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "NICU4 Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"NICU4 Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 79
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "All Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"All Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 80
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Peds Obs Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Peds Obs Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsCHLD\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 81
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Surge Active ICU Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Surge Active ICU Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 82
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Surge Inactive ICU Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Surge Inactive ICU Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsOTH\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 83
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "NICU2 Beds Unoccupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"NICU2 Beds Unoccupied Initial Population\":\n  IsBedLocation\n  and NoEncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsCHLD\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 84
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "NICU2 Beds Occupied Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"NICU2 Beds Occupied Initial Population\":\n  IsBedLocation\n  and EncounterCheck\n  and exists(\n    Location.type types\n    where \"LocationIsHOSP\"\n      and \"LocationIsIRF\"\n      and \"LocationIsCHLD\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 85
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "Peds ED Admitted Census Initial Population"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define \"Peds ED Admitted Census Initial Population\":\n  IsBedLocation\n  and exists(\n    [Encounter: \"Emergency Department Visit\"] EDVisit\n    where exists(LocationMatch(EDVisit.location))\n      and EDVisit.period overlaps \"Measurement Period\"\n      and EDVisit.status in {'arrived', 'triaged', 'in-progress'}\n    )\n  and exists(\n    Location.type types\n    where \"LocationIsCHLD\"\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 86
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "FHIRHelpers"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "ToConcept"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define function ToConcept(concept FHIR.CodeableConcept):\n    if concept is null then\n        null\n    else\n        System.Concept {\n            codes: concept.coding C return ToCode(C),\n            display: concept.text.value\n        }"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 87
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "LocationMatch"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define function LocationMatch(locations List<FHIR.Encounter.Location>):\n  locations l\n  where GetLocation(l.location).id = Location.id"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 88
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "GetLocation"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define function \"GetLocation\"(reference Reference ):\n  singleton from (\n    [Location] L where L.id = GetId(reference.reference)\n  )"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 89
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "FHIRHelpers"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "ToString"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define function ToString(value string): value.value"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 90
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "BedCapacityMeasure"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "GetId"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define function \"GetId\"(uri String ):\n  Last(Split(uri, '/'))"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 91
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "FHIRHelpers"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "ToInterval"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define function ToInterval(period FHIR.Period):\n    if period is null then\n        null\n    else\n        if period.\"start\" is null then\n            Interval(period.\"start\".value, period.\"end\".value]\n        else\n            Interval[period.\"start\".value, period.\"end\".value]"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 92
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* extension[+].extension[0].url = "libraryName"
* extension[=].extension[=].valueString = "FHIRHelpers"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueString = "ToString"
* extension[=].extension[+].url = "statement"
* extension[=].extension[=].valueString = "define function ToString(value EncounterStatus): value.value"
* extension[=].extension[+].url = "displaySequence"
* extension[=].extension[=].valueInteger = 93
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-logicDefinition"
* name = "EffectiveDataRequirements"
* status = #active
* type = $library-type#module-definition
* relatedArtifact[0].type = #depends-on
* relatedArtifact[=].display = "Library FHIRHelpers"
* relatedArtifact[=].resource = "http://fhir.org/guides/cqf/common/Library/FHIRHelpers"
* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].display = "Code system LocationPhysicalType"
* relatedArtifact[=].resource = "http://terminology.hl7.org/CodeSystem/location-physical-type"
* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].display = "Code system HealthcareCapacity"
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/nhsn-dqm/CodeSystem/healthcare-capacity-codes"
* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].display = "Value set Emergency Department Visit"
* relatedArtifact[=].resource = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.117.1.7.1.292"
* parameter[0].name = #"Measurement Period"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Period
* parameter[+].name = #"Peds Total Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"All Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Peds ED Census Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Adult PCU Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Peds ICU Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Negative Pressure Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Adult PCU Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Peds PCU Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"OB Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Surge Inactive NonICU Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"NICU3 Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Peds ICULOC Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Surge Inactive Total Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Peds NonICU Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Peds MTMS Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Peds NonICU Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Peds Psych Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Surge Inactive Total Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Specialty Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Surge Active ICU Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Adult NonICU Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Specialty NonCrib Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Peds Psych Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Peds ICULOC Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Rehab Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Adult MTMS Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"NICU3 Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Adult Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Burn Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Peds ICU Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"NICU1 Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Negative Pressure Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Adult ICU Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"NICU4 Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Adult ICULOC Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Adult Obs Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Adult NonICU Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Peds Obs Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"NICU Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"NICU Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Nursery Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Adult Psych Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Adult ED Admitted Census Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"NICU3Plus Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Surge Active NonICU Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Rehab Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Surge Active Total Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Specialty NonCrib Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Adult ED Census Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"OB Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Peds PCU Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Peds MTMS Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Total ED Census Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Burn Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Adult ICULOC Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Adult Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Surge Inactive ICU Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Specialty Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"NICU3Plus Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"NICU1 Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Adult Psych Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Adult Obs Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Surge Active Total Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Surge Active NonICU Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Surge Inactive NonICU Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Adult ICU Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Adult MTMS Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Peds Total Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Total ED Admitted Census Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Nursery Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"NICU4 Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"All Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Peds Obs Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Surge Active ICU Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Surge Inactive ICU Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"NICU2 Beds Unoccupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"NICU2 Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"Peds ED Admitted Census Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* dataRequirement[0].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Encounter
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Encounter"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[=].mustSupport = "id"
* dataRequirement[+].type = #Encounter
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Encounter"
* dataRequirement[=].mustSupport[0] = "location"
* dataRequirement[=].mustSupport[+] = "period"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Encounter
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Encounter"
* dataRequirement[=].mustSupport[0] = "location"
* dataRequirement[=].mustSupport[+] = "period"
* dataRequirement[+].type = #Encounter
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Encounter"
* dataRequirement[=].mustSupport[0] = "type"
* dataRequirement[=].mustSupport[+] = "location"
* dataRequirement[=].mustSupport[+] = "period"
* dataRequirement[=].codeFilter.path = "type"
* dataRequirement[=].codeFilter.valueSet = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.117.1.7.1.292"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Encounter
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Encounter"
* dataRequirement[=].mustSupport[0] = "type"
* dataRequirement[=].mustSupport[+] = "location"
* dataRequirement[=].mustSupport[+] = "period"
* dataRequirement[=].mustSupport[+] = "status"
* dataRequirement[=].codeFilter.path = "type"
* dataRequirement[=].codeFilter.valueSet = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.117.1.7.1.292"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Encounter
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Encounter"
* dataRequirement[=].mustSupport[0] = "type"
* dataRequirement[=].mustSupport[+] = "location"
* dataRequirement[=].mustSupport[+] = "period"
* dataRequirement[=].codeFilter.path = "type"
* dataRequirement[=].codeFilter.valueSet = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.117.1.7.1.292"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Encounter
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Encounter"
* dataRequirement[=].mustSupport[0] = "type"
* dataRequirement[=].mustSupport[+] = "location"
* dataRequirement[=].mustSupport[+] = "period"
* dataRequirement[=].codeFilter.path = "type"
* dataRequirement[=].codeFilter.valueSet = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.117.1.7.1.292"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Encounter
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Encounter"
* dataRequirement[=].mustSupport[0] = "type"
* dataRequirement[=].mustSupport[+] = "location"
* dataRequirement[=].mustSupport[+] = "period"
* dataRequirement[=].mustSupport[+] = "status"
* dataRequirement[=].codeFilter.path = "type"
* dataRequirement[=].codeFilter.valueSet = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.117.1.7.1.292"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* dataRequirement[+].type = #Encounter
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Encounter"
* dataRequirement[=].mustSupport[0] = "type"
* dataRequirement[=].mustSupport[+] = "location"
* dataRequirement[=].mustSupport[+] = "period"
* dataRequirement[=].mustSupport[+] = "status"
* dataRequirement[=].codeFilter.path = "type"
* dataRequirement[=].codeFilter.valueSet = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.117.1.7.1.292"
* dataRequirement[+].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"