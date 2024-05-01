### Overview
This implementation guide (IG) specifies standards for electronic submission of surveillance data to the Centers for Disease Control and Prevention’s (CDC’s) National Healthcare Safety Network (NHSN). This is part of CDC’s efforts to modernize public health reporting by using Health Level Seven International® (HL7) Fast Healthcare Interoperability Resources® (FHIR) data-exchange standards. This project builds on existing work, including the Quality Measure Implementation Guide and Data Exchange for Quality Measures Implementation Guide. This IG contains a library of FHIR profiles and example digital quality measures (dQMs) for reporting to NHSN. 

Note that reporting dQM data to NHSN requires enrollment in NHSN, signing of NHSN data-use agreements, and completion of the dQM reporting plans, which are part of the NHSN participation process and are not defined by this specification. For an overview of NHSN and full information on NHSN participation requirements, see http://www.cdc.gov/nhsn. Provisions of the Public Health Service Act protect all data reported to NHSN from discovery through the Freedom of Information Act (FOIA). 

### Purpose ###
These specifications define the data-content requirements for submissions to NHSN directly from a facility or through an external dQM-evaluation engine.  
### Background ###
In alignment with CDC’s Data Modernization Initiative, NHSN is implementing automated measures for public health surveillance via digital quality measures (dQMs). These dQMs were created to minimize the burden of reporting; improve the accuracy, quality, and validity of data collected by NHSN; and increase speed and efficiency of public health surveillance.  

FHIR dQMs enable automated, patient-level data reporting, which minimizes long product cycles and provides access to crucial healthcare data. Additionally, facilities can implement FHIR dQMs in various information systems and healthcare settings, and across different electronic health record (EHR) vendors. 

This project transitions NHSN from creating multiple implementation guides, each for a specific purpose, quality measure, or surveillance activity, to using a universal implementation guide driven by open Application Programming Interface (API) standards and a quality-measurement approach. This approach defines the overarching framework based on the existing Quality Measure (QM) and Data Exchange for Quality Measures (DEQM) implementation guides, as well as some baseline profiles, value sets, and other IG elements. Once established, NSHN can work with stakeholders to create dQMs with related value sets, Clinical Quality Language (CQL) libraries, and other artifacts that comply with this framework for specific use cases. This project also focuses on leveraging data compliant with existing EHR FHIR APIs wherever possible, such as US Core. While using QI Core-compatible content is ideal, this project does not currently require QI Core as a minimum baseline for data capture. 

The dQMs are dynamic, executable artifacts that are not a balloted part of this specification. The criteria in compliant measures can therefore be adjusted as needed without waiting for a year-long ballot/publish/implement cycle.  

This project requires coordination between NHSN and other branches of CDC, as well as with other federal partners. 

### Relationship to Other Standards ###
The framework for the HL7 FHIR dQMs reported to NHSN has the following dependencies: 

* HL7 FHIR Release 4: https://hl7.org/fhir/R4/ 
* US Core 6.1.0: https://hl7.org/fhir/us/core/STU6.1/ 
* QI Core 6.0.0: https://hl7.org/fhir/us/qicore/STU6/ 
* Quality Measure IG 4.0.0: http://hl7.org/fhir/us/cqfmeasures/STU4/ 
* Clinical Quality Framework Common FHIR Assets 4.0.1: http://fhir.org/guides/cqf/common/4.0.1/ 
* Data Exchange for Quality Measures (DEQM) 4.0.0: https://hl7.org/fhir/us/davinci-deqm/STU4/ 
* Situational Awareness for Novel Epidemic Response (SANER) 1.0.0: http://hl7.org/fhir/uv/saner/ 

### Audience ###
The audience for this work is all developers who want to enable their software systems to report surveillance data to the NHSN via FHIR dQMs. 

### Scope Considerations ###
This IG defines the standards for reporting the initial population that NHSN needs to calculate NHSN measures or surveillance events. This IG does not define how to operationalize reporting of a specific NHSN measure or event of interest.  

NHSN dQMs define the initial population to calculate the quality measures and send metrics back to the facility through the NHSN application. For example, the initial population could include 1) all encounters with a status or location of Inpatient, Emergency Department, and Observation and 2) the line-level data needed for stratification, benchmarking, and/or risk adjustment. Examples of dQMs that define the initial populations that NHSN needs to calculate measure metrics are the acute-care hospital (ACH) dQM and the automated bed-capacity data-collection dQM. 

### Acknowledgements ###
This implementation guide is a product of the [HL7 International–Public Health Work Group](http://www.hl7.org/Special/committees/pher/).

Content in this implementation guide was produced and developed by Lantana Consulting Group under contract to the Division of Healthcare Quality Promotion (DHQP) in the National Center for Emerging and Zoonotic Infectious Diseases (NCEZID) at CDC.  

Primary Editor | Rick Geimer | Lantana Consulting Group | rick.geimer@lantanagroup.com
Primary Editor | Corey Spears | Lantana Consulting Group | corey.spears@lantanagroup.com
Co-Editor | Andrea Benin 
Chief, Surveillance Branch, DHQP | CDC | aqb4@cdc.gov
Co-Editor | Kristina Betz 
NHSN Measure Development and Validation Unit Lead | CDC | rly7@cdc.gov
Co-Editor | Amrit Kerr 
Project Manager | Lantana Consulting Group | amrit.kerr@lantanangroup.com
Co-Editor | Sheila Abner | CDC | sha8@cdc.gov
Co-Editor | Nadine Shehab | Lantana Consulting Group | ftn0@cdc.gov
Co-Editor | Jennifer Watkins | CACI | nub7@cdc.gov
Co-Editor | Raymond Dantes | CDC | vic5@cdc.gov
Co-Editor | David deRoode | Lantana Consulting Group | david.deroode@lantanagroup.com
Co-Editor | Zabrina Gonzaga | Lantana Consulting Group | zabrina.gonzaga@lantanagroup.com
Co-Editor | Sean McIlvenna | Lantana Consulting Group | sean.mcilvenna@lantanagroup.com



