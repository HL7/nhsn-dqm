### System Roles and Use Cases ###
TBD: document use cases for the IG. There will be technical use cases (EHR direct submission, pull and run measure evaluation, etc.) and clinical use case examples (ACH, bed capacity)

#### System Roles ####

This implementation guide defines the following system roles. Note, it is possible for a given system to play multiple roles. For example, and EHR could play both the Patient Data Server and dQM Evaluation Engine roles. Likewise a system residing at NHSN that queries the Patient Data Server, evaluates those data, produces MeasureReport bundles, and validates the result may play both the dQM Evaluation Engine and MeasureReport Recipient roles. 

##### dQM Evaluation Engine #####

##### Patient Data Server (EHR) #####

##### Measure Server #####

A system at NHSN that stores FHIR resources such as Measure, Library, ValueSet, etc. that are used for dQM Reporting. The dQM Evaluation Engine queries the Measure Server for the latest Measure content before querying the Patient Data Server and performing measure evaluation.

##### MeasureReport Recipient #####

A system at NHSN that receives MeasureReport bundles and validates the result against the profiles in this implementation guide, and potentially other measure-specific profiles that are distributed with the measures themselves (this kind of validation is referred to as "pre-qualification" at NHSN).

#### Use Cases ####


##### Acute Care Hospital (ACH) Reporting #####


##### Bed Capacity Reporting #####

