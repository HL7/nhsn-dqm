

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

#### Acute Care Hospital (ACH) Reporting ####

TBD

#### Bed Capacity Reporting ####

TBD