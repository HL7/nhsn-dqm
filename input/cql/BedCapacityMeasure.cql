library THSAMeasure version '1.0.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1' called FHIRHelpers

codesystem "LocationPhysicalType": 'http://terminology.hl7.org/CodeSystem/location-physical-type'
codesystem "HealthcareCapacity": 'http://hl7.org/fhir/us/nhsn-dqm/CodeSystem/healthcare-capacity-codes'

valueset "Emergency Department Visit": 'http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.117.1.7.1.292'

code "Bed": 'bd' from "LocationPhysicalType" display 'Bed'
code "HOSP": 'HOSP' from "HealthcareCapacity" display 'Hospital'
code "IRF": 'IRF' from "HealthcareCapacity" display 'Inpatient Rehabilitation'
code "IPF": 'IPF' from "HealthcareCapacity" display 'Inpatient Psychiatric'
code "CHLD": 'CHLD' from "HealthcareCapacity" display 'Children\'s or Pediatric'
code "OTH": 'OTH' from "HealthcareCapacity" display 'Other facility-within-facility or subunit'


parameter "Measurement Period" Interval<DateTime>
    default Interval[@2022-01-01T00:00:00.0, @2022-02-01T00:00:00.0)

context Location

define "Initial Population":
  Location.physicalType ~ "Bed"

define "Denominator":
  "Initial Population"

define "All Beds Occupied Numerator":
  EncounterCheck

define "All Beds Unoccupied Numerator":
  NoEncounterCheck

define "Adult Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where LocationIsHOSP
      and "LocationIsIRF"
      and "LocationIsIPF"
  )

define "Adult Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsIPF"
  )

define "Adult ICU Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
  )

define "Adult ICU Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
  )

define "Adult ICULOC Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIPF"
  )
  

define "Adult ICULOC Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIPF"
  )

define "Adult NonICU Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsOTH"
  )
  
define "Adult NonICU Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsOTH"
  )

define "Adult PCU Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsIPF"
      and "LocationIsOTH"
  )
  
define "Adult PCU Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsIPF"
      and "LocationIsOTH"
  )

define "Adult MTMS Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsOTH"
  )
  
define "Adult MTMS Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsOTH"
  )

define "Adult Obs Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsOTH"
  )
  
define "Adult Obs Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsOTH"
  )

define "Peds Total Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsCHLD"
  )
  
define "Peds Total Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsCHLD"
  )

define "Peds ICU Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsCHLD"
  )
  
define "Peds ICU Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsCHLD"
  )

define "Peds ICULOC Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )
  
define "Peds ICULOC Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )
  
define "Peds NonICU Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsIPF"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )
  
define "Peds NonICU Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsIPF"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )

define "Peds PCU Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsCHLD"
      and "LocationIsOTH"
  )
  
define "Peds PCU Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsCHLD"
      and "LocationIsOTH"
  )

define "Peds MTMS Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )
  
define "Peds MTMS Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )

define "Peds Obs Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )
  
define "Peds Obs Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )

define "Specialty Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsOTH"
  )
  
define "Specialty Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsOTH"
  )

define "Specialty NonCrib Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsOTH"
  )
  
define "Specialty NonCrib Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsOTH"
  )

define "OB Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsIRF"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )
  
define "OB Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsIRF"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )

define "NICU Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsOTH"
  )
  
define "NICU Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsOTH"
  )

define "NICU4 Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsOTH"
  )
  
define "NICU4 Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsOTH"
  )

define "NICU3Plus Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsCHLD"
  )
  
define "NICU3Plus Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsCHLD"
  )

define "NICU3 Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsCHLD"
  )
  
define "NICU3 Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsCHLD"
  )

define "NICU2 Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsCHLD"
  )
  
define "NICU2 Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsCHLD"
  )

define "NICU1 Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )
  
define "NICU1 Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIRF"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )

define "Nursery Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsIRF"
      and "LocationIsCHLD"
  )
  
define "Nursery Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsIRF"
      and "LocationIsCHLD"
  )

define "Adult Psych Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIPF"
      and "LocationIsOTH"
  )
  
define "Adult Psych Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIPF"
      and "LocationIsOTH"
  )

define "Peds Psych Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIPF"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )

define "Peds Psych Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsIPF"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )

define "Rehab Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsIRF"
  )

define "Rehab Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsIRF"
  )

define "Surge Active Total Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )

define "Surge Active Total Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )

define "Surge Inactive Total Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )

define "Surge Inactive Total Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )

define "Surge Active ICU Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsOTH"
  )

define "Surge Active ICU Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsOTH"
  )

define "Surge Inactive ICU Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsOTH"
  )

define "Surge Inactive ICU Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsOTH"
  )

define "Surge Active NonICU Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsCHLD"
  )

define "Surge Active NonICU Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsCHLD"
  )

define "Surge Inactive NonICU Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsCHLD"
  )

define "Surge Inactive NonICU Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsCHLD"
  )

define "Burn Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsOTH"
  )

define "Burn Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsOTH"
  )

define "Negative Pressure Beds Occupied Numerator":
  EncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
  )

define "Negative Pressure Beds Unoccupied Numerator":
  NoEncounterCheck
  and exists(
    Location.type types
    where "LocationIsHOSP"
  )

define "Adult ED Census Numerator":
  exists(
    [Encounter: "Emergency Department Visit"] EDVisit
    where exists(LocationMatch(EDVisit.location))
      and EDVisit.period overlaps "Measurement Period"
    )
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsOTH"
  )

define "Adult ED Admitted Census Numerator":
  exists(
    [Encounter: "Emergency Department Visit"] EDVisit
    where exists(LocationMatch(EDVisit.location))
      and EDVisit.period overlaps "Measurement Period"
      and EDVisit.status in {'arrived', 'triaged', 'in-progress'}
    )
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsOTH"
  )

define "Peds ED Census Numerator":
  exists(
    [Encounter: "Emergency Department Visit"] EDVisit
    where exists(LocationMatch(EDVisit.location))
      and EDVisit.period overlaps "Measurement Period"
    )
  and exists(
    Location.type types
    where "LocationIsCHLD"
  )

define "Peds ED Admitted Census Numerator":
  exists(
    [Encounter: "Emergency Department Visit"] EDVisit
    where exists(LocationMatch(EDVisit.location))
      and EDVisit.period overlaps "Measurement Period"
      and EDVisit.status in {'arrived', 'triaged', 'in-progress'}
    )
  and exists(
    Location.type types
    where "LocationIsCHLD"
  )

define "Total ED Census Numerator":
  exists(
    [Encounter: "Emergency Department Visit"] EDVisit
    where exists(LocationMatch(EDVisit.location))
      and EDVisit.period overlaps "Measurement Period"
    )
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )

define "Total ED Admitted Census Numerator":
  exists(
    [Encounter: "Emergency Department Visit"] EDVisit
    where exists(LocationMatch(EDVisit.location))
      and EDVisit.period overlaps "Measurement Period"
      and EDVisit.status in {'arrived', 'triaged', 'in-progress'}
    )
  and exists(
    Location.type types
    where "LocationIsHOSP"
      and "LocationIsCHLD"
      and "LocationIsOTH"
  )

define "Encounters":
  [Encounter]

define "LocationIsHOSP":
  exists(
    Location.type types
    where types ~ "HOSP"
  )

define "LocationIsIPF":
  exists(
    Location.type types
    where types ~ "IPF"
  )

define "LocationIsIRF":
  exists(
    Location.type types
    where types ~ "IRF"
  )

define "LocationIsCHLD":
  exists(
    Location.type types
    where types ~ "CHLD"
  )

define "LocationIsOTH":
  exists(
    Location.type types
    where types ~ "OTH"
  )

define EncounterCheck:
  exists("Encounters" Encounters
  where exists(LocationMatch(Encounters.location))
    and Encounters.period overlaps "Measurement Period")

define NoEncounterCheck:
  exists("Encounters" Encounters
  where not exists(LocationMatch(Encounters.location))
    and Encounters.period overlaps "Measurement Period")

define function LocationMatch(locations List<FHIR.Encounter.Location>):
  locations l
  where GetLocation(l.location).id = Location.id

define function "GetId"(uri String ):
  Last(Split(uri, '/'))

define function "GetLocation"(reference Reference ):
  singleton from (
    [Location] L where L.id = GetId(reference.reference)
  )