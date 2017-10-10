---
uid: HV_9d006053-116c-43cc-9554-e0cda43558cb
title: Genetic SNP result
---

# Genetic SNP result

## Overview

Property|Value
---|---
id|9d006053-116c-43cc-9554-e0cda43558cb
name|Genetic SNP result
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.GeneticSnpResults](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.geneticsnpresults)
- [Microsoft.HealthVault.ItemTypes.GeneticSnpResults](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.geneticsnpresults)

## Details
The SNP data is stored in the other-data section of the object, and must be fetched by specifying HealthItemRecordSections.OtherData. <br /> The format of the other-data section is the HealthVault comma-separated format. <br /> Within the comma-separated data, each SNP is encoded as follows: <br /> [refSNP id],[strand orientation],[result],[assay id],[start position],[end position] <br /> Where: refSNP id: identifier from NCBI dbSNP database. strand orientation: "+" encodes top, "-" encodes bottom. result: the result of the test. assay id: Platform-dependent id. start position: Start position on the chromosome. end position: End position on the chromosome. <br /> Example: rs1891906,-,GT,SNP_C-315533,940106,940107

<a name='genetic-snp-results'></a>

### Root element: genetic-snp-results

Stores a collection of results of a SNP genetic test.

The SNP data is stored in the other-data section of the object, and must be fetched by specifying HealthItemRecordSections.OtherData. <br /> The format of the other-data section is the HealthVault comma-separated format. <br /> Within the comma-separated data, each SNP is encoded as follows: <br /> [refSNP id],[strand orientation],[result],[assay id],[start position],[end position] <br /> Where: refSNP id: identifier from NCBI dbSNP database. strand orientation: "+" encodes top, "-" encodes bottom. result: the result of the test. assay id: Platform-dependent id. start position: Start position on the chromosome. end position: End position on the chromosome. <br /> Example: rs1891906,-,GT,SNP_C-315533,940106,940107

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[approx-date-time](xref:HV_File_dates#approx-date-time)|1|1|The date and time of the test.|
genome-build|string|1|1|The genome build that defines the SNPs.|Example: NCBI Build 36.3
chromosome|string|1|1|The chromosome on which the SNPs are located.|Examples: 1, 22, X, MT
numbering-scheme|[nonNegativeInt](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeInt)|1|1|The numbering scheme used for positions.|0 = 0-based numbering. 1 = 1-based numbering.
ordered-by|[Organization](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#Organization)|0|1|The person or organization that ordered the test.|
test-provider|[Organization](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#Organization)|0|1|The organization that provides SNP test service for the consumer.|This organization typically also provides analysis of the results.
laboratory-name|[Organization](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#Organization)|0|1|The name of the laboratory that performed the test.|
annotation-version|string|0|1|The annotation version associated with this set of results.|
dbSNP-build |string|0|1|The build version of dbSNP used to map the probe set ID on the genome locus.|For example: dbSNP build 113.
platform|string|0|1|The technology platform used to generate these results.|

## Example
[!code-xml[Example](../sample-xml/9d006053-116c-43cc-9554-e0cda43558cb.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/genetic-snp-results.xsd)
[!code-xml[XSD schema](../xsd/genetic-snp-results.xsd)]
