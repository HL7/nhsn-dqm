### Overview

This implementation guide (IG) specifies standards for electronic submission of surveillance data to National Healthcare Safety Network (NHSN) of the Centers for Disease Control and Prevention (CDC). This is part of CDC’s efforts to modernize public health reporting by using Health Level Seven International® (HL7) Fast Healthcare Interoperability Resources® (FHIR) data-exchange standards. This project builds on existing work such as the [Quality Measure Implementation Guide]({{site.data.fhir.ver.cqfm}}) and [Data Exchange for Quality Measures Implementation Guide]({{site.data.fhir.ver.deqm}}) efforts. This IG contains a library of FHIR profiles and example digital quality measures (dQMs) for reporting to NHSN. It is expected that production dQMs from NHSN will eventually be hosted [here](https://www.cdc.gov/nhsn/fhirportal/dqm/ig) (though no content is there at the time of this ballot).

Note that reporting dQM data to NHSN requires enrollment in NHSN, signing of NHSN data-use agreements, and completion of the dQM reporting plans, which are part of the NHSN participation process and are not defined by this specification. For an overview of NHSN and full information on NHSN participation requirements, see  [here](https://www.cdc.gov/nhsn/fhirportal/about.html). Provisions of the Public Health Service Act of 1944 protect all data reported to NHSN from discovery through the Freedom of Information Act (FOIA).

### Purpose ###

This specification defines the general requirements for submissions to NHSN directly from a facility or through an external dQM Evaluation Engine. 

### Background ###

In alignment with CDC’s Data Modernization Initiative, NHSN is implementing automated measures for public health surveillance via digital quality measures (dQMs). These dQMs were created to minimize the burden of reporting; improve the accuracy, quality, and validity of data collected by NHSN; and increase speed and efficiency of public health surveillance. 

Specifications in this IG are a transition from static IGs for specific purposes, and onto a quality measure-driven approach. Specifications in this IG define the overarching framework based on the existing Quality Measure (QM) and Data Exchange for Quality Measures (DEQM) implementation guides and some baseline profiles, and value sets for NHSN. Once established, NSHN can then create dQMs with related value sets, Clinical Quality Language (CQL) libraries, and other artifacts that comply with this framework for specific use cases.

The dQMs are dynamic, executable artifacts that are not a balloted part of this specification (though this IG does contain example dQMs). Thus, the criteria in compliant measures can be adjusted as needed while minimizing ballot/publish/implement cycle. A separate IG will define the NHSN dQMs data requirements and will be hosted by NHSN.

Also, this project focuses on leveraging data compliant with existing EHR FHIR Application Programming Interfaces (APIs) wherever possible, such as US Core. While it is hoped that QI Core compatible content will become widely available from EHR FHIR APIs, this project does not currently require QI Core as a minimum baseline for data capture.

This project will require coordination between NHSN and other branches of CDC, along with CMS.

### Audience ###

The audience for this work is all developers who want to enable their software systems to report surveillance data to the NHSN via FHIR dQMs.

### Design Considerations ###

This IG defines the standard framework for reporting data to NHSN using a dQM with an initial population which may include all inpatient, emergency department, and observation encounters and line-level data that could be used for stratification, benchmarking and/or risk adjustment. Situational awareness data such as <!--bed capacity, -->PPE and disease/condition reporting are also in scope, which may or may not include patient identifiable data. This IG is not intended to define how to operationalize implementing reporting a specific NHSN dQM.

However, two example measures are provided in this IG: an acute care hospital (ACH) dQM and an automated bed capacity data collection measure. The ACH dQM defines the population of interest as all encounters with an inpatient, ED, or Observation status or an inpatient, ED, or Observation location. <!--The bed-capacity data collection dQM defines the fields necessary for reporting such as AllBedsOccupied, AdultTotalOccupied, etc.-->

### Relationship to Other Standards ###

The framework for the HL7 FHIR dQMs reported to NHSN has the following dependencies: 

{% include dependency-table.xhtml %}

### Acknowledgements ###

This implementation guide is a product of the [HL7 International–Public Health Work Group](http://www.hl7.org/Special/committees/pher/).

Content in this implementation guide was produced and developed by Lantana Consulting Group under contract to the Division of Healthcare Quality Promotion (DHQP) in the National Center for Emerging and Zoonotic Infectious Diseases (NCEZID) at CDC.  

Primary Editor | Rick Geimer | Lantana Consulting Group | rick.geimer@lantanagroup.com
Primary Editor | Corey Spears | Lantana Consulting Group | corey.spears@lantanagroup.com
Co-Editor | Andrea Benin | Chief, Surveillance Branch, DHQP, CDC | aqb4@cdc.gov
Co-Editor | Kristina Betz | NHSN Measure Development and Validation Unit Lead, CDC | rly7@cdc.gov
Co-Editor | Amrit Kerr | Project Manager, Lantana Consulting Group | amrit.kerr@lantanangroup.com
Co-Editor | Sheila Abner | CDC | sha8@cdc.gov
Co-Editor | Nadine Shehab | Lantana Consulting Group | ftn0@cdc.gov
Co-Editor | Jennifer Watkins | CACI | nub7@cdc.gov
Co-Editor | Raymond Dantes | CDC | vic5@cdc.gov
Co-Editor | David deRoode | Lantana Consulting Group | david.deroode@lantanagroup.com
Co-Editor | Zabrina Gonzaga | Lantana Consulting Group | zabrina.gonzaga@lantanagroup.com
Co-Editor | Sean McIlvenna | Lantana Consulting Group | sean.mcilvenna@lantanagroup.com
Co-Editor | Shanai Thornton | Lantana Consulting Group | shanai.thornton@lantanagroup.com



