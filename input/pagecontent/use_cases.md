

### Actors ###

This implementation guide defines the following actors. Note, it is possible for a given system to play the role of multiple actors. For example, and EHR could be both the Patient Data Server and dQM Evaluation Engine when calculating a measure internally. Likewise a system residing at NHSN that queries the Patient Data Server remotely, evaluates those data, produces MeasureReport bundles, and validates the result may be both the dQM Evaluation Engine and MeasureReport Recipient. 

#### dQM Evaluation Engine ####

A system that retrieves data from the Patient Data Server, evaluates those data against one or more measures retrieved from the Measure Server. The resulting MeasureReport bundle and related resources are then sent to the MeasureReport recipient.

#### Patient Data Server (EHR) ####

A system containing patient data that will be evaluated against one or more measures. This may be a FHIR server, an EHR with a FHIR endpoint (facade), or it may be an internal data store when the Patient Data Server and dQM Evaluation Engine actors are played by the same system, such as an EHR that does it's own measure evaluation.

#### Measure Server ####

A system at NHSN that stores FHIR resources such as Measure, Library, ValueSet, etc. that are used for dQM Reporting. The dQM Evaluation Engine queries the Measure Server for the latest Measure content before querying the Patient Data Server and performing measure evaluation.

#### MeasureReport Recipient ####

A system at NHSN that receives MeasureReport bundles from the dQM Evaluation Engine and validates the result against the profiles in this implementation guide, and potentially other measure-specific profiles that are distributed with the measures themselves (this kind of validation is referred to as "pre-qualification" at NHSN).

### Use Cases ###

This implementation guide will serve a wide variety of use cases for NHSN. Currently two example use cases are described: Acute Care Hospital Reporting and Bec Capacity Reporting.

#### Use Case 1: Acute Care Hospital (ACH)
##### Description
The NHSN Acute Care Hospital (ACH) digital quality measure (dQM) data set, allows facilities to report line level patient data electronically to NHSN for the following monthly modules such as: Glycemic Control; Healthcare facility-onset, antibiotic-Treated Clostridioides difficile (C. difficile) Infection (HT-CDI); Hospital-Onset Bacteremia & Fungemia (HOB); Venous Thromboembolism (VTE); Late Onset Sepsis / Meningitis. *Please see Acute Care / Critical Access Hospitals (ACH) | NHSN | CDC for the individual measure protocols.*  

##### Initial Population
The initial population for the ACH dQM data set is defined as all encounters for patients of any age in an Emergency Department (ED), observation, or inpatient location or all encounters for patients of any age with an ED, observation, inpatient, or short stay status during the measurement period.  Once an individual patient meets the population criteria, the line-level data needed to calculate metrics, benchmark and or stratify the individual protocol measures is submitted to NHSN.

##### Additional Use Case Information References
For specific information on the individual NHSN protocols and metrics see: 
[Acute Care / Critical Access Hospitals (ACH) | NHSN | CDC ](https://www.cdc.gov/nhsn/acute-care-hospital/index.html)
[Example ACH Initial Population Library (CQL)](https://build.fhir.org/ig/HL7/nhsn-dqm/Library-NHSNdQMAcuteCareHospitalInitialPopulationLibrary.html)
[Example ACH Measure Library ](https://build.fhir.org/ig/HL7/nhsn-dqm/Measure-NHSNdQMAcuteCareHospitalInitialPopulation.html)

##### Actors Use Case Examples

###### Bundle Submission
- [Full Submission Bundle](https://build.fhir.org/ig/HL7/nhsn-dqm/Bundle-submission-full-example1.html)
- [Submitting Organization](https://build.fhir.org/ig/HL7/nhsn-dqm/Organization-organization-example-submitting-organization.html) 
- [Submitting Device](https://build.fhir.org/ig/HL7/nhsn-dqm/Device-device-example-submitting-device.html) 

###### POI List
- [ACH Patients Of Interest](https://build.fhir.org/ig/HL7/nhsn-dqm/List-list-example-ach-patients-of-interest.html)

###### Subject List
- [ACH Subject List](https://build.fhir.org/ig/HL7/nhsn-dqm/MeasureReport-measurereport-example-ach-subjectlist1.html)

###### Individual Measure Report
- [ACH Individual Measure Report List](https://build.fhir.org/ig/HL7/nhsn-dqm/List-list-example-ach-individual-measurereport-list.html)

##### Clinical Use Case Examples

###### Patient
- [Patient - Example Sameresultdiffday](https://build.fhir.org/ig/HL7/nhsn-dqm/Patient-patient-example-sameresultdiffday.html)

###### Encounter
- [Encounter - Example ACH Pass2 - Inpatient](https://build.fhir.org/ig/HL7/nhsn-dqm/Encounter-encounter-example-ach-ach-pass2-inpatient.html)
- [Encounter - Example ACH Pass2 - Emergency](https://build.fhir.org/ig/HL7/nhsn-dqm/Encounter-encounter-example-ach-ach-pass2-emergency.html)
- [Encounter - Example ACH Pass3 - Short Stay](https://build.fhir.org/ig/HL7/nhsn-dqm/Encounter-encounter-example-ach-ach-pass3-short-stay.html)
- [Encounter - Example ACH Pass3 - Acute](https://build.fhir.org/ig/HL7/nhsn-dqm/Encounter-encounter-example-ach-ach-pass3-acute.html)

###### Condition
- [Condition - Example Diagnosis ACH Pass1 Encounter Diagnosis](https://build.fhir.org/ig/HL7/nhsn-dqm/Condition-condition-example-diagnosis-ach-pass1.html)
- [Condition - Example Diagnosis ACH Pass2 Problem List](https://build.fhir.org/ig/HL7/nhsn-dqm/Condition-condition-example-diagnosis-ach-pass2-problem.html)

###### Coverage
- [Coverage - Example ACH Pass1 Medicaid](https://build.fhir.org/ig/HL7/nhsn-dqm/Coverage-coverage-example-ach-pass1.html)
- [Coverage - Example ACH Pass2 Commercial](https://build.fhir.org/ig/HL7/nhsn-dqm/Coverage-coverage-example-ach-pass2.html)

###### Device
- [Device - Example ACH Pass1 Central Line](https://build.fhir.org/ig/HL7/nhsn-dqm/Device-device-example-ach-ach-pass1-central-line.html)

###### Diagnostic Report
- [DiagnosticReport - Example ACH Pass2 Cardiopulmonary1](https://build.fhir.org/ig/HL7/nhsn-dqm/DiagnosticReport-diagnosticreport-example-ach-ach-pass2-cardiopulmonary.html)
- [DiagnosticReport - Example ACH Pass2 Lab CBC](https://build.fhir.org/ig/HL7/nhsn-dqm/DiagnosticReport-diagnosticreport-example-ach-ach-pass2-lab-cbc.html)

###### Location
- [Location - Example ACH - Emergency](https://build.fhir.org/ig/HL7/nhsn-dqm/Location-location-example-ach-emergency.html)
- [Location - Example ACH - Inpatient](https://build.fhir.org/ig/HL7/nhsn-dqm/Location-location-example-ach-inpatient.html)
- [Location - Example ACH - Nicu](https://build.fhir.org/ig/HL7/nhsn-dqm/Location-location-example-ach-nicu-level-iii.html)

###### Medication
- [Medication - Example Heparin](https://build.fhir.org/ig/HL7/nhsn-dqm/Medication-medication-example-heparin.html)
- [Medication - Example Metformin 1000](https://build.fhir.org/ig/HL7/nhsn-dqm/Medication-medication-example-metformin-1000.html)
- [Medication - Example Vancomycin 15](https://build.fhir.org/ig/HL7/nhsn-dqm/Medication-medication-example-vancomycin-15.html)
- [Medication - Example Insulin Lispro](https://build.fhir.org/ig/HL7/nhsn-dqm/Medication-medication-example-insulin-lispro.html)

###### Medication Administration
- [MedicationAdministration - Example ACH Pass2 Heparin 1](https://build.fhir.org/ig/HL7/nhsn-dqm/MedicationAdministration-medicationadministration-example-ach-pass2-heparin-1.html)
- [MedicationAdministration - Example ACH Pass2 Heparin 2](https://build.fhir.org/ig/HL7/nhsn-dqm/MedicationAdministration-medicationadministration-example-ach-pass2-heparin-2.html)
- [MedicationAdministration - Example ACH Pass2 Insulin Lispro 1](https://build.fhir.org/ig/HL7/nhsn-dqm/MedicationAdministration-medicationadministration-example-ach-pass2-insulin-lispro-1.html)
- [MedicationAdministration - Example ACH Pass2 Insulin Lispro 2](https://build.fhir.org/ig/HL7/nhsn-dqm/MedicationAdministration-medicationadministration-example-ach-pass2-insulin-lispro-2.html)

###### Medication Request
- [MedicationRequest - Example ACH Pass1 Vancomycin](https://build.fhir.org/ig/HL7/nhsn-dqm/MedicationRequest-medicationrequest-example-ach-pass1-vancomycin.html)
- [MedicationRequest - Example ACH Pass2 Metformin](https://build.fhir.org/ig/HL7/nhsn-dqm/MedicationRequest-medicationrequest-example-ach-pass2-metformin.html)

###### Observation
- [Observation - Example ACH Pass1 Blood](https://build.fhir.org/ig/HL7/nhsn-dqm/Observation-observation-example-ach-pass1-blood.html)
- [Observation - Example ACH Pass1 Csf](https://build.fhir.org/ig/HL7/nhsn-dqm/Observation-observation-example-ach-pass1-csf.html)
- [Observation - Example ACH Pass1 Gestational Age](https://build.fhir.org/ig/HL7/nhsn-dqm/Observation-observation-example-ach-pass1-gestational-age.html)
- [Observation - Example ACH Pass1 Vitals Weight](https://build.fhir.org/ig/HL7/nhsn-dqm/Observation-observation-example-ach-pass1-vitals-weight.html)
- [Observation - Example ACH Pass2 Hemo A1C](https://build.fhir.org/ig/HL7/nhsn-dqm/Observation-observation-example-ach-pass2-hemo-a1c.html)
- [Observation - Example ACH Pass3 C. diff](https://build.fhir.org/ig/HL7/nhsn-dqm/Observation-observation-example-ach-pass3-cdiff.html)

###### Procedure
- [Procedure - Example ACH Pass1 Central Line](https://build.fhir.org/ig/HL7/nhsn-dqm/Procedure-procedure-example-ach-ach-pass1-central-line.html)
- [Procedure - Example ACH Pass1 Lumbar](https://build.fhir.org/ig/HL7/nhsn-dqm/Procedure-procedure-example-ach-ach-pass1-lumbar.html)

###### Service Request
- [ServiceRequest - Example ACH Pass1 Blood](https://build.fhir.org/ig/HL7/nhsn-dqm/ServiceRequest-servicerequest-example-ach-ach-pass1-blood.html)
- [ServiceRequest - Example ACH Pass1 CSF](https://build.fhir.org/ig/HL7/nhsn-dqm/ServiceRequest-servicerequest-example-ach-ach-pass1-csf.html)
- [ServiceRequest - Example ACH Pass2 Glucose](https://build.fhir.org/ig/HL7/nhsn-dqm/ServiceRequest-servicerequest-example-ach-ach-pass2-glucose.html)
- [ServiceRequest - Example ACH Pass2 Hemo A1C](https://build.fhir.org/ig/HL7/nhsn-dqm/ServiceRequest-servicerequest-example-ach-ach-pass2-hemo-a1c.html)
- [ServiceRequest - Example ACH Pass3 Cdiff](https://build.fhir.org/ig/HL7/nhsn-dqm/ServiceRequest-servicerequest-example-ach-ach-pass3-cdiff.html)

###### Specimen
- [Specimen - Example ACH Pass1 Blood](https://build.fhir.org/ig/HL7/nhsn-dqm/Specimen-specimen-example-ach-ach-pass1-blood.html)
- [Specimen - Example ACH Pass1 CSF](https://build.fhir.org/ig/HL7/nhsn-dqm/Specimen-specimen-example-ach-ach-pass1-csf.html)
- [Specimen - Example ACH Pass3 Stool](https://build.fhir.org/ig/HL7/nhsn-dqm/Specimen-specimen-example-ach-ach-pass3-stool.html)

#### Use Case 2: Bed Capacity Reporting

##### Description
The NHSN Bed Capacity measure allows for facilities to report real-time hospital bed capacity data electronically to CDC’s National Healthcare Safety Network (NHSN), enabling a jurisdictional capacity datastore and dashboard for viewing real-time occupancy information. The goal of this measure is to strengthen healthcare systems capacity by providing near real time insight into routine operations and especially during public health emergencies.

##### Background
Formally called the NHSN Connectivity Initiative: Hospital Bed Capacity Project, the objective of this measure is to establish a web-based easy-to use interface to be accessed by hospitals and governmental agencies at a state and regional level to coordinate daily, surge and crisis needs.  Since March 2020, the U.S. government has been consistently collecting data from hospitals and states to better understand healthcare system stress, capacity, capabilities, and hospitalizations. The COVID-19 pandemic underscored the Federal needs for data are continuously evolving, and that data modernization must be prioritized to reduce burden and maximize efficiency.

##### Bed Inclusion Criteria
For all bed censuses and counts, the following bed types should be <u>included</u>:
1. All inpatient staffed and unblocked beds
2. Observation beds

##### Bed Exclusion Criteria
For all bed censuses and counts, the following bed types should be <u>excluded</u>:
1.	Virtual beds or locations in the EMR that are not physical spaces (i.e., beds used for interoperative phase of care or in certain operative settings or virtual staging areas for admissions.)
2.	Beds no longer in use, even in case of surge
3.	Blocked beds (i.e., beds blocked due to logistical or maintenance challenges, staffing restrictions, isolation, etc.) 

##### Unit Inclusion Criteria
- ED    Emergency department
- ICU   Intensive care unit
- LOC   Level of care
- MT/MS Medicine telemetry/medicine surgery acute care bed
- NICU  Neonatal intensive care unit
- NP    Negative pressure
- OB    Obstetrics
- OBS   Observation
- PCU   Progressive care unit
- Peds  Pediatric
- PICU  Pediatric intensive care unit
- Psych Psychiatric
- Rehab Rehabilitation

##### Use Case Examples
- [MeasureReport - Children's Hospital Bed Capacity Individual Measure Report](https://build.fhir.org/ig/HL7/nhsn-dqm/MeasureReport-bed-capacity-measurereport-example-chld.html)
- [MeasureReport - Hospital Bed Capacity Individual Measure Report](https://build.fhir.org/ig/HL7/nhsn-dqm/MeasureReport-bed-capacity-measurereport-example-hosp.html)
- [MeasureReport - Inpatient Psychiatric Facility Bed Capacity Individual Measure Report](https://build.fhir.org/ig/HL7/nhsn-dqm/MeasureReport-bed-capacity-measurereport-example-ipf.html)

