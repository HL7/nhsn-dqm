// This file handles Invariants enforcing special terminology rules including code systems and a choice of bindings across elements or resources

Invariant: encounter-ach-initial-population
Description: "Encounter: (class must be from ACH encounter class) or (type from 'Encounter Inpatient', 'Emergency Department Visit', or 'Observation Services') or (Encounter location type from 'Inpatient, Emergency, and Observation Locations')"
Severity: #error
Expression: "class.memberOf('http://hl7.org/fhir/us/nhsn-dqm/ValueSet/ach-encounter-class').exists() or type.where(coding.memberOf('http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.666.5.307')).exists() or type.where(coding.memberOf('http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.117.1.7.1.292')).exists() or type.where(coding.memberOf('http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1111.143')).exists() or where(location.location.resolve().type.where(coding.memberOf('http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1046.265')).exists())"

Invariant: medication-coding-from-rxnorm
Description: "Medication: code must contains a RxNorm coding"
Severity: #error
Expression: "code.where(coding.system='http://www.nlm.nih.gov/research/umls/rxnorm').exists()"

Invariant: observation-coding-from-loinc
Description: "Observation: code must contains a LOINC coding"
Severity: #error
Expression: "code.where(coding.system='http://loinc.org').exists()"

Invariant: Condition-coding-from-common-codesystems
Description: "Condition: code must contains a SNOMED CT, ICD-10-CM, or ICD-9-CM coding"
Severity: #error
Expression: "code.coding.where(system='http://snomed.info/sct').exists() or code.coding.where(system='http://hl7.org/fhir/sid/icd-9-cm').exists() or code.coding.where(system='http://hl7.org/fhir/sid/icd-10-cm').exists()"
