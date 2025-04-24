Instance: NHSNdQMAcuteCareHospitalInitialPopulation
Title: "Acute Care Hospital Initial Population Measure"
Description: "The Acute Care Hospital (ACH) Initial Population includes all encounters for patients of any age in an ED, observation, or inpatient location or all encounters for patients of any age with an ED, observation, inpatient, or short stay status during the measurement period."
InstanceOf: CRMIShareableMeasure
Usage: #example
// * contained = effective-data-requirements
* extension[+].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis"
* extension[=].valueCode = #Encounter
* extension[+].id = "effective-data-requirements"
* extension[=].url = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-effectiveDataRequirements"
* extension[=].valueCanonical = Canonical(effective-data-requirements)
* url = "http://hl7.org/fhir/us/nhsn-dqm/Measure/NHSNdQMAcuteCareHospitalInitialPopulation"
* version = "1.0.0"
* name = "NHSNdQMAcuteCareHospitalInitialPopulation"
* title = "NHSN dQM Acute Care Hospital Initial Population"
* status = #draft
* experimental = false
* date = "2024-02-29T17:44:38-05:00"
* publisher = "Lantana Consulting Group"
* description = "The Acute Care Hospital Initial Population includes all encounters for patients of any age in an ED, observation, or inpatient location or all encounters for patients of any age with an ED, observation, inpatient, or short stay status during the measurement period."
* copyright = "Limited proprietary coding is contained in the Measure specifications for user convenience. Users of proprietary code sets should obtain all necessary licenses from the owners of the code sets."
* relatedArtifact.type = #documentation
* relatedArtifact.display = "https://www.cdc.gov/nhsn/index.html [placeholder for link to protocol on CDC website]"
* relatedArtifact.url = "https://www.cdc.gov/nhsn/index.html"
* relatedArtifact.document.url = "https://www.cdc.gov/nhsn/index.html"
* library = Canonical(NHSNdQMAcuteCareHospitalInitialPopulationLibrary)
* disclaimer = "This performance measure is not a clinical guideline, does not establish a standard of medical care and has not been tested for all potential applications.        THE MEASURES AND SPECIFICATIONS ARE PROVIDED “AS IS” WITHOUT WARRANTY OF ANY KIND.        This measure and specifications are subject to further revisions."
* scoring = $measure-scoring#cohort "Cohort"
* type = $measure-type#outcome "Outcome"
* rationale = "The NHSN Acute Care Hospital dQM allows for facilities to report line level patient data electronically to NHSN for the following modules that are reported monthly: Glycemic Control, Hypoglycemia; Healthcare facility-onset, antibiotic-Treated Clostridioides difficile (C. difficile) Infection (HT-CDI); Hospital-Onset Bacteremia & Fungemia (HOB); Venous Thromboembolism (VTE); Late Onset Sepsis / Meningitis. *Please see [Acute Care / Critical Access Hospitals (ACH) | NHSN | CDC](https://www.cdc.gov/nhsn/acute-care-hospital/index.html) for the individual measure protocols."
* group.population[+].id = "initial-population"
* group.population[=].code = $measure-population#initial-population "Initial Population"
* group.population[=].description = "All encounters for patients of any age in an ED, observation, or inpatient location or all encounters for patients of any age with an ED, observation, inpatient, or short stay status during the measurement period."
* group.population[=].criteria.language = #text/cql-identifier
* group.population[=].criteria.expression = "Initial Population"
* supplementalData[0].id = "sde-condition"
* supplementalData[=].usage = $measure-data-usage#supplemental-data
* supplementalData[=].description = "SDE Condition"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "SDE Condition"
* supplementalData[+].id = "sde-device"
* supplementalData[=].usage = $measure-data-usage#supplemental-data
* supplementalData[=].description = "SDE Device"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "SDE Device"
* supplementalData[+].id = "sde-diagnosticreport-lab"
* supplementalData[=].usage = $measure-data-usage#supplemental-data
* supplementalData[=].description = "SDE DiagnosticReport Lab"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "SDE DiagnosticReport Lab"
* supplementalData[+].id = "sde-diagnosticreport-note"
* supplementalData[=].usage = $measure-data-usage#supplemental-data
* supplementalData[=].description = "SDE DiagnosticReport Note"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "SDE DiagnosticReport Note"
* supplementalData[+].id = "sde-diagnosticreport-others"
* supplementalData[=].usage = $measure-data-usage#supplemental-data
* supplementalData[=].description = "SDE DiagnosticReport Others"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "SDE DiagnosticReport Others"
* supplementalData[+].id = "sde-encounter"
* supplementalData[=].usage = $measure-data-usage#supplemental-data
* supplementalData[=].description = "SDE Encounter"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "SDE Encounter"
* supplementalData[+].id = "sde-location"
* supplementalData[=].usage = $measure-data-usage#supplemental-data
* supplementalData[=].description = "SDE Location"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "SDE Location"
* supplementalData[+].id = "sde-medication-administration"
* supplementalData[=].usage = $measure-data-usage#supplemental-data
* supplementalData[=].description = "SDE Medication Administration"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "SDE Medication Administration"
* supplementalData[+].id = "sde-medication-request"
* supplementalData[=].usage = $measure-data-usage#supplemental-data
* supplementalData[=].description = "SDE Medication Request"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "SDE Medication Request"
* supplementalData[+].id = "sde-medication"
* supplementalData[=].usage = $measure-data-usage#supplemental-data
* supplementalData[=].description = "SDE Medication"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "SDE Medication"
* supplementalData[+].id = "sde-observation-lab-category"
* supplementalData[=].usage = $measure-data-usage#supplemental-data
* supplementalData[=].description = "SDE Observation Lab Category"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "SDE Observation Lab Category"
* supplementalData[+].id = "sde-observation-vital-signs-category"
* supplementalData[=].usage = $measure-data-usage#supplemental-data
* supplementalData[=].description = "SDE Observation Vital Signs Category"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "SDE Observation Vital Signs Category"
* supplementalData[+].id = "sde-observation-category"
* supplementalData[=].usage = $measure-data-usage#supplemental-data
* supplementalData[=].description = "SDE Observation Category"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "SDE Observation Category"
* supplementalData[+].id = "sde-coverage"
* supplementalData[=].usage = $measure-data-usage#supplemental-data
* supplementalData[=].description = "SDE Coverage"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "SDE Coverage"
* supplementalData[+].id = "sde-procedure"
* supplementalData[=].usage = $measure-data-usage#supplemental-data
* supplementalData[=].description = "SDE Procedure"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "SDE Procedure"
* supplementalData[+].id = "sde-specimen"
* supplementalData[=].usage = $measure-data-usage#supplemental-data
* supplementalData[=].description = "SDE Specimen"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "SDE Specimen"
* supplementalData[+].id = "sde-service-request"
* supplementalData[=].usage = $measure-data-usage#supplemental-data
* supplementalData[=].description = "SDE Service Request"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "SDE Service Request"
* supplementalData[+].id = "sde-minimal-patient"
* supplementalData[=].usage = $measure-data-usage#supplemental-data
* supplementalData[=].description = "SDE Minimal Patient"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "SDE Minimal Patient"
