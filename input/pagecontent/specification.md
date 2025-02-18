This section of the implementation guide (IG) defines the specific conformance requirements for systems wishing to conform to this NHSN dQM Reporting IG. The bulk of it focuses on evaluating facility data against measure criteria and submitting those data to NHSN, though it also provides guidance on privacy, security, and other implementation requirements.

### Pre-reading

Before reading this formal specification, implementers should first familiarize themselves with two other key portions of the specification:

* The [Actors and Use Cases](use_cases.html) page provides context for the intent and general process flow of this formal specification, as well as details on the various actors involved.

### Conventions

This implementation guide (IG) uses specific terminology to flag statements that have relevance for the evaluation of conformance with the guide:

* **SHALL** indicates requirements that must be met to be conformant with the specification.

* **SHOULD** indicates behaviors that are strongly recommended (and which may result in interoperability issues or sub-optimal behavior if not adhered to), but which do not, for this version of the specification, affect the determination of specification conformance.

* **MAY** describes optional behaviors that are free to consider but are not a recommendation for or against adoption.

#### Must Support ###

The following rules regarding Must Support  elements apply to all Profiles in this guide. The Must Support definitions are not inherited from other IGs, even for profiles in this guide derived from another guide.

Sender:

* If the data element is available in the FHIR API/EHR, the data element *SHALL* be provided (either through submission or response to a query) for measure calculation or risk adjustment.
* If the sender does not capture/store the data, the data are not available, or sharing of the data is not authorized, the system **SHOULD NOT** send the element if the element is not marked as mandatory (lower cardinality of 0).

Receiver: 

* The receiver **SHALL** be capable of processing resource instances containing must-support data elements without generating an error or causing the application to fail.
* The receiver **SHALL** be able to process resource instances containing must-support data elements asserting missing information (data absent reason extension).

#### Profiles

This specification makes significant use of [FHIR profiles]({{site.data.fhir.path}}profiling.html) and terminology artifacts to describe the content to be shared as part of measure report submissions.

The full set of profiles defined in this IG can be found by following the links on the [Artifacts](artifacts.html) page.

#### Reporting Scenarios

The following reporting scenarios use the Actors defined on the [Actors and Use Cases](use_cases.html) page.

##### Pull from NHSN

In this scenario, both the dQM Evaluation Engine and the Measure Report Recipient reside within an NHSN controlled environment, and may be the same system. The dQM Evaluation Engine first retrieves the latest FHIR measures and related resources from the Measure Source and extracts the data requirements for each measure. The dQM Evaluation Engine queries the Data Source for data that it will evaluate against a measure and prepares Bundle containing MeasureReport and supporting resources, and then optionally performs pre-qualification (additional FHIR validation checks against measure-specific profiles) before making the data available to NHSN back end systems.

In this scenario the Data Source SHALL have a FHIR API that at a minimum provides read access to all resources required by the measure(s).

![Pull from NHSN](pull-from-nhsn.png){:style="float: none;"}

1. **Retrieve Measure Bundle:** The dQM Evaluation Engine uses an HTTP GET against the Measure Source for an [NHSNMeasureBundle](StructureDefinition-nhsn-measure-bundle.html) containing a [CRMIShareableMeasure](https://hl7.org/fhir/uv/crmi/StructureDefinition-crmi-shareablemeasure.html) and related resources. The exact Bundle(s) to retrieve is determined out of band by the facility and NHSN during onboarding and subsequent discussions. After retrieving the Bundle, the dQM Evaluation Engine parses the contents to determine which resources are needed from the Data Source, then proceeds to step 2.
2. **Query Data Source:** The dQM Evaluation Engine queries the FHIR API of the Data Source (likely a certified EHR in this scenario) using HTTP GET interactions to retrieve the [PatientsOfInterestList](StructureDefinition-poi-list.profile.xml.html) for each Measure retrieved in step 1 (the POI lists in question are determined by the facility and NHSN during onboarding), followed by the resources specified in the Measure(s) for each POI list. The dQM Evaluation Engine then evaluates those data against the Measure(s) and produces MeasureReport resources conforming to [DEQMIndividualMeasureReportProfile](https://hl7.org/fhir/us/davinci-deqm/StructureDefinition-indv-measurereport-deqm.html) for each patient that meets the measure criteria, along with a subject-list MeasureReport conforming to the [DEQMSubjectListMeasureReport](https://hl7.org/fhir/us/davinci-deqm/StructureDefinition-subjectlist-measurereport-deqm.html) profile containing references to all the individual MeasureReport resources. These MeasureReport resources, along with all the patient data references in them, are then placed in a Bundle resource conforming to the [NHSNMeasureReportBundle](StructureDefinition-nhsn-measurereport-bundle.html) profile for submission to NHSN before proceeding to step 3. Note: The Data Source MAY be accessed using a TEFCA compliant exchange through a QHIN, though the exact details of this is out of scope for this IG. 
3. **Submit MeasureReport Bundle:** The dQM Evaluation Engine uses an HTTP POST to submit the [NHSNMeasureReportBundle](StructureDefinition-nhsn-measurereport-bundle.html) to the MeasureReport Recipient. The MeasureReport Recipient validates the Bundle and proceeds to load the data into other NHSN systems (details of such systems are out of scope for this IG).

##### Push to NHSN

In this scenario both the Data Source and dQM Evaluation Engine reside at the reporting facility, and may be the same system (i.e. an EHR that performs it's own internal measure evaluation). The dQM Evaluation Engine first retrieves the latest FHIR measures and related resources from the Measure Source and extracts the data requirements for each measure.  The dQM Evaluation Engine and queries the Data Source for data that it will evaluate against a measure and prepares a Bundle containing MeasureReport and supporting resources, then sends it to the Measure Report Recipient at NHSN. The Measure Report Recipient then optionally performs pre-qualification (additional FHIR validation checks against measure-specific profiles) before making the data available to NHSN back end systems. 

In this scenario the dQM Evaluation Engine SHALL perform a FHIR POST to push the measure report bundle to the Measure Report Recipient.

Since the submission bundles can be quite large, the Measure Report Recipient SHOULD support compression and accept the following header in the POST: 

Content-Encoding: gzip

![Push to NHSN](push-to-nhsn.png){:style="float: none;"}

1. **Retrieve Measure Bundle:** The dQM Evaluation Engine uses an HTTP GET against the Measure Source for an [NHSNMeasureBundle](StructureDefinition-nhsn-measure-bundle.html) containing a [CRMIShareableMeasure](https://hl7.org/fhir/uv/crmi/StructureDefinition-crmi-shareablemeasure.html) and related resources. The exact Bundle(s) to retrieve is determined out of band by the facility and NHSN during onboarding and subsequent discussions. Note: the Measure Source MAY be accessed using a TEFCA compliant exchange through a QHIN, though the exact details of this is out of scope for this IG. After retrieving the Bundle, the dQM Evaluation Engine parses the contents to determine which resources are needed from the Data Source, then proceeds to step 2.
2. **Query Data Source:** The dQM Evaluation Engine uses FHIR or other methods as determined by the facility to retrieve the [PatientsOfInterestList](StructureDefinition-poi-list.profile.xml.html) for each Measure retrieved in step 1 (the POI lists in question are determined by the facility and NHSN during onboarding), followed by the resources specified in the Measure(s) for each POI list. The dQM Evaluation Engine then evaluates those data against the Measure(s) and produces MeasureReport resources conforming to [DEQMIndividualMeasureReportProfile](https://hl7.org/fhir/us/davinci-deqm/StructureDefinition-indv-measurereport-deqm.html) for each patient that meets the measure criteria, along with a subject-list MeasureReport conforming to the [DEQMSubjectListMeasureReport](https://hl7.org/fhir/us/davinci-deqm/StructureDefinition-subjectlist-measurereport-deqm.html) profile containing references to all the individual MeasureReport resources. These MeasureReport resources, along with all the patient data references in them, are then placed in a Bundle resource conforming to the [NHSNMeasureReportBundle](StructureDefinition-nhsn-measurereport-bundle.html) profile for submission to NHSN before proceeding to step 3.
3. **Submit MeasureReport Bundle:** The dQM Evaluation Engine uses an HTTP POST to submit the [NHSNMeasureReportBundle](StructureDefinition-nhsn-measurereport-bundle.html) to the MeasureReport Recipient. Note: the MeasureReport Recipient MAY be accessed using a TEFCA compliant exchange through a QHIN, though the exact details of this is out of scope for this IG. The MeasureReport Recipient validates the Bundle and proceeds to load the data into other NHSN systems (details of such systems are out of scope for this IG).
4. **Forward to NHSN Systems:** The MeasureReport Recipient fowards the validated MeasureReport Bundle content to other back-end NHSN systems (details of such systems are out of scope for this IG).


##### Aggregate and Push to NHSN

In this scenario data for reporting is spread across multiple facilities, and those data must be aggregated before measure evaluation. Participating facilities send their data to the Data Aggregator using whatever format they negotiate (may be FHIR, CVS, or other format), which then acts as the Data Source and dQM Evaluation Engine. The rest of this scenario follows the Push to NHSN scenario described above. Note that as measure data requirements change, facilities reporting to the Data Aggregator may need to update their submissions; this process is a negotiation between the Data Aggregator and other facilities, and the details of this process is out of scope for this specification. 

In this scenario the dQM Evaluation Engine SHALL perform a FHIR POST to push the measure report bundle to the Measure Report Recipient.

Since the submission bundles can be quite large, the Measure Report Recipient SHOULD support compression and accept the following header in the POST: 

Content-Encoding: gzip

![Aggregate and Push to NHSN](aggregate-and-push-to-nhsn.png){:style="float: none;"}

