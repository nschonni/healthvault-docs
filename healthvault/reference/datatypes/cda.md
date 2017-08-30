---
uid: HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf
title: Clinical Document Architecture (CDA)
---

# Clinical Document Architecture (CDA)

## Overview

Property|Value
---|---
id|1ed1cba6-9530-44a3-b7b5-e8219690ebcf
name|Clinical Document Architecture (CDA)
immutable|True
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## Details

<a name='ClinicalDocument'></a>

### Root element: ClinicalDocument
 Type: POCD_MT000040.ClinicalDocument

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ANY'></a>
>
> ### ANY
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='BL'></a>
>
> ### BL
>
> ### Extension
>
> Base type: [ANY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ANY)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> value|[bl](#bl)|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ANYNonNull'></a>
>
> ### ANYNonNull
>
> ### Restriction
>
> Base type: [ANY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ANY)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|prohibited|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='BN'></a>
>
> ### BN
>
> ### Extension
>
> Base type: [ANYNonNull](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ANYNonNull)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> value|[bn](#bn)|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='BIN'></a>
>
> ### BIN
>
> ### Extension
>
> Base type: [ANY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ANY)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> representation|[BinaryDataEncoding](#BinaryDataEncoding)|optional|TXT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ED'></a>
>
> ### ED
>
> ### Extension
>
> Base type: [BIN](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#BIN)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> mediaType|[cs](#cs)|optional|text/plain||
> language|[cs](#cs)|optional|||
> compression|[CompressionAlgorithm](#CompressionAlgorithm)|optional|||
> integrityCheck|[bin](#bin)|optional|||
> integrityCheckAlgorithm|[IntegrityCheckAlgorithm](#IntegrityCheckAlgorithm)|optional|SHA-1||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> reference|[TEL](#TEL)|0|1||
> thumbnail|[thumbnail](#thumbnail)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='thumbnail'></a>
>
> ### thumbnail
>
> ### Restriction
>
> Base type: [ED](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ED)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ST'></a>
>
> ### ST
>
> ### Restriction
>
> Base type: [ED](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ED)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> representation|[BinaryDataEncoding](#BinaryDataEncoding)||||
> mediaType|[cs](#cs)||||
> language|[cs](#cs)|optional|||
> compression|[CompressionAlgorithm](#CompressionAlgorithm)|prohibited|||
> integrityCheck|[bin](#bin)|prohibited|||
> integrityCheckAlgorithm|[IntegrityCheckAlgorithm](#IntegrityCheckAlgorithm)|prohibited|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CD'></a>
>
> ### CD
>
> ### Extension
>
> Base type: [ANY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ANY)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> code|[cs](#cs)|optional|||
> codeSystem|[uid](#uid)|optional|||
> codeSystemName|[st](#st)|optional|||
> codeSystemVersion|[st](#st)|optional|||
> displayName|[st](#st)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> originalText|[ED](#ED)|0|1||
> qualifier|[CR](#CR)|0|unbounded||
> translation|[CD](#CD)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CE'></a>
>
> ### CE
>
> ### Restriction
>
> Base type: [CD](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#CD)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> code|[cs](#cs)|optional|||
> codeSystem|[uid](#uid)|optional|||
> codeSystemName|[st](#st)|optional|||
> codeSystemVersion|[st](#st)|optional|||
> displayName|[st](#st)|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CV'></a>
>
> ### CV
>
> ### Restriction
>
> Base type: [CE](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#CE)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> code|[cs](#cs)|optional|||
> codeSystem|[uid](#uid)|optional|||
> codeSystemName|[st](#st)|optional|||
> codeSystemVersion|[st](#st)|optional|||
> displayName|[st](#st)|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CS'></a>
>
> ### CS
>
> ### Restriction
>
> Base type: [CV](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#CV)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> code|[cs](#cs)|optional|||
> codeSystem|[uid](#uid)|prohibited|||
> codeSystemName|[st](#st)|prohibited|||
> codeSystemVersion|[st](#st)|prohibited|||
> displayName|[st](#st)|prohibited|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CO'></a>
>
> ### CO
>
> ### Extension
>
> Base type: [CV](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#CV)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CR'></a>
>
> ### CR
>
> ### Extension
>
> Base type: [ANY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ANY)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> inverted|[bn](#bn)|optional|false||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|[CV](#CV)|0|1||
> value|[CD](#CD)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SC'></a>
>
> ### SC
>
> ### Extension
>
> Base type: [ST](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ST)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> code|[cs](#cs)|optional|||
> codeSystem|[uid](#uid)|optional|||
> codeSystemName|[st](#st)|optional|||
> codeSystemVersion|[st](#st)|optional|||
> displayName|[st](#st)|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='II'></a>
>
> ### II
>
> ### Extension
>
> Base type: [ANY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ANY)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> root|[uid](#uid)|optional|||
> extension|[st](#st)|optional|||
> assigningAuthorityName|[st](#st)|optional|||
> displayable|[bl](#bl)|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='URL'></a>
>
> ### URL
>
> ### Extension
>
> Base type: [ANY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ANY)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> value|[url](#url)|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TS'></a>
>
> ### TS
>
> ### Extension
>
> Base type: [QTY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#QTY)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> value|[ts](#ts)|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TEL'></a>
>
> ### TEL
>
> ### Extension
>
> Base type: [URL](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#URL)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> use|[set_TelecommunicationAddressUse](#set_TelecommunicationAddressUse)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> useablePeriod|[SXCM_TS](#SXCM_TS)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ADXP'></a>
>
> ### ADXP
>
> ### Extension
>
> Base type: [ST](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ST)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.delimiter'></a>
>
> ### adxp.delimiter
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.country'></a>
>
> ### adxp.country
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.state'></a>
>
> ### adxp.state
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.county'></a>
>
> ### adxp.county
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.city'></a>
>
> ### adxp.city
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.postalCode'></a>
>
> ### adxp.postalCode
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.streetAddressLine'></a>
>
> ### adxp.streetAddressLine
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.houseNumber'></a>
>
> ### adxp.houseNumber
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.houseNumberNumeric'></a>
>
> ### adxp.houseNumberNumeric
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.direction'></a>
>
> ### adxp.direction
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.streetName'></a>
>
> ### adxp.streetName
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.streetNameBase'></a>
>
> ### adxp.streetNameBase
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.streetNameType'></a>
>
> ### adxp.streetNameType
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.additionalLocator'></a>
>
> ### adxp.additionalLocator
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.unitID'></a>
>
> ### adxp.unitID
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.unitType'></a>
>
> ### adxp.unitType
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.careOf'></a>
>
> ### adxp.careOf
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.censusTract'></a>
>
> ### adxp.censusTract
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.deliveryAddressLine'></a>
>
> ### adxp.deliveryAddressLine
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.deliveryInstallationType'></a>
>
> ### adxp.deliveryInstallationType
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.deliveryInstallationArea'></a>
>
> ### adxp.deliveryInstallationArea
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.deliveryInstallationQualifier'></a>
>
> ### adxp.deliveryInstallationQualifier
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.deliveryMode'></a>
>
> ### adxp.deliveryMode
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.deliveryModeIdentifier'></a>
>
> ### adxp.deliveryModeIdentifier
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.buildingNumberSuffix'></a>
>
> ### adxp.buildingNumberSuffix
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.postBox'></a>
>
> ### adxp.postBox
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='adxp.precinct'></a>
>
> ### adxp.precinct
>
> ### Restriction
>
> Base type: [ADXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ADXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[AddressPartType](#AddressPartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AD'></a>
>
> ### AD
>
> ### Extension
>
> Base type: [ANY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ANY)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> use|[set_PostalAddressUse](#set_PostalAddressUse)|optional|||
> isNotOrdered|[bl](#bl)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> useablePeriod|[SXCM_TS](#SXCM_TS)|0|unbounded||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: unbounded
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> delimiter|[adxp.delimiter](#adxp.delimiter)|1|1||
> country|[adxp.country](#adxp.country)|1|1||
> state|[adxp.state](#adxp.state)|1|1||
> county|[adxp.county](#adxp.county)|1|1||
> city|[adxp.city](#adxp.city)|1|1||
> postalCode|[adxp.postalCode](#adxp.postalCode)|1|1||
> streetAddressLine|[adxp.streetAddressLine](#adxp.streetAddressLine)|1|1||
> houseNumber|[adxp.houseNumber](#adxp.houseNumber)|1|1||
> houseNumberNumeric|[adxp.houseNumberNumeric](#adxp.houseNumberNumeric)|1|1||
> direction|[adxp.direction](#adxp.direction)|1|1||
> streetName|[adxp.streetName](#adxp.streetName)|1|1||
> streetNameBase|[adxp.streetNameBase](#adxp.streetNameBase)|1|1||
> streetNameType|[adxp.streetNameType](#adxp.streetNameType)|1|1||
> additionalLocator|[adxp.additionalLocator](#adxp.additionalLocator)|1|1||
> unitID|[adxp.unitID](#adxp.unitID)|1|1||
> unitType|[adxp.unitType](#adxp.unitType)|1|1||
> careOf|[adxp.careOf](#adxp.careOf)|1|1||
> censusTract|[adxp.censusTract](#adxp.censusTract)|1|1||
> deliveryAddressLine|[adxp.deliveryAddressLine](#adxp.deliveryAddressLine)|1|1||
> deliveryInstallationType|[adxp.deliveryInstallationType](#adxp.deliveryInstallationType)|1|1||
> deliveryInstallationArea|[adxp.deliveryInstallationArea](#adxp.deliveryInstallationArea)|1|1||
> deliveryInstallationQualifier|[adxp.deliveryInstallationQualifier](#adxp.deliveryInstallationQualifier)|1|1||
> deliveryMode|[adxp.deliveryMode](#adxp.deliveryMode)|1|1||
> deliveryModeIdentifier|[adxp.deliveryModeIdentifier](#adxp.deliveryModeIdentifier)|1|1||
> buildingNumberSuffix|[adxp.buildingNumberSuffix](#adxp.buildingNumberSuffix)|1|1||
> postBox|[adxp.postBox](#adxp.postBox)|1|1||
> precinct|[adxp.precinct](#adxp.precinct)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ENXP'></a>
>
> ### ENXP
>
> ### Extension
>
> Base type: [ST](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ST)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[EntityNamePartType](#EntityNamePartType)||||
> qualifier|[set_EntityNamePartQualifier](#set_EntityNamePartQualifier)|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='en.delimiter'></a>
>
> ### en.delimiter
>
> ### Restriction
>
> Base type: [ENXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ENXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[EntityNamePartType](#EntityNamePartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='en.family'></a>
>
> ### en.family
>
> ### Restriction
>
> Base type: [ENXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ENXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[EntityNamePartType](#EntityNamePartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='en.given'></a>
>
> ### en.given
>
> ### Restriction
>
> Base type: [ENXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ENXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[EntityNamePartType](#EntityNamePartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='en.prefix'></a>
>
> ### en.prefix
>
> ### Restriction
>
> Base type: [ENXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ENXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[EntityNamePartType](#EntityNamePartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='en.suffix'></a>
>
> ### en.suffix
>
> ### Restriction
>
> Base type: [ENXP](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ENXP)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> partType|[EntityNamePartType](#EntityNamePartType)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EN'></a>
>
> ### EN
>
> ### Extension
>
> Base type: [ANY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ANY)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> use|[set_EntityNameUse](#set_EntityNameUse)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> validTime|[IVL_TS](#IVL_TS)|0|1||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: unbounded
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> delimiter|[en.delimiter](#en.delimiter)|1|1||
> family|[en.family](#en.family)|1|1||
> given|[en.given](#en.given)|1|1||
> prefix|[en.prefix](#en.prefix)|1|1||
> suffix|[en.suffix](#en.suffix)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PN'></a>
>
> ### PN
>
> ### Extension
>
> Base type: [EN](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#EN)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ON'></a>
>
> ### ON
>
> ### Restriction
>
> Base type: [EN](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#EN)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> use|[set_EntityNameUse](#set_EntityNameUse)|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TN'></a>
>
> ### TN
>
> ### Restriction
>
> Base type: [EN](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#EN)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='QTY'></a>
>
> ### QTY
>
> ### Extension
>
> Base type: [ANY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ANY)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='INT'></a>
>
> ### INT
>
> ### Extension
>
> Base type: [QTY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#QTY)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> value|[int](#int)|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='REAL'></a>
>
> ### REAL
>
> ### Extension
>
> Base type: [QTY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#QTY)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> value|[real](#real)|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PQR'></a>
>
> ### PQR
>
> ### Extension
>
> Base type: [CV](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#CV)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> value|[real](#real)|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PQ'></a>
>
> ### PQ
>
> ### Extension
>
> Base type: [QTY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#QTY)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> value|[real](#real)|optional|||
> unit|[cs](#cs)|optional|1||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> translation|[PQR](#PQR)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='MO'></a>
>
> ### MO
>
> ### Extension
>
> Base type: [QTY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#QTY)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> value|[real](#real)|optional|||
> currency|[cs](#cs)|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RTO'></a>
>
> ### RTO
>
> ### Extension
>
> Base type: [RTO_QTY_QTY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#RTO_QTY_QTY)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EIVL.event'></a>
>
> ### EIVL.event
>
> ### Restriction
>
> Base type: [CE](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#CE)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> code|[TimingEvent](#TimingEvent)|optional|||
> codeSystem|[uid](#uid)||||
> codeSystemName|[st](#st)||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SXCM_TS'></a>
>
> ### SXCM_TS
>
> ### Extension
>
> Base type: [TS](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#TS)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> operator|[SetOperator](#SetOperator)|optional|I||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IVL_TS'></a>
>
> ### IVL_TS
>
> ### Extension
>
> Base type: [SXCM_TS](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#SXCM_TS)
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> low|[IVXB_TS](#IVXB_TS)|1|1||
> high|[IVXB_TS](#IVXB_TS)|1|1||
> width|[PQ](#PQ)|1|1||
> high|[IVXB_TS](#IVXB_TS)|0|1||
> center|[TS](#TS)|1|1||
> width|[PQ](#PQ)|0|1||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> width|[PQ](#PQ)|0|1||
> high|[IVXB_TS](#IVXB_TS)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IVXB_TS'></a>
>
> ### IVXB_TS
>
> ### Extension
>
> Base type: [TS](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#TS)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> inclusive|[bl](#bl)|optional|true||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RTO_QTY_QTY'></a>
>
> ### RTO_QTY_QTY
>
> ### Extension
>
> Base type: [QTY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#QTY)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> numerator|[QTY](#QTY)|1|1||
> denominator|[QTY](#QTY)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.Text'></a>
>
> ### StrucDoc.Text
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
> mediaType|string||||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: unbounded
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> content|[StrucDoc.Content](#StrucDoc.Content)|1|1||
> linkHtml|[StrucDoc.LinkHtml](#StrucDoc.LinkHtml)|1|1||
> sub|[StrucDoc.Sub](#StrucDoc.Sub)|1|1||
> sup|[StrucDoc.Sup](#StrucDoc.Sup)|1|1||
> br|[StrucDoc.Br](#StrucDoc.Br)|1|1||
> footnote|[StrucDoc.Footnote](#StrucDoc.Footnote)|1|1||
> footnoteRef|[StrucDoc.FootnoteRef](#StrucDoc.FootnoteRef)|1|1||
> renderMultiMedia|[StrucDoc.RenderMultiMedia](#StrucDoc.RenderMultiMedia)|1|1||
> paragraph|[StrucDoc.Paragraph](#StrucDoc.Paragraph)|1|1||
> list|[StrucDoc.List](#StrucDoc.List)|1|1||
> table|[StrucDoc.Table](#StrucDoc.Table)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.Title'></a>
>
> ### StrucDoc.Title
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
> mediaType|string||||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: unbounded
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> content|[StrucDoc.TitleContent](#StrucDoc.TitleContent)|1|1||
> sub|[StrucDoc.Sub](#StrucDoc.Sub)|1|1||
> sup|[StrucDoc.Sup](#StrucDoc.Sup)|1|1||
> br|[StrucDoc.Br](#StrucDoc.Br)|1|1||
> footnote|[StrucDoc.TitleFootnote](#StrucDoc.TitleFootnote)|1|1||
> footnoteRef|[StrucDoc.FootnoteRef](#StrucDoc.FootnoteRef)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.Br'></a>
>
> ### StrucDoc.Br
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.Caption'></a>
>
> ### StrucDoc.Caption
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: unbounded
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> linkHtml|[StrucDoc.LinkHtml](#StrucDoc.LinkHtml)|1|1||
> sub|[StrucDoc.Sub](#StrucDoc.Sub)|1|1||
> sup|[StrucDoc.Sup](#StrucDoc.Sup)|1|1||
> footnote|[StrucDoc.Footnote](#StrucDoc.Footnote)|1|1||
> footnoteRef|[StrucDoc.FootnoteRef](#StrucDoc.FootnoteRef)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.Col'></a>
>
> ### StrucDoc.Col
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
> span|string||1||
> width|string||||
> align|||||
> char|string||||
> charoff|string||||
> valign|||||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.Colgroup'></a>
>
> ### StrucDoc.Colgroup
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
> span|string||1||
> width|string||||
> align|||||
> char|string||||
> charoff|string||||
> valign|||||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> col|[StrucDoc.Col](#StrucDoc.Col)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.Content'></a>
>
> ### StrucDoc.Content
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
> revised|||||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: unbounded
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> content|[StrucDoc.Content](#StrucDoc.Content)|1|1||
> linkHtml|[StrucDoc.LinkHtml](#StrucDoc.LinkHtml)|1|1||
> sub|[StrucDoc.Sub](#StrucDoc.Sub)|1|1||
> sup|[StrucDoc.Sup](#StrucDoc.Sup)|1|1||
> br|[StrucDoc.Br](#StrucDoc.Br)|1|1||
> footnote|[StrucDoc.Footnote](#StrucDoc.Footnote)|1|1||
> footnoteRef|[StrucDoc.FootnoteRef](#StrucDoc.FootnoteRef)|1|1||
> renderMultiMedia|[StrucDoc.RenderMultiMedia](#StrucDoc.RenderMultiMedia)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.TitleContent'></a>
>
> ### StrucDoc.TitleContent
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: unbounded
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> content|[StrucDoc.TitleContent](#StrucDoc.TitleContent)|1|1||
> sub|[StrucDoc.Sub](#StrucDoc.Sub)|1|1||
> sup|[StrucDoc.Sup](#StrucDoc.Sup)|1|1||
> br|[StrucDoc.Br](#StrucDoc.Br)|1|1||
> footnote|[StrucDoc.TitleFootnote](#StrucDoc.TitleFootnote)|1|1||
> footnoteRef|[StrucDoc.FootnoteRef](#StrucDoc.FootnoteRef)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.Footnote'></a>
>
> ### StrucDoc.Footnote
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: unbounded
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> content|[StrucDoc.Content](#StrucDoc.Content)|1|1||
> linkHtml|[StrucDoc.LinkHtml](#StrucDoc.LinkHtml)|1|1||
> sub|[StrucDoc.Sub](#StrucDoc.Sub)|1|1||
> sup|[StrucDoc.Sup](#StrucDoc.Sup)|1|1||
> br|[StrucDoc.Br](#StrucDoc.Br)|1|1||
> renderMultiMedia|[StrucDoc.RenderMultiMedia](#StrucDoc.RenderMultiMedia)|1|1||
> paragraph|[StrucDoc.Paragraph](#StrucDoc.Paragraph)|1|1||
> list|[StrucDoc.List](#StrucDoc.List)|1|1||
> table|[StrucDoc.Table](#StrucDoc.Table)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.TitleFootnote'></a>
>
> ### StrucDoc.TitleFootnote
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: unbounded
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> content|[StrucDoc.TitleContent](#StrucDoc.TitleContent)|1|1||
> sub|[StrucDoc.Sub](#StrucDoc.Sub)|1|1||
> sup|[StrucDoc.Sup](#StrucDoc.Sup)|1|1||
> br|[StrucDoc.Br](#StrucDoc.Br)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.FootnoteRef'></a>
>
> ### StrucDoc.FootnoteRef
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
> IDREF|IDREF|required|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.Item'></a>
>
> ### StrucDoc.Item
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> caption|[StrucDoc.Caption](#StrucDoc.Caption)|0|1||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: unbounded
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> content|[StrucDoc.Content](#StrucDoc.Content)|1|1||
> linkHtml|[StrucDoc.LinkHtml](#StrucDoc.LinkHtml)|1|1||
> sub|[StrucDoc.Sub](#StrucDoc.Sub)|1|1||
> sup|[StrucDoc.Sup](#StrucDoc.Sup)|1|1||
> br|[StrucDoc.Br](#StrucDoc.Br)|1|1||
> footnote|[StrucDoc.Footnote](#StrucDoc.Footnote)|1|1||
> footnoteRef|[StrucDoc.FootnoteRef](#StrucDoc.FootnoteRef)|1|1||
> renderMultiMedia|[StrucDoc.RenderMultiMedia](#StrucDoc.RenderMultiMedia)|1|1||
> paragraph|[StrucDoc.Paragraph](#StrucDoc.Paragraph)|1|1||
> list|[StrucDoc.List](#StrucDoc.List)|1|1||
> table|[StrucDoc.Table](#StrucDoc.Table)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.LinkHtml'></a>
>
> ### StrucDoc.LinkHtml
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> name|string||||
> href|string||||
> rel|string||||
> rev|string||||
> title|string||||
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: unbounded
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> footnote|[StrucDoc.Footnote](#StrucDoc.Footnote)|1|1||
> footnoteRef|[StrucDoc.FootnoteRef](#StrucDoc.FootnoteRef)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.List'></a>
>
> ### StrucDoc.List
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
> listType|||unordered||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> caption|[StrucDoc.Caption](#StrucDoc.Caption)|0|1||
> item|[StrucDoc.Item](#StrucDoc.Item)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.Paragraph'></a>
>
> ### StrucDoc.Paragraph
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> caption|[StrucDoc.Caption](#StrucDoc.Caption)|0|1||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: unbounded
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> content|[StrucDoc.Content](#StrucDoc.Content)|1|1||
> linkHtml|[StrucDoc.LinkHtml](#StrucDoc.LinkHtml)|1|1||
> sub|[StrucDoc.Sub](#StrucDoc.Sub)|1|1||
> sup|[StrucDoc.Sup](#StrucDoc.Sup)|1|1||
> br|[StrucDoc.Br](#StrucDoc.Br)|1|1||
> footnote|[StrucDoc.Footnote](#StrucDoc.Footnote)|1|1||
> footnoteRef|[StrucDoc.FootnoteRef](#StrucDoc.FootnoteRef)|1|1||
> renderMultiMedia|[StrucDoc.RenderMultiMedia](#StrucDoc.RenderMultiMedia)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.RenderMultiMedia'></a>
>
> ### StrucDoc.RenderMultiMedia
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> referencedObject|IDREFS|required|||
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> caption|[StrucDoc.Caption](#StrucDoc.Caption)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.Sub'></a>
>
> ### StrucDoc.Sub
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.Sup'></a>
>
> ### StrucDoc.Sup
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.Table'></a>
>
> ### StrucDoc.Table
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
> summary|string||||
> width|string||||
> border|string||||
> frame|||||
> rules|||||
> cellspacing|string||||
> cellpadding|string||||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> caption|[StrucDoc.Caption](#StrucDoc.Caption)|0|1||
> thead|[StrucDoc.Thead](#StrucDoc.Thead)|0|1||
> tfoot|[StrucDoc.Tfoot](#StrucDoc.Tfoot)|0|1||
> tbody|[StrucDoc.Tbody](#StrucDoc.Tbody)|1|unbounded||
>
> ### Choice
>
> Min occurs: 1
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> col|[StrucDoc.Col](#StrucDoc.Col)|0|unbounded||
> colgroup|[StrucDoc.Colgroup](#StrucDoc.Colgroup)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.Tbody'></a>
>
> ### StrucDoc.Tbody
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
> align|||||
> char|string||||
> charoff|string||||
> valign|||||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> tr|[StrucDoc.Tr](#StrucDoc.Tr)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.Td'></a>
>
> ### StrucDoc.Td
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
> abbr|string||||
> axis|string||||
> headers|IDREFS||||
> scope|||||
> rowspan|string||1||
> colspan|string||1||
> align|||||
> char|string||||
> charoff|string||||
> valign|||||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: unbounded
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> content|[StrucDoc.Content](#StrucDoc.Content)|1|1||
> linkHtml|[StrucDoc.LinkHtml](#StrucDoc.LinkHtml)|1|1||
> sub|[StrucDoc.Sub](#StrucDoc.Sub)|1|1||
> sup|[StrucDoc.Sup](#StrucDoc.Sup)|1|1||
> br|[StrucDoc.Br](#StrucDoc.Br)|1|1||
> footnote|[StrucDoc.Footnote](#StrucDoc.Footnote)|1|1||
> footnoteRef|[StrucDoc.FootnoteRef](#StrucDoc.FootnoteRef)|1|1||
> renderMultiMedia|[StrucDoc.RenderMultiMedia](#StrucDoc.RenderMultiMedia)|1|1||
> paragraph|[StrucDoc.Paragraph](#StrucDoc.Paragraph)|1|1||
> list|[StrucDoc.List](#StrucDoc.List)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.Tfoot'></a>
>
> ### StrucDoc.Tfoot
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
> align|||||
> char|string||||
> charoff|string||||
> valign|||||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> tr|[StrucDoc.Tr](#StrucDoc.Tr)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.Th'></a>
>
> ### StrucDoc.Th
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
> abbr|string||||
> axis|string||||
> headers|IDREFS||||
> scope|||||
> rowspan|string||1||
> colspan|string||1||
> align|||||
> char|string||||
> charoff|string||||
> valign|||||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: unbounded
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> content|[StrucDoc.Content](#StrucDoc.Content)|1|1||
> linkHtml|[StrucDoc.LinkHtml](#StrucDoc.LinkHtml)|1|1||
> sub|[StrucDoc.Sub](#StrucDoc.Sub)|1|1||
> sup|[StrucDoc.Sup](#StrucDoc.Sup)|1|1||
> br|[StrucDoc.Br](#StrucDoc.Br)|1|1||
> footnote|[StrucDoc.Footnote](#StrucDoc.Footnote)|1|1||
> footnoteRef|[StrucDoc.FootnoteRef](#StrucDoc.FootnoteRef)|1|1||
> renderMultiMedia|[StrucDoc.RenderMultiMedia](#StrucDoc.RenderMultiMedia)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.Thead'></a>
>
> ### StrucDoc.Thead
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
> align|||||
> char|string||||
> charoff|string||||
> valign|||||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> tr|[StrucDoc.Tr](#StrucDoc.Tr)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StrucDoc.Tr'></a>
>
> ### StrucDoc.Tr
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> language|NMTOKEN||||
> styleCode|NMTOKENS||||
> align|||||
> char|string||||
> charoff|string||||
> valign|||||
>
> ### Choice
>
> Min occurs: 1
>
> Max occurs: unbounded
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> th|[StrucDoc.Th](#StrucDoc.Th)|1|1||
> td|[StrucDoc.Td](#StrucDoc.Td)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PIVL_TS'></a>
>
> ### PIVL_TS
>
> ### Extension
>
> Base type: [SXCM_TS](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#SXCM_TS)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> alignment|[CalendarCycle](#CalendarCycle)|optional|||
> institutionSpecified|[bl](#bl)|optional|false||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> phase|[IVL_TS](#IVL_TS)|0|1||
> period|[PQ](#PQ)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EIVL_TS'></a>
>
> ### EIVL_TS
>
> ### Extension
>
> Base type: [SXCM_TS](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#SXCM_TS)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> event|[EIVL.event](#EIVL.event)|0|1||
> offset|[IVL_PQ](#IVL_PQ)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IVL_PQ'></a>
>
> ### IVL_PQ
>
> ### Extension
>
> Base type: [SXCM_PQ](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#SXCM_PQ)
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> low|[IVXB_PQ](#IVXB_PQ)|1|1||
> high|[IVXB_PQ](#IVXB_PQ)|1|1||
> width|[PQ](#PQ)|1|1||
> high|[IVXB_PQ](#IVXB_PQ)|0|1||
> center|[PQ](#PQ)|1|1||
> width|[PQ](#PQ)|0|1||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> width|[PQ](#PQ)|0|1||
> high|[IVXB_PQ](#IVXB_PQ)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SXCM_PQ'></a>
>
> ### SXCM_PQ
>
> ### Extension
>
> Base type: [PQ](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#PQ)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> operator|[SetOperator](#SetOperator)|optional|I||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IVXB_PQ'></a>
>
> ### IVXB_PQ
>
> ### Extension
>
> Base type: [PQ](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#PQ)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> inclusive|[bl](#bl)|optional|true||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PPD_TS'></a>
>
> ### PPD_TS
>
> ### Extension
>
> Base type: [TS](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#TS)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> distributionType|[ProbabilityDistributionType](#ProbabilityDistributionType)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> standardDeviation|[PQ](#PQ)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PPD_PQ'></a>
>
> ### PPD_PQ
>
> ### Extension
>
> Base type: [PQ](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#PQ)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> distributionType|[ProbabilityDistributionType](#ProbabilityDistributionType)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> standardDeviation|[PQ](#PQ)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PIVL_PPD_TS'></a>
>
> ### PIVL_PPD_TS
>
> ### Extension
>
> Base type: [SXCM_PPD_TS](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#SXCM_PPD_TS)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> alignment|[CalendarCycle](#CalendarCycle)|optional|||
> institutionSpecified|[bl](#bl)|optional|false||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> phase|[IVL_PPD_TS](#IVL_PPD_TS)|0|1||
> period|[PPD_PQ](#PPD_PQ)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SXCM_PPD_TS'></a>
>
> ### SXCM_PPD_TS
>
> ### Extension
>
> Base type: [PPD_TS](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#PPD_TS)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> operator|[SetOperator](#SetOperator)|optional|I||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IVL_PPD_TS'></a>
>
> ### IVL_PPD_TS
>
> ### Extension
>
> Base type: [SXCM_PPD_TS](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#SXCM_PPD_TS)
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> low|[IVXB_PPD_TS](#IVXB_PPD_TS)|1|1||
> high|[IVXB_PPD_TS](#IVXB_PPD_TS)|1|1||
> width|[PPD_PQ](#PPD_PQ)|1|1||
> high|[IVXB_PPD_TS](#IVXB_PPD_TS)|0|1||
> center|[PPD_TS](#PPD_TS)|1|1||
> width|[PPD_PQ](#PPD_PQ)|0|1||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> width|[PPD_PQ](#PPD_PQ)|0|1||
> high|[IVXB_PPD_TS](#IVXB_PPD_TS)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IVXB_PPD_TS'></a>
>
> ### IVXB_PPD_TS
>
> ### Extension
>
> Base type: [PPD_TS](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#PPD_TS)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> inclusive|[bl](#bl)|optional|true||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EIVL_PPD_TS'></a>
>
> ### EIVL_PPD_TS
>
> ### Extension
>
> Base type: [SXCM_PPD_TS](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#SXCM_PPD_TS)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> event|[EIVL.event](#EIVL.event)|0|1||
> offset|[IVL_PPD_PQ](#IVL_PPD_PQ)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IVL_PPD_PQ'></a>
>
> ### IVL_PPD_PQ
>
> ### Extension
>
> Base type: [SXCM_PPD_PQ](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#SXCM_PPD_PQ)
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> low|[IVXB_PPD_PQ](#IVXB_PPD_PQ)|1|1||
> high|[IVXB_PPD_PQ](#IVXB_PPD_PQ)|1|1||
> width|[PPD_PQ](#PPD_PQ)|1|1||
> high|[IVXB_PPD_PQ](#IVXB_PPD_PQ)|0|1||
> center|[PPD_PQ](#PPD_PQ)|1|1||
> width|[PPD_PQ](#PPD_PQ)|0|1||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> width|[PPD_PQ](#PPD_PQ)|0|1||
> high|[IVXB_PPD_PQ](#IVXB_PPD_PQ)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SXCM_PPD_PQ'></a>
>
> ### SXCM_PPD_PQ
>
> ### Extension
>
> Base type: [PPD_PQ](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#PPD_PQ)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> operator|[SetOperator](#SetOperator)|optional|I||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IVXB_PPD_PQ'></a>
>
> ### IVXB_PPD_PQ
>
> ### Extension
>
> Base type: [PPD_PQ](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#PPD_PQ)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> inclusive|[bl](#bl)|optional|true||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SXPR_TS'></a>
>
> ### SXPR_TS
>
> ### Extension
>
> Base type: [SXCM_TS](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#SXCM_TS)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> comp|[SXCM_TS](#SXCM_TS)|2|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SXCM_CD'></a>
>
> ### SXCM_CD
>
> ### Extension
>
> Base type: [CD](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#CD)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> operator|[SetOperator](#SetOperator)|optional|I||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SXCM_MO'></a>
>
> ### SXCM_MO
>
> ### Extension
>
> Base type: [MO](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#MO)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> operator|[SetOperator](#SetOperator)|optional|I||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SXCM_INT'></a>
>
> ### SXCM_INT
>
> ### Extension
>
> Base type: [INT](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#INT)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> operator|[SetOperator](#SetOperator)|optional|I||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SXCM_REAL'></a>
>
> ### SXCM_REAL
>
> ### Extension
>
> Base type: [REAL](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#REAL)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> operator|[SetOperator](#SetOperator)|optional|I||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IVL_INT'></a>
>
> ### IVL_INT
>
> ### Extension
>
> Base type: [SXCM_INT](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#SXCM_INT)
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> low|[IVXB_INT](#IVXB_INT)|1|1||
> high|[IVXB_INT](#IVXB_INT)|1|1||
> width|[INT](#INT)|1|1||
> high|[IVXB_INT](#IVXB_INT)|0|1||
> center|[INT](#INT)|1|1||
> width|[INT](#INT)|0|1||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> width|[INT](#INT)|0|1||
> high|[IVXB_INT](#IVXB_INT)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IVXB_INT'></a>
>
> ### IVXB_INT
>
> ### Extension
>
> Base type: [INT](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#INT)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> inclusive|[bl](#bl)|optional|true||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IVL_REAL'></a>
>
> ### IVL_REAL
>
> ### Extension
>
> Base type: [SXCM_REAL](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#SXCM_REAL)
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> low|[IVXB_REAL](#IVXB_REAL)|1|1||
> high|[IVXB_REAL](#IVXB_REAL)|1|1||
> width|[REAL](#REAL)|1|1||
> high|[IVXB_REAL](#IVXB_REAL)|0|1||
> center|[REAL](#REAL)|1|1||
> width|[REAL](#REAL)|0|1||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> width|[REAL](#REAL)|0|1||
> high|[IVXB_REAL](#IVXB_REAL)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IVXB_REAL'></a>
>
> ### IVXB_REAL
>
> ### Extension
>
> Base type: [REAL](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#REAL)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> inclusive|[bl](#bl)|optional|true||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IVL_MO'></a>
>
> ### IVL_MO
>
> ### Extension
>
> Base type: [SXCM_MO](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#SXCM_MO)
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> low|[IVXB_MO](#IVXB_MO)|1|1||
> high|[IVXB_MO](#IVXB_MO)|1|1||
> width|[MO](#MO)|1|1||
> high|[IVXB_MO](#IVXB_MO)|0|1||
> center|[MO](#MO)|1|1||
> width|[MO](#MO)|0|1||
>
> ### Choice
>
> Min occurs: 0
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> width|[MO](#MO)|0|1||
> high|[IVXB_MO](#IVXB_MO)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IVXB_MO'></a>
>
> ### IVXB_MO
>
> ### Extension
>
> Base type: [MO](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#MO)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> inclusive|[bl](#bl)|optional|true||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='HXIT_PQ'></a>
>
> ### HXIT_PQ
>
> ### Extension
>
> Base type: [PQ](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#PQ)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> validTime|[IVL_TS](#IVL_TS)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='HXIT_CE'></a>
>
> ### HXIT_CE
>
> ### Extension
>
> Base type: [CE](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#CE)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> validTime|[IVL_TS](#IVL_TS)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='BXIT_CD'></a>
>
> ### BXIT_CD
>
> ### Extension
>
> Base type: [CD](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#CD)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> qty|[int](#int)|optional|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='BXIT_IVL_PQ'></a>
>
> ### BXIT_IVL_PQ
>
> ### Extension
>
> Base type: [IVL_PQ](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#IVL_PQ)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> qty|[int](#int)|optional|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SLIST_PQ'></a>
>
> ### SLIST_PQ
>
> ### Extension
>
> Base type: [ANY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ANY)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> origin|[PQ](#PQ)|1|1||
> scale|[PQ](#PQ)|1|1||
> digits|[list_int](#list_int)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SLIST_TS'></a>
>
> ### SLIST_TS
>
> ### Extension
>
> Base type: [ANY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ANY)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> origin|[TS](#TS)|1|1||
> scale|[PQ](#PQ)|1|1||
> digits|[list_int](#list_int)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='GLIST_TS'></a>
>
> ### GLIST_TS
>
> ### Extension
>
> Base type: [ANY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ANY)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> period|[int](#int)|optional|||
> denominator|[int](#int)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> head|[TS](#TS)|1|1||
> increment|[PQ](#PQ)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='GLIST_PQ'></a>
>
> ### GLIST_PQ
>
> ### Extension
>
> Base type: [ANY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#ANY)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> period|[int](#int)|optional|||
> denominator|[int](#int)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> head|[PQ](#PQ)|1|1||
> increment|[PQ](#PQ)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RTO_PQ_PQ'></a>
>
> ### RTO_PQ_PQ
>
> ### Extension
>
> Base type: [QTY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#QTY)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> numerator|[PQ](#PQ)|1|1||
> denominator|[PQ](#PQ)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RTO_MO_PQ'></a>
>
> ### RTO_MO_PQ
>
> ### Extension
>
> Base type: [QTY](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#QTY)
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> numerator|[MO](#MO)|1|1||
> denominator|[PQ](#PQ)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UVP_TS'></a>
>
> ### UVP_TS
>
> ### Extension
>
> Base type: [TS](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#TS)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> probability|[probability](#probability)|optional|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.InfrastructureRoot.typeId'></a>
>
> ### POCD_MT000040.InfrastructureRoot.typeId
>
> ### Restriction
>
> Base type: [II](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#II)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> root|[uid](#uid)|required|||
> extension|[st](#st)|required|||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Act'></a>
>
> ### POCD_MT000040.Act
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[x_ActClassDocumentEntryAct](#x_ActClassDocumentEntryAct)|required|||
> moodCode|[x_DocumentActMood](#x_DocumentActMood)|required|||
> negationInd|[bl](#bl)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CD](#CD)|1|1||
> text|[ED](#ED)|0|1||
> statusCode|[CS](#CS)|0|1||
> effectiveTime|[IVL_TS](#IVL_TS)|0|1||
> priorityCode|[CE](#CE)|0|1||
> languageCode|[CS](#CS)|0|1||
> subject|[POCD_MT000040.Subject](#POCD_MT000040.Subject)|0|1||
> specimen|[POCD_MT000040.Specimen](#POCD_MT000040.Specimen)|0|unbounded||
> performer|[POCD_MT000040.Performer2](#POCD_MT000040.Performer2)|0|unbounded||
> author|[POCD_MT000040.Author](#POCD_MT000040.Author)|0|unbounded||
> informant|[POCD_MT000040.Informant12](#POCD_MT000040.Informant12)|0|unbounded||
> participant|[POCD_MT000040.Participant2](#POCD_MT000040.Participant2)|0|unbounded||
> entryRelationship|[POCD_MT000040.EntryRelationship](#POCD_MT000040.EntryRelationship)|0|unbounded||
> reference|[POCD_MT000040.Reference](#POCD_MT000040.Reference)|0|unbounded||
> precondition|[POCD_MT000040.Precondition](#POCD_MT000040.Precondition)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.AssignedAuthor'></a>
>
> ### POCD_MT000040.AssignedAuthor
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[RoleClassAssignedEntity](#RoleClassAssignedEntity)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|1|unbounded||
> code|[CE](#CE)|0|1||
> addr|[AD](#AD)|0|unbounded||
> telecom|[TEL](#TEL)|0|unbounded||
> representedOrganization|[POCD_MT000040.Organization](#POCD_MT000040.Organization)|0|1||
>
> ### Choice
>
> Min occurs: 1
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> assignedPerson|[POCD_MT000040.Person](#POCD_MT000040.Person)|0|1||
> assignedAuthoringDevice|[POCD_MT000040.AuthoringDevice](#POCD_MT000040.AuthoringDevice)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.AssignedCustodian'></a>
>
> ### POCD_MT000040.AssignedCustodian
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[RoleClassAssignedEntity](#RoleClassAssignedEntity)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> representedCustodianOrganization|[POCD_MT000040.CustodianOrganization](#POCD_MT000040.CustodianOrganization)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.AssignedEntity'></a>
>
> ### POCD_MT000040.AssignedEntity
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[RoleClassAssignedEntity](#RoleClassAssignedEntity)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|1|unbounded||
> code|[CE](#CE)|0|1||
> addr|[AD](#AD)|0|unbounded||
> telecom|[TEL](#TEL)|0|unbounded||
> assignedPerson|[POCD_MT000040.Person](#POCD_MT000040.Person)|0|1||
> representedOrganization|[POCD_MT000040.Organization](#POCD_MT000040.Organization)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.AssociatedEntity'></a>
>
> ### POCD_MT000040.AssociatedEntity
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[RoleClassAssociative](#RoleClassAssociative)|required|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CE](#CE)|0|1||
> addr|[AD](#AD)|0|unbounded||
> telecom|[TEL](#TEL)|0|unbounded||
> associatedPerson|[POCD_MT000040.Person](#POCD_MT000040.Person)|0|1||
> scopingOrganization|[POCD_MT000040.Organization](#POCD_MT000040.Organization)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Authenticator'></a>
>
> ### POCD_MT000040.Authenticator
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ParticipationType](#ParticipationType)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> time|[TS](#TS)|1|1||
> signatureCode|[CS](#CS)|1|1||
> assignedEntity|[POCD_MT000040.AssignedEntity](#POCD_MT000040.AssignedEntity)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Author'></a>
>
> ### POCD_MT000040.Author
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ParticipationType](#ParticipationType)|optional|||
> contextControlCode|[ContextControl](#ContextControl)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> functionCode|[CE](#CE)|0|1||
> time|[TS](#TS)|1|1||
> assignedAuthor|[POCD_MT000040.AssignedAuthor](#POCD_MT000040.AssignedAuthor)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.AuthoringDevice'></a>
>
> ### POCD_MT000040.AuthoringDevice
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[EntityClassDevice](#EntityClassDevice)|optional|||
> determinerCode|[EntityDeterminer](#EntityDeterminer)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> code|[CE](#CE)|0|1||
> manufacturerModelName|[SC](#SC)|0|1||
> softwareName|[SC](#SC)|0|1||
> asMaintainedEntity|[POCD_MT000040.MaintainedEntity](#POCD_MT000040.MaintainedEntity)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Authorization'></a>
>
> ### POCD_MT000040.Authorization
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ActRelationshipType](#ActRelationshipType)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> consent|[POCD_MT000040.Consent](#POCD_MT000040.Consent)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Birthplace'></a>
>
> ### POCD_MT000040.Birthplace
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[RoleClass](#RoleClass)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> place|[POCD_MT000040.Place](#POCD_MT000040.Place)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.ClinicalDocument'></a>
>
> ### POCD_MT000040.ClinicalDocument
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClinicalDocument](#ActClinicalDocument)|optional|||
> moodCode|[ActMood](#ActMood)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|1|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|1|1||
> code|[CE](#CE)|1|1||
> title|[ST](#ST)|0|1||
> effectiveTime|[TS](#TS)|1|1||
> confidentialityCode|[CE](#CE)|1|1||
> languageCode|[CS](#CS)|0|1||
> setId|[II](#II)|0|1||
> versionNumber|[INT](#INT)|0|1||
> copyTime|[TS](#TS)|0|1||
> recordTarget|[POCD_MT000040.RecordTarget](#POCD_MT000040.RecordTarget)|1|unbounded||
> author|[POCD_MT000040.Author](#POCD_MT000040.Author)|1|unbounded||
> dataEnterer|[POCD_MT000040.DataEnterer](#POCD_MT000040.DataEnterer)|0|1||
> informant|[POCD_MT000040.Informant12](#POCD_MT000040.Informant12)|0|unbounded||
> custodian|[POCD_MT000040.Custodian](#POCD_MT000040.Custodian)|1|1||
> informationRecipient|[POCD_MT000040.InformationRecipient](#POCD_MT000040.InformationRecipient)|0|unbounded||
> legalAuthenticator|[POCD_MT000040.LegalAuthenticator](#POCD_MT000040.LegalAuthenticator)|0|1||
> authenticator|[POCD_MT000040.Authenticator](#POCD_MT000040.Authenticator)|0|unbounded||
> participant|[POCD_MT000040.Participant1](#POCD_MT000040.Participant1)|0|unbounded||
> inFulfillmentOf|[POCD_MT000040.InFulfillmentOf](#POCD_MT000040.InFulfillmentOf)|0|unbounded||
> documentationOf|[POCD_MT000040.DocumentationOf](#POCD_MT000040.DocumentationOf)|0|unbounded||
> relatedDocument|[POCD_MT000040.RelatedDocument](#POCD_MT000040.RelatedDocument)|0|unbounded||
> authorization|[POCD_MT000040.Authorization](#POCD_MT000040.Authorization)|0|unbounded||
> componentOf|[POCD_MT000040.Component1](#POCD_MT000040.Component1)|0|1||
> component|[POCD_MT000040.Component2](#POCD_MT000040.Component2)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Component1'></a>
>
> ### POCD_MT000040.Component1
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ActRelationshipHasComponent](#ActRelationshipHasComponent)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> encompassingEncounter|[POCD_MT000040.EncompassingEncounter](#POCD_MT000040.EncompassingEncounter)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Component2'></a>
>
> ### POCD_MT000040.Component2
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ActRelationshipHasComponent](#ActRelationshipHasComponent)|optional|||
> contextConductionInd|[bl](#bl)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
>
> ### Choice
>
> Min occurs: 1
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> nonXMLBody|[POCD_MT000040.NonXMLBody](#POCD_MT000040.NonXMLBody)|1|1||
> structuredBody|[POCD_MT000040.StructuredBody](#POCD_MT000040.StructuredBody)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Component3'></a>
>
> ### POCD_MT000040.Component3
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ActRelationshipHasComponent](#ActRelationshipHasComponent)|optional|||
> contextConductionInd|[bl](#bl)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> section|[POCD_MT000040.Section](#POCD_MT000040.Section)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Component4'></a>
>
> ### POCD_MT000040.Component4
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ActRelationshipHasComponent](#ActRelationshipHasComponent)|optional|||
> contextConductionInd|[bl](#bl)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> sequenceNumber|[INT](#INT)|0|1||
> seperatableInd|[BL](#BL)|0|1||
>
> ### Choice
>
> Min occurs: 1
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> act|[POCD_MT000040.Act](#POCD_MT000040.Act)|1|1||
> encounter|[POCD_MT000040.Encounter](#POCD_MT000040.Encounter)|1|1||
> observation|[POCD_MT000040.Observation](#POCD_MT000040.Observation)|1|1||
> observationMedia|[POCD_MT000040.ObservationMedia](#POCD_MT000040.ObservationMedia)|1|1||
> organizer|[POCD_MT000040.Organizer](#POCD_MT000040.Organizer)|1|1||
> procedure|[POCD_MT000040.Procedure](#POCD_MT000040.Procedure)|1|1||
> regionOfInterest|[POCD_MT000040.RegionOfInterest](#POCD_MT000040.RegionOfInterest)|1|1||
> substanceAdministration|[POCD_MT000040.SubstanceAdministration](#POCD_MT000040.SubstanceAdministration)|1|1||
> supply|[POCD_MT000040.Supply](#POCD_MT000040.Supply)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Component5'></a>
>
> ### POCD_MT000040.Component5
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ActRelationshipHasComponent](#ActRelationshipHasComponent)|optional|||
> contextConductionInd|[bl](#bl)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> section|[POCD_MT000040.Section](#POCD_MT000040.Section)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Consent'></a>
>
> ### POCD_MT000040.Consent
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClass](#ActClass)|optional|||
> moodCode|[ActMood](#ActMood)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CE](#CE)|0|1||
> statusCode|[CS](#CS)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Consumable'></a>
>
> ### POCD_MT000040.Consumable
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ParticipationType](#ParticipationType)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> manufacturedProduct|[POCD_MT000040.ManufacturedProduct](#POCD_MT000040.ManufacturedProduct)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Criterion'></a>
>
> ### POCD_MT000040.Criterion
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClassObservation](#ActClassObservation)|optional|OBS||
> moodCode|[ActMood](#ActMood)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> code|[CD](#CD)|0|1||
> text|[ED](#ED)|0|1||
> value|[ANY](#ANY)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Custodian'></a>
>
> ### POCD_MT000040.Custodian
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ParticipationType](#ParticipationType)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> assignedCustodian|[POCD_MT000040.AssignedCustodian](#POCD_MT000040.AssignedCustodian)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.CustodianOrganization'></a>
>
> ### POCD_MT000040.CustodianOrganization
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[EntityClassOrganization](#EntityClassOrganization)|optional|||
> determinerCode|[EntityDeterminer](#EntityDeterminer)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|1|unbounded||
> name|[ON](#ON)|0|1||
> telecom|[TEL](#TEL)|0|1||
> addr|[AD](#AD)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.DataEnterer'></a>
>
> ### POCD_MT000040.DataEnterer
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ParticipationType](#ParticipationType)|optional|||
> contextControlCode|[ContextControl](#ContextControl)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> time|[TS](#TS)|0|1||
> assignedEntity|[POCD_MT000040.AssignedEntity](#POCD_MT000040.AssignedEntity)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Device'></a>
>
> ### POCD_MT000040.Device
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[EntityClassDevice](#EntityClassDevice)|optional|DEV||
> determinerCode|[EntityDeterminer](#EntityDeterminer)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> code|[CE](#CE)|0|1||
> manufacturerModelName|[SC](#SC)|0|1||
> softwareName|[SC](#SC)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.DocumentationOf'></a>
>
> ### POCD_MT000040.DocumentationOf
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ActRelationshipType](#ActRelationshipType)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> serviceEvent|[POCD_MT000040.ServiceEvent](#POCD_MT000040.ServiceEvent)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.EncompassingEncounter'></a>
>
> ### POCD_MT000040.EncompassingEncounter
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClass](#ActClass)|optional|||
> moodCode|[ActMood](#ActMood)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CE](#CE)|0|1||
> effectiveTime|[IVL_TS](#IVL_TS)|1|1||
> dischargeDispositionCode|[CE](#CE)|0|1||
> responsibleParty|[POCD_MT000040.ResponsibleParty](#POCD_MT000040.ResponsibleParty)|0|1||
> encounterParticipant|[POCD_MT000040.EncounterParticipant](#POCD_MT000040.EncounterParticipant)|0|unbounded||
> location|[POCD_MT000040.Location](#POCD_MT000040.Location)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Encounter'></a>
>
> ### POCD_MT000040.Encounter
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClass](#ActClass)|required|||
> moodCode|[x_DocumentEncounterMood](#x_DocumentEncounterMood)|required|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CD](#CD)|0|1||
> text|[ED](#ED)|0|1||
> statusCode|[CS](#CS)|0|1||
> effectiveTime|[IVL_TS](#IVL_TS)|0|1||
> priorityCode|[CE](#CE)|0|1||
> subject|[POCD_MT000040.Subject](#POCD_MT000040.Subject)|0|1||
> specimen|[POCD_MT000040.Specimen](#POCD_MT000040.Specimen)|0|unbounded||
> performer|[POCD_MT000040.Performer2](#POCD_MT000040.Performer2)|0|unbounded||
> author|[POCD_MT000040.Author](#POCD_MT000040.Author)|0|unbounded||
> informant|[POCD_MT000040.Informant12](#POCD_MT000040.Informant12)|0|unbounded||
> participant|[POCD_MT000040.Participant2](#POCD_MT000040.Participant2)|0|unbounded||
> entryRelationship|[POCD_MT000040.EntryRelationship](#POCD_MT000040.EntryRelationship)|0|unbounded||
> reference|[POCD_MT000040.Reference](#POCD_MT000040.Reference)|0|unbounded||
> precondition|[POCD_MT000040.Precondition](#POCD_MT000040.Precondition)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.EncounterParticipant'></a>
>
> ### POCD_MT000040.EncounterParticipant
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[x_EncounterParticipant](#x_EncounterParticipant)|required|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> time|[IVL_TS](#IVL_TS)|0|1||
> assignedEntity|[POCD_MT000040.AssignedEntity](#POCD_MT000040.AssignedEntity)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Entity'></a>
>
> ### POCD_MT000040.Entity
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[EntityClassRoot](#EntityClassRoot)|optional|ENT||
> determinerCode|[EntityDeterminer](#EntityDeterminer)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CE](#CE)|0|1||
> desc|[ED](#ED)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Entry'></a>
>
> ### POCD_MT000040.Entry
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[x_ActRelationshipEntry](#x_ActRelationshipEntry)|optional|COMP||
> contextConductionInd|[bl](#bl)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
>
> ### Choice
>
> Min occurs: 1
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> act|[POCD_MT000040.Act](#POCD_MT000040.Act)|1|1||
> encounter|[POCD_MT000040.Encounter](#POCD_MT000040.Encounter)|1|1||
> observation|[POCD_MT000040.Observation](#POCD_MT000040.Observation)|1|1||
> observationMedia|[POCD_MT000040.ObservationMedia](#POCD_MT000040.ObservationMedia)|1|1||
> organizer|[POCD_MT000040.Organizer](#POCD_MT000040.Organizer)|1|1||
> procedure|[POCD_MT000040.Procedure](#POCD_MT000040.Procedure)|1|1||
> regionOfInterest|[POCD_MT000040.RegionOfInterest](#POCD_MT000040.RegionOfInterest)|1|1||
> substanceAdministration|[POCD_MT000040.SubstanceAdministration](#POCD_MT000040.SubstanceAdministration)|1|1||
> supply|[POCD_MT000040.Supply](#POCD_MT000040.Supply)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.EntryRelationship'></a>
>
> ### POCD_MT000040.EntryRelationship
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[x_ActRelationshipEntryRelationship](#x_ActRelationshipEntryRelationship)|required|||
> inversionInd|[bl](#bl)|optional|||
> contextConductionInd|[bl](#bl)|optional|true||
> negationInd|[bl](#bl)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> sequenceNumber|[INT](#INT)|0|1||
> seperatableInd|[BL](#BL)|0|1||
>
> ### Choice
>
> Min occurs: 1
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> act|[POCD_MT000040.Act](#POCD_MT000040.Act)|1|1||
> encounter|[POCD_MT000040.Encounter](#POCD_MT000040.Encounter)|1|1||
> observation|[POCD_MT000040.Observation](#POCD_MT000040.Observation)|1|1||
> observationMedia|[POCD_MT000040.ObservationMedia](#POCD_MT000040.ObservationMedia)|1|1||
> organizer|[POCD_MT000040.Organizer](#POCD_MT000040.Organizer)|1|1||
> procedure|[POCD_MT000040.Procedure](#POCD_MT000040.Procedure)|1|1||
> regionOfInterest|[POCD_MT000040.RegionOfInterest](#POCD_MT000040.RegionOfInterest)|1|1||
> substanceAdministration|[POCD_MT000040.SubstanceAdministration](#POCD_MT000040.SubstanceAdministration)|1|1||
> supply|[POCD_MT000040.Supply](#POCD_MT000040.Supply)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.ExternalAct'></a>
>
> ### POCD_MT000040.ExternalAct
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClassRoot](#ActClassRoot)|optional|ACT||
> moodCode|[ActMood](#ActMood)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CD](#CD)|0|1||
> text|[ED](#ED)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.ExternalDocument'></a>
>
> ### POCD_MT000040.ExternalDocument
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClassDocument](#ActClassDocument)|optional|DOC||
> moodCode|[ActMood](#ActMood)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CD](#CD)|0|1||
> text|[ED](#ED)|0|1||
> setId|[II](#II)|0|1||
> versionNumber|[INT](#INT)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.ExternalObservation'></a>
>
> ### POCD_MT000040.ExternalObservation
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClassObservation](#ActClassObservation)|optional|OBS||
> moodCode|[ActMood](#ActMood)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CD](#CD)|0|1||
> text|[ED](#ED)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.ExternalProcedure'></a>
>
> ### POCD_MT000040.ExternalProcedure
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClass](#ActClass)|optional|||
> moodCode|[ActMood](#ActMood)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CD](#CD)|0|1||
> text|[ED](#ED)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Guardian'></a>
>
> ### POCD_MT000040.Guardian
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[RoleClass](#RoleClass)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CE](#CE)|0|1||
> addr|[AD](#AD)|0|unbounded||
> telecom|[TEL](#TEL)|0|unbounded||
>
> ### Choice
>
> Min occurs: 1
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> guardianPerson|[POCD_MT000040.Person](#POCD_MT000040.Person)|1|1||
> guardianOrganization|[POCD_MT000040.Organization](#POCD_MT000040.Organization)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.HealthCareFacility'></a>
>
> ### POCD_MT000040.HealthCareFacility
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[RoleClassServiceDeliveryLocation](#RoleClassServiceDeliveryLocation)|optional|SDLOC||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CE](#CE)|0|1||
> location|[POCD_MT000040.Place](#POCD_MT000040.Place)|0|1||
> serviceProviderOrganization|[POCD_MT000040.Organization](#POCD_MT000040.Organization)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Informant12'></a>
>
> ### POCD_MT000040.Informant12
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ParticipationType](#ParticipationType)|optional|||
> contextControlCode|[ContextControl](#ContextControl)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
>
> ### Choice
>
> Min occurs: 1
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> assignedEntity|[POCD_MT000040.AssignedEntity](#POCD_MT000040.AssignedEntity)|1|1||
> relatedEntity|[POCD_MT000040.RelatedEntity](#POCD_MT000040.RelatedEntity)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.InformationRecipient'></a>
>
> ### POCD_MT000040.InformationRecipient
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[x_InformationRecipient](#x_InformationRecipient)|optional|PRCP||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> intendedRecipient|[POCD_MT000040.IntendedRecipient](#POCD_MT000040.IntendedRecipient)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.InFulfillmentOf'></a>
>
> ### POCD_MT000040.InFulfillmentOf
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ActRelationshipFulfills](#ActRelationshipFulfills)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> order|[POCD_MT000040.Order](#POCD_MT000040.Order)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.IntendedRecipient'></a>
>
> ### POCD_MT000040.IntendedRecipient
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[x_InformationRecipientRole](#x_InformationRecipientRole)|optional|ASSIGNED||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> addr|[AD](#AD)|0|unbounded||
> telecom|[TEL](#TEL)|0|unbounded||
> informationRecipient|[POCD_MT000040.Person](#POCD_MT000040.Person)|0|1||
> receivedOrganization|[POCD_MT000040.Organization](#POCD_MT000040.Organization)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.LabeledDrug'></a>
>
> ### POCD_MT000040.LabeledDrug
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[EntityClassManufacturedMaterial](#EntityClassManufacturedMaterial)|optional|||
> determinerCode|[EntityDeterminerDetermined](#EntityDeterminerDetermined)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> code|[CE](#CE)|0|1||
> name|[EN](#EN)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.LanguageCommunication'></a>
>
> ### POCD_MT000040.LanguageCommunication
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> languageCode|[CS](#CS)|0|1||
> modeCode|[CE](#CE)|0|1||
> proficiencyLevelCode|[CE](#CE)|0|1||
> preferenceInd|[BL](#BL)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.LegalAuthenticator'></a>
>
> ### POCD_MT000040.LegalAuthenticator
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ParticipationType](#ParticipationType)|optional|||
> contextControlCode|[ContextControl](#ContextControl)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> time|[TS](#TS)|1|1||
> signatureCode|[CS](#CS)|1|1||
> assignedEntity|[POCD_MT000040.AssignedEntity](#POCD_MT000040.AssignedEntity)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Location'></a>
>
> ### POCD_MT000040.Location
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ParticipationTargetLocation](#ParticipationTargetLocation)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> healthCareFacility|[POCD_MT000040.HealthCareFacility](#POCD_MT000040.HealthCareFacility)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.MaintainedEntity'></a>
>
> ### POCD_MT000040.MaintainedEntity
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[RoleClass](#RoleClass)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> effectiveTime|[IVL_TS](#IVL_TS)|0|1||
> maintainingPerson|[POCD_MT000040.Person](#POCD_MT000040.Person)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.ManufacturedProduct'></a>
>
> ### POCD_MT000040.ManufacturedProduct
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[RoleClassManufacturedProduct](#RoleClassManufacturedProduct)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> manufacturerOrganization|[POCD_MT000040.Organization](#POCD_MT000040.Organization)|0|1||
>
> ### Choice
>
> Min occurs: 1
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> manufacturedLabeledDrug|[POCD_MT000040.LabeledDrug](#POCD_MT000040.LabeledDrug)|1|1||
> manufacturedMaterial|[POCD_MT000040.Material](#POCD_MT000040.Material)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Material'></a>
>
> ### POCD_MT000040.Material
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[EntityClassManufacturedMaterial](#EntityClassManufacturedMaterial)|optional|||
> determinerCode|[EntityDeterminerDetermined](#EntityDeterminerDetermined)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> code|[CE](#CE)|0|1||
> name|[EN](#EN)|0|1||
> lotNumberText|[ST](#ST)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.NonXMLBody'></a>
>
> ### POCD_MT000040.NonXMLBody
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClass](#ActClass)|optional|||
> moodCode|[ActMood](#ActMood)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> text|[ED](#ED)|1|1||
> confidentialityCode|[CE](#CE)|0|1||
> languageCode|[CS](#CS)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Observation'></a>
>
> ### POCD_MT000040.Observation
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClassObservation](#ActClassObservation)|required|||
> moodCode|[x_ActMoodDocumentObservation](#x_ActMoodDocumentObservation)|required|||
> negationInd|[bl](#bl)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CD](#CD)|1|1||
> derivationExpr|[ST](#ST)|0|1||
> text|[ED](#ED)|0|1||
> statusCode|[CS](#CS)|0|1||
> effectiveTime|[IVL_TS](#IVL_TS)|0|1||
> priorityCode|[CE](#CE)|0|1||
> repeatNumber|[IVL_INT](#IVL_INT)|0|1||
> languageCode|[CS](#CS)|0|1||
> value|[ANY](#ANY)|0|unbounded||
> interpretationCode|[CE](#CE)|0|unbounded||
> methodCode|[CE](#CE)|0|unbounded||
> targetSiteCode|[CD](#CD)|0|unbounded||
> subject|[POCD_MT000040.Subject](#POCD_MT000040.Subject)|0|1||
> specimen|[POCD_MT000040.Specimen](#POCD_MT000040.Specimen)|0|unbounded||
> performer|[POCD_MT000040.Performer2](#POCD_MT000040.Performer2)|0|unbounded||
> author|[POCD_MT000040.Author](#POCD_MT000040.Author)|0|unbounded||
> informant|[POCD_MT000040.Informant12](#POCD_MT000040.Informant12)|0|unbounded||
> participant|[POCD_MT000040.Participant2](#POCD_MT000040.Participant2)|0|unbounded||
> entryRelationship|[POCD_MT000040.EntryRelationship](#POCD_MT000040.EntryRelationship)|0|unbounded||
> reference|[POCD_MT000040.Reference](#POCD_MT000040.Reference)|0|unbounded||
> precondition|[POCD_MT000040.Precondition](#POCD_MT000040.Precondition)|0|unbounded||
> referenceRange|[POCD_MT000040.ReferenceRange](#POCD_MT000040.ReferenceRange)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.ObservationMedia'></a>
>
> ### POCD_MT000040.ObservationMedia
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClassObservation](#ActClassObservation)|required|||
> moodCode|[ActMood](#ActMood)|required|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> languageCode|[CS](#CS)|0|1||
> value|[ED](#ED)|1|1||
> subject|[POCD_MT000040.Subject](#POCD_MT000040.Subject)|0|1||
> specimen|[POCD_MT000040.Specimen](#POCD_MT000040.Specimen)|0|unbounded||
> performer|[POCD_MT000040.Performer2](#POCD_MT000040.Performer2)|0|unbounded||
> author|[POCD_MT000040.Author](#POCD_MT000040.Author)|0|unbounded||
> informant|[POCD_MT000040.Informant12](#POCD_MT000040.Informant12)|0|unbounded||
> participant|[POCD_MT000040.Participant2](#POCD_MT000040.Participant2)|0|unbounded||
> entryRelationship|[POCD_MT000040.EntryRelationship](#POCD_MT000040.EntryRelationship)|0|unbounded||
> reference|[POCD_MT000040.Reference](#POCD_MT000040.Reference)|0|unbounded||
> precondition|[POCD_MT000040.Precondition](#POCD_MT000040.Precondition)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.ObservationRange'></a>
>
> ### POCD_MT000040.ObservationRange
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClassObservation](#ActClassObservation)|optional|OBS||
> moodCode|[ActMood](#ActMood)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> code|[CD](#CD)|0|1||
> text|[ED](#ED)|0|1||
> value|[ANY](#ANY)|0|1||
> interpretationCode|[CE](#CE)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Order'></a>
>
> ### POCD_MT000040.Order
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClassRoot](#ActClassRoot)|optional|ACT||
> moodCode|[ActMood](#ActMood)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|1|unbounded||
> code|[CE](#CE)|0|1||
> priorityCode|[CE](#CE)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Organization'></a>
>
> ### POCD_MT000040.Organization
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[EntityClassOrganization](#EntityClassOrganization)|optional|||
> determinerCode|[EntityDeterminer](#EntityDeterminer)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> name|[ON](#ON)|0|unbounded||
> telecom|[TEL](#TEL)|0|unbounded||
> addr|[AD](#AD)|0|unbounded||
> standardIndustryClassCode|[CE](#CE)|0|1||
> asOrganizationPartOf|[POCD_MT000040.OrganizationPartOf](#POCD_MT000040.OrganizationPartOf)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.OrganizationPartOf'></a>
>
> ### POCD_MT000040.OrganizationPartOf
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[RoleClass](#RoleClass)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CE](#CE)|0|1||
> statusCode|[CS](#CS)|0|1||
> effectiveTime|[IVL_TS](#IVL_TS)|0|1||
> wholeOrganization|[POCD_MT000040.Organization](#POCD_MT000040.Organization)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Organizer'></a>
>
> ### POCD_MT000040.Organizer
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[x_ActClassDocumentEntryOrganizer](#x_ActClassDocumentEntryOrganizer)|required|||
> moodCode|[ActMood](#ActMood)|required|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CD](#CD)|0|1||
> statusCode|[CS](#CS)|1|1||
> effectiveTime|[IVL_TS](#IVL_TS)|0|1||
> subject|[POCD_MT000040.Subject](#POCD_MT000040.Subject)|0|1||
> specimen|[POCD_MT000040.Specimen](#POCD_MT000040.Specimen)|0|unbounded||
> performer|[POCD_MT000040.Performer2](#POCD_MT000040.Performer2)|0|unbounded||
> author|[POCD_MT000040.Author](#POCD_MT000040.Author)|0|unbounded||
> informant|[POCD_MT000040.Informant12](#POCD_MT000040.Informant12)|0|unbounded||
> participant|[POCD_MT000040.Participant2](#POCD_MT000040.Participant2)|0|unbounded||
> reference|[POCD_MT000040.Reference](#POCD_MT000040.Reference)|0|unbounded||
> precondition|[POCD_MT000040.Precondition](#POCD_MT000040.Precondition)|0|unbounded||
> component|[POCD_MT000040.Component4](#POCD_MT000040.Component4)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.ParentDocument'></a>
>
> ### POCD_MT000040.ParentDocument
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClinicalDocument](#ActClinicalDocument)|optional|||
> moodCode|[ActMood](#ActMood)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|1|unbounded||
> code|[CD](#CD)|0|1||
> text|[ED](#ED)|0|1||
> setId|[II](#II)|0|1||
> versionNumber|[INT](#INT)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Participant1'></a>
>
> ### POCD_MT000040.Participant1
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ParticipationType](#ParticipationType)|required|||
> contextControlCode|[ContextControl](#ContextControl)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> functionCode|[CE](#CE)|0|1||
> time|[IVL_TS](#IVL_TS)|0|1||
> associatedEntity|[POCD_MT000040.AssociatedEntity](#POCD_MT000040.AssociatedEntity)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Participant2'></a>
>
> ### POCD_MT000040.Participant2
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ParticipationType](#ParticipationType)|required|||
> contextControlCode|[ContextControl](#ContextControl)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> time|[IVL_TS](#IVL_TS)|0|1||
> awarenessCode|[CE](#CE)|0|1||
> participantRole|[POCD_MT000040.ParticipantRole](#POCD_MT000040.ParticipantRole)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.ParticipantRole'></a>
>
> ### POCD_MT000040.ParticipantRole
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[RoleClassRoot](#RoleClassRoot)|optional|ROL||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CE](#CE)|0|1||
> addr|[AD](#AD)|0|unbounded||
> telecom|[TEL](#TEL)|0|unbounded||
> scopingEntity|[POCD_MT000040.Entity](#POCD_MT000040.Entity)|0|1||
>
> ### Choice
>
> Min occurs: 1
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> playingDevice|[POCD_MT000040.Device](#POCD_MT000040.Device)|0|1||
> playingEntity|[POCD_MT000040.PlayingEntity](#POCD_MT000040.PlayingEntity)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Patient'></a>
>
> ### POCD_MT000040.Patient
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[EntityClass](#EntityClass)|optional|||
> determinerCode|[EntityDeterminer](#EntityDeterminer)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|1||
> name|[PN](#PN)|0|unbounded||
> administrativeGenderCode|[CE](#CE)|0|1||
> birthTime|[TS](#TS)|0|1||
> maritalStatusCode|[CE](#CE)|0|1||
> religiousAffiliationCode|[CE](#CE)|0|1||
> raceCode|[CE](#CE)|0|1||
> ethnicGroupCode|[CE](#CE)|0|1||
> guardian|[POCD_MT000040.Guardian](#POCD_MT000040.Guardian)|0|unbounded||
> birthplace|[POCD_MT000040.Birthplace](#POCD_MT000040.Birthplace)|0|1||
> languageCommunication|[POCD_MT000040.LanguageCommunication](#POCD_MT000040.LanguageCommunication)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.PatientRole'></a>
>
> ### POCD_MT000040.PatientRole
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[RoleClass](#RoleClass)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|1|unbounded||
> addr|[AD](#AD)|0|unbounded||
> telecom|[TEL](#TEL)|0|unbounded||
> patient|[POCD_MT000040.Patient](#POCD_MT000040.Patient)|0|1||
> providerOrganization|[POCD_MT000040.Organization](#POCD_MT000040.Organization)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Performer1'></a>
>
> ### POCD_MT000040.Performer1
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[x_ServiceEventPerformer](#x_ServiceEventPerformer)|required|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> functionCode|[CE](#CE)|0|1||
> time|[IVL_TS](#IVL_TS)|0|1||
> assignedEntity|[POCD_MT000040.AssignedEntity](#POCD_MT000040.AssignedEntity)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Performer2'></a>
>
> ### POCD_MT000040.Performer2
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ParticipationPhysicalPerformer](#ParticipationPhysicalPerformer)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> time|[IVL_TS](#IVL_TS)|0|1||
> modeCode|[CE](#CE)|0|1||
> assignedEntity|[POCD_MT000040.AssignedEntity](#POCD_MT000040.AssignedEntity)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Person'></a>
>
> ### POCD_MT000040.Person
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[EntityClass](#EntityClass)|optional|||
> determinerCode|[EntityDeterminer](#EntityDeterminer)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> name|[PN](#PN)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Place'></a>
>
> ### POCD_MT000040.Place
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[EntityClassPlace](#EntityClassPlace)|optional|||
> determinerCode|[EntityDeterminer](#EntityDeterminer)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> name|[EN](#EN)|0|1||
> addr|[AD](#AD)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.PlayingEntity'></a>
>
> ### POCD_MT000040.PlayingEntity
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[EntityClassRoot](#EntityClassRoot)|optional|ENT||
> determinerCode|[EntityDeterminer](#EntityDeterminer)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> code|[CE](#CE)|0|1||
> quantity|[PQ](#PQ)|0|unbounded||
> name|[PN](#PN)|0|unbounded||
> desc|[ED](#ED)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Precondition'></a>
>
> ### POCD_MT000040.Precondition
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ActRelationshipType](#ActRelationshipType)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> criterion|[POCD_MT000040.Criterion](#POCD_MT000040.Criterion)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Procedure'></a>
>
> ### POCD_MT000040.Procedure
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClass](#ActClass)|required|||
> moodCode|[x_DocumentProcedureMood](#x_DocumentProcedureMood)|required|||
> negationInd|[bl](#bl)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CD](#CD)|0|1||
> text|[ED](#ED)|0|1||
> statusCode|[CS](#CS)|0|1||
> effectiveTime|[IVL_TS](#IVL_TS)|0|1||
> priorityCode|[CE](#CE)|0|1||
> languageCode|[CS](#CS)|0|1||
> methodCode|[CE](#CE)|0|unbounded||
> approachSiteCode|[CD](#CD)|0|unbounded||
> targetSiteCode|[CD](#CD)|0|unbounded||
> subject|[POCD_MT000040.Subject](#POCD_MT000040.Subject)|0|1||
> specimen|[POCD_MT000040.Specimen](#POCD_MT000040.Specimen)|0|unbounded||
> performer|[POCD_MT000040.Performer2](#POCD_MT000040.Performer2)|0|unbounded||
> author|[POCD_MT000040.Author](#POCD_MT000040.Author)|0|unbounded||
> informant|[POCD_MT000040.Informant12](#POCD_MT000040.Informant12)|0|unbounded||
> participant|[POCD_MT000040.Participant2](#POCD_MT000040.Participant2)|0|unbounded||
> entryRelationship|[POCD_MT000040.EntryRelationship](#POCD_MT000040.EntryRelationship)|0|unbounded||
> reference|[POCD_MT000040.Reference](#POCD_MT000040.Reference)|0|unbounded||
> precondition|[POCD_MT000040.Precondition](#POCD_MT000040.Precondition)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Product'></a>
>
> ### POCD_MT000040.Product
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ParticipationType](#ParticipationType)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> manufacturedProduct|[POCD_MT000040.ManufacturedProduct](#POCD_MT000040.ManufacturedProduct)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.RecordTarget'></a>
>
> ### POCD_MT000040.RecordTarget
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ParticipationType](#ParticipationType)|optional|||
> contextControlCode|[ContextControl](#ContextControl)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> patientRole|[POCD_MT000040.PatientRole](#POCD_MT000040.PatientRole)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Reference'></a>
>
> ### POCD_MT000040.Reference
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[x_ActRelationshipExternalReference](#x_ActRelationshipExternalReference)|required|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> seperatableInd|[BL](#BL)|0|1||
>
> ### Choice
>
> Min occurs: 1
>
> Max occurs: 1
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> externalAct|[POCD_MT000040.ExternalAct](#POCD_MT000040.ExternalAct)|1|1||
> externalObservation|[POCD_MT000040.ExternalObservation](#POCD_MT000040.ExternalObservation)|1|1||
> externalProcedure|[POCD_MT000040.ExternalProcedure](#POCD_MT000040.ExternalProcedure)|1|1||
> externalDocument|[POCD_MT000040.ExternalDocument](#POCD_MT000040.ExternalDocument)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.ReferenceRange'></a>
>
> ### POCD_MT000040.ReferenceRange
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ActRelationshipType](#ActRelationshipType)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> observationRange|[POCD_MT000040.ObservationRange](#POCD_MT000040.ObservationRange)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.RegionOfInterest.value'></a>
>
> ### POCD_MT000040.RegionOfInterest.value
>
> ### Extension
>
> Base type: [INT](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#INT)
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> unsorted|boolean||false||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.RegionOfInterest'></a>
>
> ### POCD_MT000040.RegionOfInterest
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClass](#ActClass)|required|||
> moodCode|[ActMood](#ActMood)|required|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|1|unbounded||
> code|[CS](#CS)|1|1||
> value|[POCD_MT000040.RegionOfInterest.value](#POCD_MT000040.RegionOfInterest.value)|1|unbounded||
> subject|[POCD_MT000040.Subject](#POCD_MT000040.Subject)|0|1||
> specimen|[POCD_MT000040.Specimen](#POCD_MT000040.Specimen)|0|unbounded||
> performer|[POCD_MT000040.Performer2](#POCD_MT000040.Performer2)|0|unbounded||
> author|[POCD_MT000040.Author](#POCD_MT000040.Author)|0|unbounded||
> informant|[POCD_MT000040.Informant12](#POCD_MT000040.Informant12)|0|unbounded||
> participant|[POCD_MT000040.Participant2](#POCD_MT000040.Participant2)|0|unbounded||
> entryRelationship|[POCD_MT000040.EntryRelationship](#POCD_MT000040.EntryRelationship)|0|unbounded||
> reference|[POCD_MT000040.Reference](#POCD_MT000040.Reference)|0|unbounded||
> precondition|[POCD_MT000040.Precondition](#POCD_MT000040.Precondition)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.RelatedDocument'></a>
>
> ### POCD_MT000040.RelatedDocument
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[x_ActRelationshipDocument](#x_ActRelationshipDocument)|required|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> parentDocument|[POCD_MT000040.ParentDocument](#POCD_MT000040.ParentDocument)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.RelatedEntity'></a>
>
> ### POCD_MT000040.RelatedEntity
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[RoleClassMutualRelationship](#RoleClassMutualRelationship)|required|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> code|[CE](#CE)|0|1||
> addr|[AD](#AD)|0|unbounded||
> telecom|[TEL](#TEL)|0|unbounded||
> effectiveTime|[IVL_TS](#IVL_TS)|0|1||
> relatedPerson|[POCD_MT000040.Person](#POCD_MT000040.Person)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.RelatedSubject'></a>
>
> ### POCD_MT000040.RelatedSubject
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[x_DocumentSubject](#x_DocumentSubject)|optional|PRS||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> code|[CE](#CE)|0|1||
> addr|[AD](#AD)|0|unbounded||
> telecom|[TEL](#TEL)|0|unbounded||
> subject|[POCD_MT000040.SubjectPerson](#POCD_MT000040.SubjectPerson)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.ResponsibleParty'></a>
>
> ### POCD_MT000040.ResponsibleParty
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ParticipationType](#ParticipationType)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> assignedEntity|[POCD_MT000040.AssignedEntity](#POCD_MT000040.AssignedEntity)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Section'></a>
>
> ### POCD_MT000040.Section
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> ID|ID||||
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClass](#ActClass)|optional|||
> moodCode|[ActMood](#ActMood)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|1||
> code|[CE](#CE)|0|1||
> title|[ST](#ST)|0|1||
> text|[StrucDoc.Text](#StrucDoc.Text)|0|1||
> confidentialityCode|[CE](#CE)|0|1||
> languageCode|[CS](#CS)|0|1||
> subject|[POCD_MT000040.Subject](#POCD_MT000040.Subject)|0|1||
> author|[POCD_MT000040.Author](#POCD_MT000040.Author)|0|unbounded||
> informant|[POCD_MT000040.Informant12](#POCD_MT000040.Informant12)|0|unbounded||
> entry|[POCD_MT000040.Entry](#POCD_MT000040.Entry)|0|unbounded||
> component|[POCD_MT000040.Component5](#POCD_MT000040.Component5)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.ServiceEvent'></a>
>
> ### POCD_MT000040.ServiceEvent
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClassRoot](#ActClassRoot)|optional|ACT||
> moodCode|[ActMood](#ActMood)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CE](#CE)|0|1||
> effectiveTime|[IVL_TS](#IVL_TS)|0|1||
> performer|[POCD_MT000040.Performer1](#POCD_MT000040.Performer1)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Specimen'></a>
>
> ### POCD_MT000040.Specimen
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ParticipationType](#ParticipationType)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> specimenRole|[POCD_MT000040.SpecimenRole](#POCD_MT000040.SpecimenRole)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.SpecimenRole'></a>
>
> ### POCD_MT000040.SpecimenRole
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[RoleClassSpecimen](#RoleClassSpecimen)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> specimenPlayingEntity|[POCD_MT000040.PlayingEntity](#POCD_MT000040.PlayingEntity)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.StructuredBody'></a>
>
> ### POCD_MT000040.StructuredBody
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClass](#ActClass)|optional|||
> moodCode|[ActMood](#ActMood)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> confidentialityCode|[CE](#CE)|0|1||
> languageCode|[CS](#CS)|0|1||
> component|[POCD_MT000040.Component3](#POCD_MT000040.Component3)|1|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Subject'></a>
>
> ### POCD_MT000040.Subject
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> typeCode|[ParticipationTargetSubject](#ParticipationTargetSubject)|optional|||
> contextControlCode|[ContextControl](#ContextControl)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> awarenessCode|[CE](#CE)|0|1||
> relatedSubject|[POCD_MT000040.RelatedSubject](#POCD_MT000040.RelatedSubject)|1|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.SubjectPerson'></a>
>
> ### POCD_MT000040.SubjectPerson
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[EntityClass](#EntityClass)|optional|||
> determinerCode|[EntityDeterminer](#EntityDeterminer)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> name|[PN](#PN)|0|unbounded||
> administrativeGenderCode|[CE](#CE)|0|1||
> birthTime|[TS](#TS)|0|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.SubstanceAdministration'></a>
>
> ### POCD_MT000040.SubstanceAdministration
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClass](#ActClass)|required|||
> moodCode|[x_DocumentSubstanceMood](#x_DocumentSubstanceMood)|required|||
> negationInd|[bl](#bl)|optional|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CD](#CD)|0|1||
> text|[ED](#ED)|0|1||
> statusCode|[CS](#CS)|0|1||
> effectiveTime|[SXCM_TS](#SXCM_TS)|0|unbounded||
> priorityCode|[CE](#CE)|0|1||
> repeatNumber|[IVL_INT](#IVL_INT)|0|1||
> routeCode|[CE](#CE)|0|1||
> approachSiteCode|[CD](#CD)|0|unbounded||
> doseQuantity|[IVL_PQ](#IVL_PQ)|0|1||
> rateQuantity|[IVL_PQ](#IVL_PQ)|0|1||
> maxDoseQuantity|[RTO_PQ_PQ](#RTO_PQ_PQ)|0|1||
> administrationUnitCode|[CE](#CE)|0|1||
> subject|[POCD_MT000040.Subject](#POCD_MT000040.Subject)|0|1||
> specimen|[POCD_MT000040.Specimen](#POCD_MT000040.Specimen)|0|unbounded||
> consumable|[POCD_MT000040.Consumable](#POCD_MT000040.Consumable)|1|1||
> performer|[POCD_MT000040.Performer2](#POCD_MT000040.Performer2)|0|unbounded||
> author|[POCD_MT000040.Author](#POCD_MT000040.Author)|0|unbounded||
> informant|[POCD_MT000040.Informant12](#POCD_MT000040.Informant12)|0|unbounded||
> participant|[POCD_MT000040.Participant2](#POCD_MT000040.Participant2)|0|unbounded||
> entryRelationship|[POCD_MT000040.EntryRelationship](#POCD_MT000040.EntryRelationship)|0|unbounded||
> reference|[POCD_MT000040.Reference](#POCD_MT000040.Reference)|0|unbounded||
> precondition|[POCD_MT000040.Precondition](#POCD_MT000040.Precondition)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='POCD_MT000040.Supply'></a>
>
> ### POCD_MT000040.Supply
>
> ### Attributes
>
> Name|Type|Use|Default value|Summary|Remarks
> ---|---|---|---|---|---
> nullFlavor|[NullFlavor](#NullFlavor)|optional|||
> classCode|[ActClassSupply](#ActClassSupply)|required|||
> moodCode|[x_DocumentSubstanceMood](#x_DocumentSubstanceMood)|required|||
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> realmCode|[CS](#CS)|0|unbounded||
> typeId|[POCD_MT000040.InfrastructureRoot.typeId](#POCD_MT000040.InfrastructureRoot.typeId)|0|1||
> templateId|[II](#II)|0|unbounded||
> id|[II](#II)|0|unbounded||
> code|[CD](#CD)|0|1||
> text|[ED](#ED)|0|1||
> statusCode|[CS](#CS)|0|1||
> effectiveTime|[SXCM_TS](#SXCM_TS)|0|unbounded||
> priorityCode|[CE](#CE)|0|unbounded||
> repeatNumber|[IVL_INT](#IVL_INT)|0|1||
> independentInd|[BL](#BL)|0|1||
> quantity|[PQ](#PQ)|0|1||
> expectedUseTime|[IVL_TS](#IVL_TS)|0|1||
> subject|[POCD_MT000040.Subject](#POCD_MT000040.Subject)|0|1||
> specimen|[POCD_MT000040.Specimen](#POCD_MT000040.Specimen)|0|unbounded||
> product|[POCD_MT000040.Product](#POCD_MT000040.Product)|0|1||
> performer|[POCD_MT000040.Performer2](#POCD_MT000040.Performer2)|0|unbounded||
> author|[POCD_MT000040.Author](#POCD_MT000040.Author)|0|unbounded||
> informant|[POCD_MT000040.Informant12](#POCD_MT000040.Informant12)|0|unbounded||
> participant|[POCD_MT000040.Participant2](#POCD_MT000040.Participant2)|0|unbounded||
> entryRelationship|[POCD_MT000040.EntryRelationship](#POCD_MT000040.EntryRelationship)|0|unbounded||
> reference|[POCD_MT000040.Reference](#POCD_MT000040.Reference)|0|unbounded||
> precondition|[POCD_MT000040.Precondition](#POCD_MT000040.Precondition)|0|unbounded||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Classes'></a>
>
> ### Classes
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AddressPartType'></a>
>
> ### AddressPartType
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AdditionalLocator'></a>
>
> ### AdditionalLocator
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ADL||
> enumeration|UNID||
> enumeration|UNIT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DeliveryAddressLine'></a>
>
> ### DeliveryAddressLine
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|DAL||
> enumeration|DINST||
> enumeration|DINSTA||
> enumeration|DINSTQ||
> enumeration|DMOD||
> enumeration|DMODID||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StreetAddressLine'></a>
>
> ### StreetAddressLine
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='BuildingNumber'></a>
>
> ### BuildingNumber
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|BNR||
> enumeration|BNN||
> enumeration|BNS||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StreetName'></a>
>
> ### StreetName
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|STR||
> enumeration|STB||
> enumeration|STTYP||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CalendarCycle'></a>
>
> ### CalendarCycle
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CalendarCycleOneLetter'></a>
>
> ### CalendarCycleOneLetter
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|D||
> enumeration|H||
> enumeration|J||
> enumeration|M||
> enumeration|N||
> enumeration|S||
> enumeration|W||
> enumeration|Y||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CalendarCycleTwoLetter'></a>
>
> ### CalendarCycleTwoLetter
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='GregorianCalendarCycle'></a>
>
> ### GregorianCalendarCycle
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CompressionAlgorithm'></a>
>
> ### CompressionAlgorithm
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|DF||
> enumeration|GZ||
> enumeration|Z||
> enumeration|ZL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Currency'></a>
>
> ### Currency
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ARS||
> enumeration|AUD||
> enumeration|BRL||
> enumeration|CAD||
> enumeration|CHF||
> enumeration|CLF||
> enumeration|CNY||
> enumeration|DEM||
> enumeration|ESP||
> enumeration|EUR||
> enumeration|FIM||
> enumeration|FRF||
> enumeration|GBP||
> enumeration|ILS||
> enumeration|INR||
> enumeration|JPY||
> enumeration|KRW||
> enumeration|MXN||
> enumeration|NLG||
> enumeration|NZD||
> enumeration|PHP||
> enumeration|RUR||
> enumeration|THB||
> enumeration|TRL||
> enumeration|TWD||
> enumeration|USD||
> enumeration|ZAR||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EntityNamePartQualifier'></a>
>
> ### EntityNamePartQualifier
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='OrganizationNamePartQualifier'></a>
>
> ### OrganizationNamePartQualifier
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|LS||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PersonNamePartQualifier'></a>
>
> ### PersonNamePartQualifier
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PersonNamePartAffixTypes'></a>
>
> ### PersonNamePartAffixTypes
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|AC||
> enumeration|NB||
> enumeration|PR||
> enumeration|VV||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PersonNamePartChangeQualifier'></a>
>
> ### PersonNamePartChangeQualifier
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|AD||
> enumeration|BR||
> enumeration|SP||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PersonNamePartMiscQualifier'></a>
>
> ### PersonNamePartMiscQualifier
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|CL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EntityNamePartType'></a>
>
> ### EntityNamePartType
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_OrganizationNamePartType'></a>
>
> ### x_OrganizationNamePartType
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|DEL||
> enumeration|PFX||
> enumeration|SFX||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_PersonNamePartType'></a>
>
> ### x_PersonNamePartType
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|DEL||
> enumeration|FAM||
> enumeration|GIV||
> enumeration|PFX||
> enumeration|SFX||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EntityNameUse'></a>
>
> ### EntityNameUse
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='OrganizationNameUse'></a>
>
> ### OrganizationNameUse
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PersonNameUse'></a>
>
> ### PersonNameUse
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EntityNameSearchUse'></a>
>
> ### EntityNameSearchUse
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SRCH||
> enumeration|PHON||
> enumeration|SNDX||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='NamePseudonymUse'></a>
>
> ### NamePseudonymUse
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|P||
> enumeration|A||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntegrityCheckAlgorithm'></a>
>
> ### IntegrityCheckAlgorithm
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SHA-1||
> enumeration|SHA-256||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='MediaType'></a>
>
> ### MediaType
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ApplicationMediaType'></a>
>
> ### ApplicationMediaType
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|application/dicom||
> enumeration|application/msword||
> enumeration|application/pdf||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AudioMediaType'></a>
>
> ### AudioMediaType
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|audio/basic||
> enumeration|audio/k32adpcm||
> enumeration|audio/mpeg||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ImageMediaType'></a>
>
> ### ImageMediaType
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|image/g3fax||
> enumeration|image/gif||
> enumeration|image/jpeg||
> enumeration|image/png||
> enumeration|image/tiff||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ModelMediaType'></a>
>
> ### ModelMediaType
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|model/vrml||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='MultipartMediaType'></a>
>
> ### MultipartMediaType
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|multipart/x-hl7-cda-level1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TextMediaType'></a>
>
> ### TextMediaType
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|text/html||
> enumeration|text/plain||
> enumeration|text/rtf||
> enumeration|text/sgml||
> enumeration|text/x-hl7-ft||
> enumeration|text/xml||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='VideoMediaType'></a>
>
> ### VideoMediaType
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|video/mpeg||
> enumeration|video/x-avi||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PostalAddressUse'></a>
>
> ### PostalAddressUse
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='NameRepresentationUse'></a>
>
> ### NameRepresentationUse
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ABC||
> enumeration|IDE||
> enumeration|SYL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ProbabilityDistributionType'></a>
>
> ### ProbabilityDistributionType
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|B||
> enumeration|E||
> enumeration|F||
> enumeration|G||
> enumeration|LN||
> enumeration|N||
> enumeration|T||
> enumeration|U||
> enumeration|X2||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SetOperator'></a>
>
> ### SetOperator
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|A||
> enumeration|E||
> enumeration|H||
> enumeration|I||
> enumeration|P||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TelecommunicationAddressUse'></a>
>
> ### TelecommunicationAddressUse
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AddressUse'></a>
>
> ### AddressUse
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='HomeAddressUse'></a>
>
> ### HomeAddressUse
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|H||
> enumeration|HP||
> enumeration|HV||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='WorkPlaceAddressUse'></a>
>
> ### WorkPlaceAddressUse
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|WP||
> enumeration|DIR||
> enumeration|PUB||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TimingEvent'></a>
>
> ### TimingEvent
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|AC||
> enumeration|ACD||
> enumeration|ACM||
> enumeration|ACV||
> enumeration|HS||
> enumeration|IC||
> enumeration|ICD||
> enumeration|ICM||
> enumeration|ICV||
> enumeration|PC||
> enumeration|PCD||
> enumeration|PCM||
> enumeration|PCV||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='URLScheme'></a>
>
> ### URLScheme
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|fax||
> enumeration|file||
> enumeration|ftp||
> enumeration|http||
> enumeration|mailto||
> enumeration|mllp||
> enumeration|modem||
> enumeration|nfs||
> enumeration|tel||
> enumeration|telnet||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActClass'></a>
>
> ### ActClass
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActClassRoot'></a>
>
> ### ActClassRoot
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActClassContract'></a>
>
> ### ActClassContract
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActClassFinancialContract'></a>
>
> ### ActClassFinancialContract
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|FCNTRCT||
> enumeration|COV||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActClassControlAct'></a>
>
> ### ActClassControlAct
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|CACT||
> enumeration|ACTN||
> enumeration|INFO||
> enumeration|STC||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActClassObservation'></a>
>
> ### ActClassObservation
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActClassCondition'></a>
>
> ### ActClassCondition
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActClassPublicHealthCase'></a>
>
> ### ActClassPublicHealthCase
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|CASE||
> enumeration|OUTB||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActClassObservationSeries'></a>
>
> ### ActClassObservationSeries
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|OBSSER||
> enumeration|OBSCOR||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActClassROI'></a>
>
> ### ActClassROI
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ROIBND||
> enumeration|ROIOVL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActClassSupply'></a>
>
> ### ActClassSupply
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SPLY||
> enumeration|DIET||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActContainer'></a>
>
> ### ActContainer
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActClassComposition'></a>
>
> ### ActClassComposition
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActClassDocument'></a>
>
> ### ActClassDocument
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActClinicalDocument'></a>
>
> ### ActClinicalDocument
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|DOCCLIN||
> enumeration|CDALVLONE||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActClassEntry'></a>
>
> ### ActClassEntry
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ENTRY||
> enumeration|BATTERY||
> enumeration|CLUSTER||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActClassExtract'></a>
>
> ### ActClassExtract
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|EXTRACT||
> enumeration|EHR||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActClassOrganizer'></a>
>
> ### ActClassOrganizer
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ORGANIZER||
> enumeration|CATEGORY||
> enumeration|DOCBODY||
> enumeration|DOCSECT||
> enumeration|TOPIC||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ActClassDocumentEntryAct'></a>
>
> ### x_ActClassDocumentEntryAct
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ACT||
> enumeration|ACCM||
> enumeration|CONS||
> enumeration|CTTEVENT||
> enumeration|INC||
> enumeration|INFRM||
> enumeration|PCPR||
> enumeration|REG||
> enumeration|SPCTRT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ActClassDocumentEntryOrganizer'></a>
>
> ### x_ActClassDocumentEntryOrganizer
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|BATTERY||
> enumeration|CLUSTER||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActMood'></a>
>
> ### ActMood
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActMoodCompletionTrack'></a>
>
> ### ActMoodCompletionTrack
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActMoodPredicate'></a>
>
> ### ActMoodPredicate
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|EVN.CRT||
> enumeration|GOL||
> enumeration|OPT||
> enumeration|PERM||
> enumeration|PERMRQ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ActMoodDefEvn'></a>
>
> ### x_ActMoodDefEvn
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|DEF||
> enumeration|EVN||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ActMoodDefEvnRqoPrmsPrp'></a>
>
> ### x_ActMoodDefEvnRqoPrmsPrp
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|DEF||
> enumeration|EVN||
> enumeration|PRMS||
> enumeration|PRP||
> enumeration|RQO||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ActMoodDocumentObservation'></a>
>
> ### x_ActMoodDocumentObservation
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|INT||
> enumeration|DEF||
> enumeration|EVN||
> enumeration|GOL||
> enumeration|PRMS||
> enumeration|PRP||
> enumeration|RQO||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ActMoodEvnOrdPrmsPrp'></a>
>
> ### x_ActMoodEvnOrdPrmsPrp
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|EVN||
> enumeration|PRMS||
> enumeration|PRP||
> enumeration|RQO||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ActMoodIntentEvent'></a>
>
> ### x_ActMoodIntentEvent
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActMoodIntent'></a>
>
> ### ActMoodIntent
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|INT||
> enumeration|APT||
> enumeration|ARQ||
> enumeration|PRMS||
> enumeration|PRP||
> enumeration|RQO||
> enumeration|SLOT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ActMoodOrdPrms'></a>
>
> ### x_ActMoodOrdPrms
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|PRMS||
> enumeration|RQO||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ActMoodOrdPrmsEvn'></a>
>
> ### x_ActMoodOrdPrmsEvn
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|EVN||
> enumeration|PRMS||
> enumeration|RQO||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ActMoodRqoPrpAptArq'></a>
>
> ### x_ActMoodRqoPrpAptArq
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|APT||
> enumeration|ARQ||
> enumeration|PRP||
> enumeration|RQO||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_DocumentActMood'></a>
>
> ### x_DocumentActMood
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|INT||
> enumeration|APT||
> enumeration|ARQ||
> enumeration|DEF||
> enumeration|EVN||
> enumeration|PRMS||
> enumeration|PRP||
> enumeration|RQO||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_DocumentEncounterMood'></a>
>
> ### x_DocumentEncounterMood
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|INT||
> enumeration|APT||
> enumeration|ARQ||
> enumeration|EVN||
> enumeration|PRMS||
> enumeration|PRP||
> enumeration|RQO||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_DocumentProcedureMood'></a>
>
> ### x_DocumentProcedureMood
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|INT||
> enumeration|APT||
> enumeration|ARQ||
> enumeration|DEF||
> enumeration|EVN||
> enumeration|PRMS||
> enumeration|PRP||
> enumeration|RQO||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_DocumentSubstanceMood'></a>
>
> ### x_DocumentSubstanceMood
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|INT||
> enumeration|EVN||
> enumeration|PRMS||
> enumeration|PRP||
> enumeration|RQO||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActRelationshipType'></a>
>
> ### ActRelationshipType
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActRelationshipConditional'></a>
>
> ### ActRelationshipConditional
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActRelationshipReason'></a>
>
> ### ActRelationshipReason
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|RSON||
> enumeration|MITGT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActRelationshipHasComponent'></a>
>
> ### ActRelationshipHasComponent
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|COMP||
> enumeration|ARR||
> enumeration|CTRLV||
> enumeration|DEP||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActRelationshipOutcome'></a>
>
> ### ActRelationshipOutcome
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActRelationshipObjective'></a>
>
> ### ActRelationshipObjective
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|OBJC||
> enumeration|OBJF||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActRelationshipPertains'></a>
>
> ### ActRelationshipPertains
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActRelationshipAccounting'></a>
>
> ### ActRelationshipAccounting
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActRelationshipCostTracking'></a>
>
> ### ActRelationshipCostTracking
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|CHRG||
> enumeration|COST||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActRelationshipPosting'></a>
>
> ### ActRelationshipPosting
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|CREDIT||
> enumeration|DEBIT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TemporallyPertains'></a>
>
> ### TemporallyPertains
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SAS||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='hasSupport'></a>
>
> ### hasSupport
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SPRT||
> enumeration|SPRTBND||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActRelationshipSequel'></a>
>
> ### ActRelationshipSequel
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActRelationshipExcerpt'></a>
>
> ### ActRelationshipExcerpt
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|XCRPT||
> enumeration|VRXCRPT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActRelationshipFulfills'></a>
>
> ### ActRelationshipFulfills
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|FLFS||
> enumeration|OCCR||
> enumeration|OREF||
> enumeration|SCH||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ActRelationshipReplacement'></a>
>
> ### ActRelationshipReplacement
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|RPLC||
> enumeration|SUCC||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ActRelationshipDocument'></a>
>
> ### x_ActRelationshipDocument
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|RPLC||
> enumeration|APND||
> enumeration|XFRM||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ActRelationshipEntry'></a>
>
> ### x_ActRelationshipEntry
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|COMP||
> enumeration|DRIV||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ActRelationshipEntryRelationship'></a>
>
> ### x_ActRelationshipEntryRelationship
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|XCRPT||
> enumeration|COMP||
> enumeration|RSON||
> enumeration|SPRT||
> enumeration|CAUS||
> enumeration|GEVL||
> enumeration|MFST||
> enumeration|REFR||
> enumeration|SAS||
> enumeration|SUBJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ActRelationshipExternalReference'></a>
>
> ### x_ActRelationshipExternalReference
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|XCRPT||
> enumeration|RPLC||
> enumeration|SPRT||
> enumeration|ELNK||
> enumeration|REFR||
> enumeration|SUBJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ActRelationshipPatientTransport'></a>
>
> ### x_ActRelationshipPatientTransport
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ARR||
> enumeration|DEP||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ActRelationshipPertinentInfo'></a>
>
> ### x_ActRelationshipPertinentInfo
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SPRT||
> enumeration|CAUS||
> enumeration|MFST||
> enumeration|REFR||
> enumeration|SUBJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CommunicationFunctionType'></a>
>
> ### CommunicationFunctionType
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|RCV||
> enumeration|RSP||
> enumeration|SND||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ContextControl'></a>
>
> ### ContextControl
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ContextControlAdditive'></a>
>
> ### ContextControlAdditive
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|AN||
> enumeration|AP||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ContextControlNonPropagating'></a>
>
> ### ContextControlNonPropagating
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|AN||
> enumeration|ON||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ContextControlOverriding'></a>
>
> ### ContextControlOverriding
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ON||
> enumeration|OP||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ContextControlPropagating'></a>
>
> ### ContextControlPropagating
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|AP||
> enumeration|OP||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EntityClass'></a>
>
> ### EntityClass
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EntityClassRoot'></a>
>
> ### EntityClassRoot
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EntityClassLivingSubject'></a>
>
> ### EntityClassLivingSubject
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EntityClassNonPersonLivingSubject'></a>
>
> ### EntityClassNonPersonLivingSubject
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|NLIV||
> enumeration|ANM||
> enumeration|MIC||
> enumeration|PLNT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EntityClassMaterial'></a>
>
> ### EntityClassMaterial
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EntityClassManufacturedMaterial'></a>
>
> ### EntityClassManufacturedMaterial
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EntityClassContainer'></a>
>
> ### EntityClassContainer
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|CONT||
> enumeration|HOLD||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EntityClassDevice'></a>
>
> ### EntityClassDevice
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|DEV||
> enumeration|CER||
> enumeration|MODDV||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EntityClassPlace'></a>
>
> ### EntityClassPlace
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|PLC||
> enumeration|CITY||
> enumeration|COUNTRY||
> enumeration|COUNTY||
> enumeration|PROVINCE||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_EntityClassDocumentReceiving'></a>
>
> ### x_EntityClassDocumentReceiving
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_EntityClassPersonOrOrgReceiving'></a>
>
> ### x_EntityClassPersonOrOrgReceiving
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EntityClassOrganization'></a>
>
> ### EntityClassOrganization
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='State'></a>
>
> ### State
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|STATE||
> enumeration|NAT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EntityDeterminer'></a>
>
> ### EntityDeterminer
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EntityDeterminerDetermined'></a>
>
> ### EntityDeterminerDetermined
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|KIND||
> enumeration|QUANTIFIED_KIND||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_DeterminerInstanceKind'></a>
>
> ### x_DeterminerInstanceKind
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|KIND||
> enumeration|INSTANCE||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='NullFlavor'></a>
>
> ### NullFlavor
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='NoInformation'></a>
>
> ### NoInformation
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Other'></a>
>
> ### Other
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|OTH||
> enumeration|NINF||
> enumeration|PINF||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Unknown'></a>
>
> ### Unknown
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AskedButUnknown'></a>
>
> ### AskedButUnknown
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ASKU||
> enumeration|NAV||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ParticipationType'></a>
>
> ### ParticipationType
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ParticipationAncillary'></a>
>
> ### ParticipationAncillary
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ADM||
> enumeration|ATND||
> enumeration|CALLBCK||
> enumeration|CON||
> enumeration|DIS||
> enumeration|ESC||
> enumeration|REF||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ParticipationIndirectTarget'></a>
>
> ### ParticipationIndirectTarget
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IND||
> enumeration|BEN||
> enumeration|COV||
> enumeration|HLD||
> enumeration|RCT||
> enumeration|RCV||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ParticipationInformationGenerator'></a>
>
> ### ParticipationInformationGenerator
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|AUT||
> enumeration|ENT||
> enumeration|INF||
> enumeration|WIT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ParticipationInformationRecipient'></a>
>
> ### ParticipationInformationRecipient
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IRCP||
> enumeration|NOT||
> enumeration|PRCP||
> enumeration|REFB||
> enumeration|REFT||
> enumeration|TRC||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ParticipationPhysicalPerformer'></a>
>
> ### ParticipationPhysicalPerformer
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|PRF||
> enumeration|DIST||
> enumeration|PPRF||
> enumeration|SPRF||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ParticipationTargetDirect'></a>
>
> ### ParticipationTargetDirect
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ParticipationTargetDevice'></a>
>
> ### ParticipationTargetDevice
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|DEV||
> enumeration|NRD||
> enumeration|RDV||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ParticipationTargetSubject'></a>
>
> ### ParticipationTargetSubject
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SBJ||
> enumeration|SPC||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ParticipationTargetLocation'></a>
>
> ### ParticipationTargetLocation
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|LOC||
> enumeration|DST||
> enumeration|ELOC||
> enumeration|ORG||
> enumeration|RML||
> enumeration|VIA||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ParticipationVerifier'></a>
>
> ### ParticipationVerifier
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|VRF||
> enumeration|AUTHEN||
> enumeration|LA||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_EncounterParticipant'></a>
>
> ### x_EncounterParticipant
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ADM||
> enumeration|ATND||
> enumeration|CON||
> enumeration|DIS||
> enumeration|REF||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_EncounterPerformerParticipation'></a>
>
> ### x_EncounterPerformerParticipation
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|PRF||
> enumeration|CON||
> enumeration|SPRF||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_InformationRecipient'></a>
>
> ### x_InformationRecipient
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|PRCP||
> enumeration|TRC||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ParticipationAuthorPerformer'></a>
>
> ### x_ParticipationAuthorPerformer
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|PRF||
> enumeration|AUT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ParticipationEntVrf'></a>
>
> ### x_ParticipationEntVrf
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|VRF||
> enumeration|ENT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ParticipationPrfEntVrf'></a>
>
> ### x_ParticipationPrfEntVrf
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|PRF||
> enumeration|VRF||
> enumeration|ENT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ParticipationVrfRespSprfWit'></a>
>
> ### x_ParticipationVrfRespSprfWit
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|VRF||
> enumeration|RESP||
> enumeration|SPRF||
> enumeration|WIT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_ServiceEventPerformer'></a>
>
> ### x_ServiceEventPerformer
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|PRF||
> enumeration|PPRF||
> enumeration|SPRF||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClass'></a>
>
> ### RoleClass
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassRoot'></a>
>
> ### RoleClassRoot
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassAssociative'></a>
>
> ### RoleClassAssociative
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassMutualRelationship'></a>
>
> ### RoleClassMutualRelationship
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassRelationshipFormal'></a>
>
> ### RoleClassRelationshipFormal
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassAgent'></a>
>
> ### RoleClassAgent
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassAssignedEntity'></a>
>
> ### RoleClassAssignedEntity
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassContact'></a>
>
> ### RoleClassContact
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|CON||
> enumeration|ECON||
> enumeration|NOK||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassEmployee'></a>
>
> ### RoleClassEmployee
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|EMP||
> enumeration|MIL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassInvestigationSubject'></a>
>
> ### RoleClassInvestigationSubject
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|INVSBJ||
> enumeration|CASESBJ||
> enumeration|RESBJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassPassive'></a>
>
> ### RoleClassPassive
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassDistributedMaterial'></a>
>
> ### RoleClassDistributedMaterial
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|DST||
> enumeration|RET||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassManufacturedProduct'></a>
>
> ### RoleClassManufacturedProduct
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|MANU||
> enumeration|THER||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassServiceDeliveryLocation'></a>
>
> ### RoleClassServiceDeliveryLocation
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SDLOC||
> enumeration|DSDLOC||
> enumeration|ISDLOC||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassOntological'></a>
>
> ### RoleClassOntological
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassIsSpeciesEntity'></a>
>
> ### RoleClassIsSpeciesEntity
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|GEN||
> enumeration|GRIC||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassPartitive'></a>
>
> ### RoleClassPartitive
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassIngredientEntity'></a>
>
> ### RoleClassIngredientEntity
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassInactiveIngredient'></a>
>
> ### RoleClassInactiveIngredient
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IACT||
> enumeration|COLR||
> enumeration|FLVR||
> enumeration|PRSV||
> enumeration|STBL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassLocatedEntity'></a>
>
> ### RoleClassLocatedEntity
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|LOCE||
> enumeration|STOR||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleClassSpecimen'></a>
>
> ### RoleClassSpecimen
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SPEC||
> enumeration|ALQT||
> enumeration|ISLT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_DocumentEntrySubject'></a>
>
> ### x_DocumentEntrySubject
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SPEC||
> enumeration|PAT||
> enumeration|PRS||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_DocumentSubject'></a>
>
> ### x_DocumentSubject
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|PAT||
> enumeration|PRS||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_InformationRecipientRole'></a>
>
> ### x_InformationRecipientRole
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ASSIGNED||
> enumeration|HLTHCHRT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_RoleClassAccommodationRequestor'></a>
>
> ### x_RoleClassAccommodationRequestor
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|AGNT||
> enumeration|PAT||
> enumeration|PROV||
> enumeration|PRS||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_RoleClassCoverage'></a>
>
> ### x_RoleClassCoverage
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|COVPTY||
> enumeration|POLHOLD||
> enumeration|SPNSR||
> enumeration|UNDWRT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_RoleClassCoverageInvoice'></a>
>
> ### x_RoleClassCoverageInvoice
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|PAYEE||
> enumeration|PAYOR||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_RoleClassCredentialedEntity'></a>
>
> ### x_RoleClassCredentialedEntity
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='LicensedEntityRole'></a>
>
> ### LicensedEntityRole
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|LIC||
> enumeration|NOT||
> enumeration|PROV||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_RoleClassPayeePolicyRelationship'></a>
>
> ### x_RoleClassPayeePolicyRelationship
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|COVPTY||
> enumeration|GUAR||
> enumeration|POLHOLD||
> enumeration|PROV||
> enumeration|PRS||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleLinkType'></a>
>
> ### RoleLinkType
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RelatedLinkType'></a>
>
> ### RelatedLinkType
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|REL||
> enumeration|BACKUP||
> enumeration|DIRAUTH||
> enumeration|INDAUTH||
> enumeration|PART||
> enumeration|REPL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleStatus'></a>
>
> ### RoleStatus
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RoleStatusNormal'></a>
>
> ### RoleStatusNormal
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|normal||
> enumeration|active||
> enumeration|cancelled||
> enumeration|pending||
> enumeration|suspended||
> enumeration|terminated||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RouteOfAdministration'></a>
>
> ### RouteOfAdministration
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RouteByMethod'></a>
>
> ### RouteByMethod
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Chew'></a>
>
> ### Chew
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|CHEW||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Diffusion'></a>
>
> ### Diffusion
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|EXTCORPDIF||
> enumeration|HEMODIFF||
> enumeration|TRNSDERMD||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Dissolve'></a>
>
> ### Dissolve
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|DISSOLVE||
> enumeration|SL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Douche'></a>
>
> ### Douche
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|DOUCHE||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ElectroOsmosisRoute'></a>
>
> ### ElectroOsmosisRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ELECTOSMOS||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Enema'></a>
>
> ### Enema
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ENEMA||
> enumeration|RETENEMA||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Flush'></a>
>
> ### Flush
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IVFLUSH||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Implantation'></a>
>
> ### Implantation
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IDIMPLNT||
> enumeration|IVITIMPLNT||
> enumeration|SQIMPLNT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='InfiltrationRoute'></a>
>
> ### InfiltrationRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Infusion'></a>
>
> ### Infusion
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntravenousInfusion'></a>
>
> ### IntravenousInfusion
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IV||
> enumeration|IVC||
> enumeration|IVCC||
> enumeration|IVCI||
> enumeration|PCA||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Inhalation'></a>
>
> ### Inhalation
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='NebulizationInhalation'></a>
>
> ### NebulizationInhalation
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|NEB||
> enumeration|NASNEB||
> enumeration|ORNEB||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Injection'></a>
>
> ### Injection
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Insertion'></a>
>
> ### Insertion
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|CERVINS||
> enumeration|IOSURGINS||
> enumeration|IU||
> enumeration|LPINS||
> enumeration|PR||
> enumeration|SQSURGINS||
> enumeration|URETHINS||
> enumeration|VAGINSI||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Instillation'></a>
>
> ### Instillation
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IontophoresisRoute'></a>
>
> ### IontophoresisRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IONTO||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Irrigation'></a>
>
> ### Irrigation
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='LavageRoute'></a>
>
> ### LavageRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IGASTLAV||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='MucosalAbsorptionRoute'></a>
>
> ### MucosalAbsorptionRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IDOUDMAB||
> enumeration|ITRACHMAB||
> enumeration|SMUCMAB||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Nebulization'></a>
>
> ### Nebulization
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ETNEB||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Rinse'></a>
>
> ### Rinse
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|DENRINSE||
> enumeration|ORRINSE||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SuppositoryRoute'></a>
>
> ### SuppositoryRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|URETHSUP||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Swish'></a>
>
> ### Swish
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SWISHSPIT||
> enumeration|SWISHSWAL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TopicalAbsorptionRoute'></a>
>
> ### TopicalAbsorptionRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|TTYMPTABSORP||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TopicalApplication'></a>
>
> ### TopicalApplication
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|OCDRESTA||
> enumeration|SUBCONJTA||
> enumeration|TOPICAL||
> enumeration|BUC||
> enumeration|CERV||
> enumeration|DEN||
> enumeration|GIN||
> enumeration|HAIR||
> enumeration|ICORNTA||
> enumeration|ICORONTA||
> enumeration|IESOPHTA||
> enumeration|IILEALTA||
> enumeration|ILTOP||
> enumeration|ILUMTA||
> enumeration|IOTOP||
> enumeration|IONTO||
> enumeration|LARYNGTA||
> enumeration|MUC||
> enumeration|NAIL||
> enumeration|NASAL||
> enumeration|OPTHALTA||
> enumeration|ORALTA||
> enumeration|ORMUC||
> enumeration|OROPHARTA||
> enumeration|PERIANAL||
> enumeration|PERINEAL||
> enumeration|PDONTTA||
> enumeration|RECTAL||
> enumeration|SCALP||
> enumeration|SKIN||
> enumeration|DRESS||
> enumeration|SWAB||
> enumeration|TMUCTA||
> enumeration|VAGINS||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RouteBySite'></a>
>
> ### RouteBySite
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='AmnioticFluidSacRoute'></a>
>
> ### AmnioticFluidSacRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|AMNINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='BiliaryRoute'></a>
>
> ### BiliaryRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|BILINJ||
> enumeration|CHOLINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='BodySurfaceRoute'></a>
>
> ### BodySurfaceRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ELECTOSMOS||
> enumeration|SOAK||
> enumeration|TOPICAL||
> enumeration|IONTO||
> enumeration|DRESS||
> enumeration|SWAB||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='BuccalMucosaRoute'></a>
>
> ### BuccalMucosaRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|BUC||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CecostomyRoute'></a>
>
> ### CecostomyRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|CECINSTL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='CervicalRoute'></a>
>
> ### CervicalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|CERVINJ||
> enumeration|CERVINS||
> enumeration|DENRINSE||
> enumeration|CERV||
> enumeration|DEN||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DentalRoute'></a>
>
> ### DentalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EndocervicalRoute'></a>
>
> ### EndocervicalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|AMNINJ||
> enumeration|BILINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EnteralRoute'></a>
>
> ### EnteralRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ENTINSTL||
> enumeration|EFT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='EpiduralRoute'></a>
>
> ### EpiduralRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|EPI||
> enumeration|EPIDURINJ||
> enumeration|EPIINJ||
> enumeration|EPINJSP||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ExtraAmnioticRoute'></a>
>
> ### ExtraAmnioticRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|EXTRAMNINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ExtracorporealCirculationRoute'></a>
>
> ### ExtracorporealCirculationRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|EXTCORPDIF||
> enumeration|EXTCORPINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='GastricRoute'></a>
>
> ### GastricRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|GBINJ||
> enumeration|GT||
> enumeration|NGT||
> enumeration|OGT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='GenitourinaryRoute'></a>
>
> ### GenitourinaryRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|GUIRR||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='GingivalRoute'></a>
>
> ### GingivalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|GINGINJ||
> enumeration|GIN||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='HairRoute'></a>
>
> ### HairRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SHAMPOO||
> enumeration|HAIR||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='InterameningealRoute'></a>
>
> ### InterameningealRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|INTERMENINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='InterstitialRoute'></a>
>
> ### InterstitialRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|INTERSTITINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntraabdominalRoute'></a>
>
> ### IntraabdominalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IABDINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntraarterialRoute'></a>
>
> ### IntraarterialRoute
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntraarterialInjection'></a>
>
> ### IntraarterialInjection
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IAINJ||
> enumeration|IAINJP||
> enumeration|IAINJSP||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntraarticularRoute'></a>
>
> ### IntraarticularRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IARTINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntrabronchialRoute'></a>
>
> ### IntrabronchialRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IBRONCHINSTIL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntrabursalRoute'></a>
>
> ### IntrabursalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IBURSINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntracardiacRoute'></a>
>
> ### IntracardiacRoute
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntracardiacInjection'></a>
>
> ### IntracardiacInjection
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ICARDINJ||
> enumeration|ICARINJP||
> enumeration|ICARDINJRP||
> enumeration|ICARDINJSP||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntracartilaginousRoute'></a>
>
> ### IntracartilaginousRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ICARTINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntracaudalRoute'></a>
>
> ### IntracaudalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ICAUDINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntracavernosalRoute'></a>
>
> ### IntracavernosalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ICAVINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntracavitaryRoute'></a>
>
> ### IntracavitaryRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ICAVITINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntracerebralRoute'></a>
>
> ### IntracerebralRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ICEREBINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntracervicalRoute'></a>
>
> ### IntracervicalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IUINJC||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntracisternalRoute'></a>
>
> ### IntracisternalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ICISTERNINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntracornealRoute'></a>
>
> ### IntracornealRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ICORNTA||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntracoronalRoute'></a>
>
> ### IntracoronalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ICORONTA||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntracoronaryRoute'></a>
>
> ### IntracoronaryRoute
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntracoronaryInjection'></a>
>
> ### IntracoronaryInjection
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ICORONINJ||
> enumeration|ICORONINJP||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntracorpusCavernosumRoute'></a>
>
> ### IntracorpusCavernosumRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ICORPCAVINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntradermalRoute'></a>
>
> ### IntradermalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IDIMPLNT||
> enumeration|IDINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntradiscalRoute'></a>
>
> ### IntradiscalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IDISCINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntraductalRoute'></a>
>
> ### IntraductalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IDUCTINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntraduodenalRoute'></a>
>
> ### IntraduodenalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IDUODINSTIL||
> enumeration|IDOUDMAB||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntraduralRoute'></a>
>
> ### IntraduralRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IDURINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntraepidermalRoute'></a>
>
> ### IntraepidermalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IEPIDINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntraepithelialRoute'></a>
>
> ### IntraepithelialRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IEPITHINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntraesophagealRoute'></a>
>
> ### IntraesophagealRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IESOPHINSTIL||
> enumeration|IESOPHTA||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntragastricRoute'></a>
>
> ### IntragastricRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IGASTINSTIL||
> enumeration|IGASTIRR||
> enumeration|IGASTLAV||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntrailealRoute'></a>
>
> ### IntrailealRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IILEALINJ||
> enumeration|IILEALTA||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntralesionalRoute'></a>
>
> ### IntralesionalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ILESINJ||
> enumeration|ILESIRR||
> enumeration|ILTOP||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntraluminalRoute'></a>
>
> ### IntraluminalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ILUMINJ||
> enumeration|ILUMTA||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntralymphaticRoute'></a>
>
> ### IntralymphaticRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ILYMPJINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntramedullaryRoute'></a>
>
> ### IntramedullaryRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IMEDULINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntramuscularRoute'></a>
>
> ### IntramuscularRoute
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntramuscularInjection'></a>
>
> ### IntramuscularInjection
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IM||
> enumeration|IMD||
> enumeration|IMZ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntraocularRoute'></a>
>
> ### IntraocularRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IOINJ||
> enumeration|IOSURGINS||
> enumeration|IOINSTL||
> enumeration|IOIRR||
> enumeration|IOTOP||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntraosseousRoute'></a>
>
> ### IntraosseousRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IOSSC||
> enumeration|IOSSINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntraovarianRoute'></a>
>
> ### IntraovarianRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IOVARINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntrapericardialRoute'></a>
>
> ### IntrapericardialRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IPCARDINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntraperitonealRoute'></a>
>
> ### IntraperitonealRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IPERINJ||
> enumeration|PDPINJ||
> enumeration|CAPDINSTL||
> enumeration|PDPINSTL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntrapleuralRoute'></a>
>
> ### IntrapleuralRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IPLRINJ||
> enumeration|CTINSTL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntraprostaticRoute'></a>
>
> ### IntraprostaticRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IPROSTINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntrapulmonaryRoute'></a>
>
> ### IntrapulmonaryRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|EXTCORPINJ||
> enumeration|IPINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntrasinalRoute'></a>
>
> ### IntrasinalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ISININSTIL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntraspinalRoute'></a>
>
> ### IntraspinalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ISINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntrasternalRoute'></a>
>
> ### IntrasternalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ISTERINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntrasynovialRoute'></a>
>
> ### IntrasynovialRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ISYNINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntratendinousRoute'></a>
>
> ### IntratendinousRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ITENDINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntratesticularRoute'></a>
>
> ### IntratesticularRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ITESTINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntrathecalRoute'></a>
>
> ### IntrathecalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IT||
> enumeration|ITINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntrathoracicRoute'></a>
>
> ### IntrathoracicRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ITHORINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntratrachealRoute'></a>
>
> ### IntratrachealRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ITRACHINSTIL||
> enumeration|ITRACHMAB||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntratubularRoute'></a>
>
> ### IntratubularRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ITUBINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntratumorRoute'></a>
>
> ### IntratumorRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ITUMINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntratympanicRoute'></a>
>
> ### IntratympanicRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ITYMPINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntrauterineRoute'></a>
>
> ### IntrauterineRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IURETINJ||
> enumeration|IUINJ||
> enumeration|IU||
> enumeration|IUINSTL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntravascularRoute'></a>
>
> ### IntravascularRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|HEMODIFF||
> enumeration|IVASCINFUS||
> enumeration|HEMOPORT||
> enumeration|IVASCINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntravenousRoute'></a>
>
> ### IntravenousRoute
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntravenousInjection'></a>
>
> ### IntravenousInjection
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IVINJ||
> enumeration|IVINJBOL||
> enumeration|IVPUSH||
> enumeration|IVRPUSH||
> enumeration|IVSPUSH||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntraventricularRoute'></a>
>
> ### IntraventricularRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IVENTINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntravesicleRoute'></a>
>
> ### IntravesicleRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IVESINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='IntravitrealRoute'></a>
>
> ### IntravitrealRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IVITINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='JejunumRoute'></a>
>
> ### JejunumRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|GJT||
> enumeration|JJTINSTL||
> enumeration|OJJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='LacrimalPunctaRoute'></a>
>
> ### LacrimalPunctaRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|LPINS||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='LaryngealRoute'></a>
>
> ### LaryngealRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|LARYNGINSTIL||
> enumeration|LARYNGTA||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='LingualRoute'></a>
>
> ### LingualRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|TRNSLING||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='MucousMembraneRoute'></a>
>
> ### MucousMembraneRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|MUC||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='NailRoute'></a>
>
> ### NailRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|NAIL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='NasalRoute'></a>
>
> ### NasalRoute
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='NasalInhalation'></a>
>
> ### NasalInhalation
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|NASINHL||
> enumeration|NASINHLC||
> enumeration|NP||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='OphthalmicRoute'></a>
>
> ### OphthalmicRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|OPTHALTA||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='OralRoute'></a>
>
> ### OralRoute
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='OromucosalRoute'></a>
>
> ### OromucosalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|GARGLE||
> enumeration|SUCK||
> enumeration|SWISHSPIT||
> enumeration|SWISHSWAL||
> enumeration|ORMUC||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='OropharyngealRoute'></a>
>
> ### OropharyngealRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|OROPHARTA||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='OticRoute'></a>
>
> ### OticRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|OT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ParanasalSinusesRoute'></a>
>
> ### ParanasalSinusesRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|PNSINJ||
> enumeration|PNSINSTL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ParenteralRoute'></a>
>
> ### ParenteralRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|PARENTINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PerianalRoute'></a>
>
> ### PerianalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|PERIANAL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PeriarticularRoute'></a>
>
> ### PeriarticularRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|PAINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PeriduralRoute'></a>
>
> ### PeriduralRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|PDURINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PerinealRoute'></a>
>
> ### PerinealRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|PERINEAL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PerineuralRoute'></a>
>
> ### PerineuralRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|PNINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PeriodontalRoute'></a>
>
> ### PeriodontalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|PDONTINJ||
> enumeration|PDONTTA||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='PulmonaryRoute'></a>
>
> ### PulmonaryRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IPPB||
> enumeration|VENT||
> enumeration|VENTMASK||
> enumeration|ETINSTL||
> enumeration|NTT||
> enumeration|ETNEB||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RectalRoute'></a>
>
> ### RectalRoute
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RectalInstillation'></a>
>
> ### RectalInstillation
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|RECINSTL||
> enumeration|RECTINSTL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RespiratoryTractRoute'></a>
>
> ### RespiratoryTractRoute
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='OralInhalation'></a>
>
> ### OralInhalation
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ORINHL||
> enumeration|ORIFINHL||
> enumeration|REBREATH||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RetrobulbarRoute'></a>
>
> ### RetrobulbarRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|RBINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ScalpRoute'></a>
>
> ### ScalpRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SCALP||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SinusUnspecifiedRoute'></a>
>
> ### SinusUnspecifiedRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|ENDOSININJ||
> enumeration|SININSTIL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SkinRoute'></a>
>
> ### SkinRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|OCDRESTA||
> enumeration|SKIN||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SoftTissueRoute'></a>
>
> ### SoftTissueRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SOFTISINJ||
> enumeration|SOFTISINSTIL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SubarachnoidRoute'></a>
>
> ### SubarachnoidRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SUBARACHINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SubconjunctivalRoute'></a>
>
> ### SubconjunctivalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SCINJ||
> enumeration|SUBCONJTA||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SubcutaneousRoute'></a>
>
> ### SubcutaneousRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SQIMPLNT||
> enumeration|SQINFUS||
> enumeration|IPUMPINJ||
> enumeration|SQ||
> enumeration|SQSURGINS||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SublesionalRoute'></a>
>
> ### SublesionalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SLESINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SublingualRoute'></a>
>
> ### SublingualRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SubmucosalRoute'></a>
>
> ### SubmucosalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SUBMUCINJ||
> enumeration|SMUCMAB||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TracheostomyRoute'></a>
>
> ### TracheostomyRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|TRACH||
> enumeration|TRACHINSTL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Transdermal'></a>
>
> ### Transdermal
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|TRNSDERMD||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TransmucosalRoute'></a>
>
> ### TransmucosalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|TMUCTA||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TransplacentalRoute'></a>
>
> ### TransplacentalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|TRPLACINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TranstrachealRoute'></a>
>
> ### TranstrachealRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|TRTRACHINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TranstympanicRoute'></a>
>
> ### TranstympanicRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|TRTYMPINSTIL||
> enumeration|TTYMPTABSORP||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UreteralRoute'></a>
>
> ### UreteralRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|URETINJ||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UrethralRoute'></a>
>
> ### UrethralRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|URETHINJ||
> enumeration|URETHINS||
> enumeration|URETHSUP||
> enumeration|URETHINSTL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UrinaryBladderRoute'></a>
>
> ### UrinaryBladderRoute
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UrinaryBladderIrrigation'></a>
>
> ### UrinaryBladderIrrigation
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|BLADIRR||
> enumeration|BLADIRRC||
> enumeration|BLADIRRT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UrinaryTractRoute'></a>
>
> ### UrinaryTractRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|BLADINSTL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='VaginalRoute'></a>
>
> ### VaginalRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|DOUCHE||
> enumeration|VAGINSI||
> enumeration|VAGINS||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='VitreousHumourRoute'></a>
>
> ### VitreousHumourRoute
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|IVITIMPLNT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SCDHEC-GISSpatialAccuracyTiers'></a>
>
> ### SCDHEC-GISSpatialAccuracyTiers
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SQLConjunction'></a>
>
> ### SQLConjunction
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Sequencing'></a>
>
> ### Sequencing
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|A||
> enumeration|D||
> enumeration|N||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SoftwareName'></a>
>
> ### SoftwareName
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SpecialArrangement'></a>
>
> ### SpecialArrangement
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='StyleType'></a>
>
> ### StyleType
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='FontStyle'></a>
>
> ### FontStyle
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|bold||
> enumeration|emphasis||
> enumeration|italics||
> enumeration|underline||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ListStyle'></a>
>
> ### ListStyle
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='OrderedListStyle'></a>
>
> ### OrderedListStyle
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Arabic||
> enumeration|BigAlpha||
> enumeration|BigRoman||
> enumeration|LittleAlpha||
> enumeration|LittleRoman||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UnorderedListStyle'></a>
>
> ### UnorderedListStyle
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Circle||
> enumeration|Disc||
> enumeration|Square||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TableRuleStyle'></a>
>
> ### TableRuleStyle
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Botrule||
> enumeration|Lrule||
> enumeration|Rrule||
> enumeration|Toprule||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SubjectPhysicalPosition'></a>
>
> ### SubjectPhysicalPosition
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='SubstitutionCondition'></a>
>
> ### SubstitutionCondition
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Conditional'></a>
>
> ### Conditional
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|CONFIRM||
> enumeration|NOTIFY||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_SubstitutionConditionNoneOrUnconditional'></a>
>
> ### x_SubstitutionConditionNoneOrUnconditional
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|NOSUB||
> enumeration|UNCOND||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TableCellHorizontalAlign'></a>
>
> ### TableCellHorizontalAlign
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|center||
> enumeration|char||
> enumeration|justify||
> enumeration|left||
> enumeration|right||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TableCellScope'></a>
>
> ### TableCellScope
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|col||
> enumeration|colgroup||
> enumeration|row||
> enumeration|rowgroup||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TableCellVerticalAlign'></a>
>
> ### TableCellVerticalAlign
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|baseline||
> enumeration|bottom||
> enumeration|middle||
> enumeration|top||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TableFrame'></a>
>
> ### TableFrame
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|above||
> enumeration|below||
> enumeration|border||
> enumeration|box||
> enumeration|hsides||
> enumeration|lhs||
> enumeration|rhs||
> enumeration|void||
> enumeration|vsides||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TableRules'></a>
>
> ### TableRules
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|all||
> enumeration|cols||
> enumeration|groups||
> enumeration|none||
> enumeration|rows||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TargetAwareness'></a>
>
> ### TargetAwareness
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|D||
> enumeration|F||
> enumeration|I||
> enumeration|M||
> enumeration|P||
> enumeration|U||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TransmissionRelationshipTypeCode'></a>
>
> ### TransmissionRelationshipTypeCode
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|SEQL||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='TribalEntityUS'></a>
>
> ### TribalEntityUS
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='NativeEntityAlaska'></a>
>
> ### NativeEntityAlaska
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|339||
> enumeration|341||
> enumeration|342||
> enumeration|345||
> enumeration|347||
> enumeration|348||
> enumeration|352||
> enumeration|354||
> enumeration|355||
> enumeration|356||
> enumeration|359||
> enumeration|361||
> enumeration|364||
> enumeration|549||
> enumeration|369||
> enumeration|371||
> enumeration|372||
> enumeration|375||
> enumeration|376||
> enumeration|377||
> enumeration|378||
> enumeration|382||
> enumeration|383||
> enumeration|386||
> enumeration|388||
> enumeration|392||
> enumeration|395||
> enumeration|396||
> enumeration|398||
> enumeration|400||
> enumeration|401||
> enumeration|406||
> enumeration|411||
> enumeration|413||
> enumeration|414||
> enumeration|415||
> enumeration|417||
> enumeration|418||
> enumeration|419||
> enumeration|420||
> enumeration|422||
> enumeration|423||
> enumeration|424||
> enumeration|425||
> enumeration|427||
> enumeration|434||
> enumeration|435||
> enumeration|437||
> enumeration|438||
> enumeration|441||
> enumeration|443||
> enumeration|445||
> enumeration|450||
> enumeration|456||
> enumeration|455||
> enumeration|457||
> enumeration|459||
> enumeration|460||
> enumeration|463||
> enumeration|465||
> enumeration|466||
> enumeration|468||
> enumeration|340||
> enumeration|343||
> enumeration|346||
> enumeration|349||
> enumeration|357||
> enumeration|360||
> enumeration|362||
> enumeration|365||
> enumeration|366||
> enumeration|367||
> enumeration|368||
> enumeration|373||
> enumeration|374||
> enumeration|379||
> enumeration|380||
> enumeration|381||
> enumeration|385||
> enumeration|389||
> enumeration|390||
> enumeration|393||
> enumeration|394||
> enumeration|397||
> enumeration|399||
> enumeration|402||
> enumeration|403||
> enumeration|404||
> enumeration|405||
> enumeration|407||
> enumeration|408||
> enumeration|409||
> enumeration|412||
> enumeration|416||
> enumeration|430||
> enumeration|431||
> enumeration|433||
> enumeration|436||
> enumeration|439||
> enumeration|440||
> enumeration|442||
> enumeration|444||
> enumeration|446||
> enumeration|448||
> enumeration|449||
> enumeration|452||
> enumeration|453||
> enumeration|454||
> enumeration|461||
> enumeration|462||
> enumeration|464||
> enumeration|467||
> enumeration|469||
> enumeration|470||
> enumeration|471||
> enumeration|472||
> enumeration|473||
> enumeration|479||
> enumeration|481||
> enumeration|483||
> enumeration|488||
> enumeration|491||
> enumeration|496||
> enumeration|497||
> enumeration|500||
> enumeration|502||
> enumeration|504||
> enumeration|506||
> enumeration|507||
> enumeration|508||
> enumeration|509||
> enumeration|510||
> enumeration|517||
> enumeration|519||
> enumeration|522||
> enumeration|524||
> enumeration|525||
> enumeration|528||
> enumeration|529||
> enumeration|530||
> enumeration|532||
> enumeration|539||
> enumeration|542||
> enumeration|543||
> enumeration|544||
> enumeration|545||
> enumeration|547||
> enumeration|548||
> enumeration|552||
> enumeration|553||
> enumeration|555||
> enumeration|558||
> enumeration|559||
> enumeration|561||
> enumeration|563||
> enumeration|564||
> enumeration|474||
> enumeration|475||
> enumeration|476||
> enumeration|477||
> enumeration|478||
> enumeration|480||
> enumeration|482||
> enumeration|484||
> enumeration|485||
> enumeration|486||
> enumeration|487||
> enumeration|489||
> enumeration|490||
> enumeration|410||
> enumeration|426||
> enumeration|432||
> enumeration|451||
> enumeration|523||
> enumeration|494||
> enumeration|495||
> enumeration|498||
> enumeration|499||
> enumeration|501||
> enumeration|503||
> enumeration|505||
> enumeration|511||
> enumeration|512||
> enumeration|513||
> enumeration|514||
> enumeration|515||
> enumeration|518||
> enumeration|520||
> enumeration|526||
> enumeration|527||
> enumeration|531||
> enumeration|533||
> enumeration|534||
> enumeration|537||
> enumeration|538||
> enumeration|541||
> enumeration|546||
> enumeration|550||
> enumeration|551||
> enumeration|554||
> enumeration|556||
> enumeration|557||
> enumeration|338||
> enumeration|344||
> enumeration|350||
> enumeration|353||
> enumeration|358||
> enumeration|363||
> enumeration|370||
> enumeration|384||
> enumeration|387||
> enumeration|391||
> enumeration|421||
> enumeration|428||
> enumeration|429||
> enumeration|447||
> enumeration|458||
> enumeration|492||
> enumeration|493||
> enumeration|516||
> enumeration|521||
> enumeration|535||
> enumeration|536||
> enumeration|540||
> enumeration|560||
> enumeration|562||
> enumeration|565||
> enumeration|566||
> enumeration|351||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='NativeEntityContiguous'></a>
>
> ### NativeEntityContiguous
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|1||
> enumeration|2||
> enumeration|3||
> enumeration|4||
> enumeration|5||
> enumeration|6||
> enumeration|7||
> enumeration|8||
> enumeration|9||
> enumeration|10||
> enumeration|11||
> enumeration|12||
> enumeration|33||
> enumeration|13||
> enumeration|14||
> enumeration|15||
> enumeration|16||
> enumeration|17||
> enumeration|18||
> enumeration|19||
> enumeration|20||
> enumeration|21||
> enumeration|160||
> enumeration|22||
> enumeration|23||
> enumeration|24||
> enumeration|25||
> enumeration|26||
> enumeration|27||
> enumeration|29||
> enumeration|28||
> enumeration|30||
> enumeration|31||
> enumeration|32||
> enumeration|35||
> enumeration|36||
> enumeration|37||
> enumeration|38||
> enumeration|39||
> enumeration|40||
> enumeration|42||
> enumeration|41||
> enumeration|43||
> enumeration|44||
> enumeration|45||
> enumeration|46||
> enumeration|47||
> enumeration|48||
> enumeration|49||
> enumeration|50||
> enumeration|51||
> enumeration|52||
> enumeration|53||
> enumeration|54||
> enumeration|55||
> enumeration|64||
> enumeration|56||
> enumeration|57||
> enumeration|58||
> enumeration|59||
> enumeration|60||
> enumeration|61||
> enumeration|62||
> enumeration|63||
> enumeration|65||
> enumeration|66||
> enumeration|67||
> enumeration|68||
> enumeration|69||
> enumeration|71||
> enumeration|70||
> enumeration|72||
> enumeration|73||
> enumeration|74||
> enumeration|75||
> enumeration|76||
> enumeration|77||
> enumeration|78||
> enumeration|79||
> enumeration|80||
> enumeration|81||
> enumeration|82||
> enumeration|83||
> enumeration|84||
> enumeration|85||
> enumeration|86||
> enumeration|87||
> enumeration|88||
> enumeration|89||
> enumeration|90||
> enumeration|91||
> enumeration|92||
> enumeration|93||
> enumeration|94||
> enumeration|95||
> enumeration|96||
> enumeration|97||
> enumeration|98||
> enumeration|99||
> enumeration|100||
> enumeration|101||
> enumeration|102||
> enumeration|103||
> enumeration|104||
> enumeration|105||
> enumeration|106||
> enumeration|107||
> enumeration|108||
> enumeration|109||
> enumeration|110||
> enumeration|111||
> enumeration|112||
> enumeration|113||
> enumeration|114||
> enumeration|115||
> enumeration|116||
> enumeration|117||
> enumeration|118||
> enumeration|119||
> enumeration|120||
> enumeration|121||
> enumeration|122||
> enumeration|123||
> enumeration|124||
> enumeration|127||
> enumeration|125||
> enumeration|126||
> enumeration|128||
> enumeration|129||
> enumeration|130||
> enumeration|131||
> enumeration|132||
> enumeration|133||
> enumeration|135||
> enumeration|134||
> enumeration|136||
> enumeration|137||
> enumeration|138||
> enumeration|140||
> enumeration|141||
> enumeration|142||
> enumeration|143||
> enumeration|139||
> enumeration|144||
> enumeration|145||
> enumeration|146||
> enumeration|147||
> enumeration|148||
> enumeration|149||
> enumeration|150||
> enumeration|151||
> enumeration|152||
> enumeration|153||
> enumeration|154||
> enumeration|155||
> enumeration|156||
> enumeration|157||
> enumeration|158||
> enumeration|159||
> enumeration|161||
> enumeration|162||
> enumeration|163||
> enumeration|164||
> enumeration|165||
> enumeration|166||
> enumeration|167||
> enumeration|168||
> enumeration|169||
> enumeration|170||
> enumeration|171||
> enumeration|172||
> enumeration|173||
> enumeration|174||
> enumeration|175||
> enumeration|176||
> enumeration|177||
> enumeration|178||
> enumeration|179||
> enumeration|180||
> enumeration|181||
> enumeration|182||
> enumeration|184||
> enumeration|183||
> enumeration|185||
> enumeration|186||
> enumeration|188||
> enumeration|187||
> enumeration|189||
> enumeration|190||
> enumeration|191||
> enumeration|192||
> enumeration|193||
> enumeration|194||
> enumeration|195||
> enumeration|196||
> enumeration|197||
> enumeration|198||
> enumeration|199||
> enumeration|200||
> enumeration|201||
> enumeration|202||
> enumeration|203||
> enumeration|204||
> enumeration|205||
> enumeration|206||
> enumeration|207||
> enumeration|208||
> enumeration|209||
> enumeration|210||
> enumeration|212||
> enumeration|211||
> enumeration|213||
> enumeration|214||
> enumeration|215||
> enumeration|216||
> enumeration|217||
> enumeration|219||
> enumeration|218||
> enumeration|220||
> enumeration|221||
> enumeration|222||
> enumeration|223||
> enumeration|224||
> enumeration|225||
> enumeration|226||
> enumeration|227||
> enumeration|228||
> enumeration|229||
> enumeration|230||
> enumeration|231||
> enumeration|232||
> enumeration|233||
> enumeration|234||
> enumeration|235||
> enumeration|236||
> enumeration|237||
> enumeration|238||
> enumeration|239||
> enumeration|240||
> enumeration|241||
> enumeration|242||
> enumeration|243||
> enumeration|244||
> enumeration|245||
> enumeration|247||
> enumeration|248||
> enumeration|246||
> enumeration|249||
> enumeration|250||
> enumeration|251||
> enumeration|252||
> enumeration|253||
> enumeration|254||
> enumeration|255||
> enumeration|257||
> enumeration|256||
> enumeration|258||
> enumeration|259||
> enumeration|260||
> enumeration|261||
> enumeration|262||
> enumeration|263||
> enumeration|264||
> enumeration|265||
> enumeration|266||
> enumeration|267||
> enumeration|268||
> enumeration|269||
> enumeration|270||
> enumeration|271||
> enumeration|272||
> enumeration|273||
> enumeration|274||
> enumeration|275||
> enumeration|276||
> enumeration|277||
> enumeration|278||
> enumeration|279||
> enumeration|280||
> enumeration|281||
> enumeration|282||
> enumeration|283||
> enumeration|284||
> enumeration|285||
> enumeration|286||
> enumeration|287||
> enumeration|288||
> enumeration|289||
> enumeration|291||
> enumeration|290||
> enumeration|292||
> enumeration|293||
> enumeration|294||
> enumeration|295||
> enumeration|296||
> enumeration|297||
> enumeration|298||
> enumeration|299||
> enumeration|300||
> enumeration|301||
> enumeration|302||
> enumeration|303||
> enumeration|304||
> enumeration|305||
> enumeration|306||
> enumeration|308||
> enumeration|307||
> enumeration|309||
> enumeration|310||
> enumeration|311||
> enumeration|312||
> enumeration|313||
> enumeration|314||
> enumeration|315||
> enumeration|316||
> enumeration|317||
> enumeration|318||
> enumeration|319||
> enumeration|320||
> enumeration|321||
> enumeration|34||
> enumeration|322||
> enumeration|323||
> enumeration|324||
> enumeration|325||
> enumeration|326||
> enumeration|327||
> enumeration|328||
> enumeration|329||
> enumeration|330||
> enumeration|331||
> enumeration|332||
> enumeration|333||
> enumeration|334||
> enumeration|335||
> enumeration|336||
> enumeration|337||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_PhoneOrEmailURLScheme'></a>
>
> ### x_PhoneOrEmailURLScheme
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|fax||
> enumeration|mailto||
> enumeration|tel||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='x_PhoneURLScheme'></a>
>
> ### x_PhoneURLScheme
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|fax||
> enumeration|tel||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UnitsOfMeasureCaseInsensitive'></a>
>
> ### UnitsOfMeasureCaseInsensitive
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UnitOfMeasureAtomBaseUnitInsens'></a>
>
> ### UnitOfMeasureAtomBaseUnitInsens
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|C||
> enumeration|K||
> enumeration|CD||
> enumeration|G||
> enumeration|M||
> enumeration|RAD||
> enumeration|S||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UnitOfMeasureAtomInsens'></a>
>
> ### UnitOfMeasureAtomInsens
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|[APL'U]||
> enumeration|A||
> enumeration|AO||
> enumeration|BQ||
> enumeration|[BETH'U]||
> enumeration|BI||
> enumeration|[BDSK'U]||
> enumeration|[K]||
> enumeration|[BTU_39]||
> enumeration|[BTU_59]||
> enumeration|[BTU_60]||
> enumeration|[BTU_IT]||
> enumeration|[BTU_M]||
> enumeration|[BTU_TH]||
> enumeration|[BTU]||
> enumeration|[CAL]||
> enumeration|[CH]||
> enumeration|CI||
> enumeration|[DYE'U]||
> enumeration|F||
> enumeration|[GPL'U]||
> enumeration|GL||
> enumeration|GS||
> enumeration|GB||
> enumeration|GY||
> enumeration|H||
> enumeration|HZ||
> enumeration|[HNSF'U]||
> enumeration|J||
> enumeration|KY||
> enumeration|[KA'U]||
> enumeration|[KNK'U]||
> enumeration|LMB||
> enumeration|[MPL'U]||
> enumeration|[MCLG'U]||
> enumeration|MX||
> enumeration|N||
> enumeration|[GC]||
> enumeration|OE||
> enumeration|OHM||
> enumeration|PAL||
> enumeration|[H]||
> enumeration|P||
> enumeration|[PCA_PR]||
> enumeration|[PNT_PR]||
> enumeration|ROE||
> enumeration|SIE||
> enumeration|SV||
> enumeration|[SMGY'U]||
> enumeration|ST||
> enumeration|[S]||
> enumeration|T||
> enumeration|[TODD'U]||
> enumeration|U||
> enumeration|[USP'U]||
> enumeration|V||
> enumeration|W||
> enumeration|WB||
> enumeration|[G]||
> enumeration|[ACR_BR]||
> enumeration|[ACR_US]||
> enumeration|[ARB'U]||
> enumeration|AR||
> enumeration|ASU||
> enumeration|ATM||
> enumeration|ATT||
> enumeration|BAR||
> enumeration|BRN||
> enumeration|[BBL_US]||
> enumeration|BD||
> enumeration|B||
> enumeration|B[KW]||
> enumeration|B[UV]||
> enumeration|B[MV]||
> enumeration|B[SPL]||
> enumeration|B[V]||
> enumeration|B[W]||
> enumeration|BIT||
> enumeration|BIT_S||
> enumeration|[BF_I]||
> enumeration|[BU_US]||
> enumeration|[PK_BR]||
> enumeration|BY||
> enumeration|CAL_[15]||
> enumeration|CAL_[20]||
> enumeration|CAL_IT||
> enumeration|CAL_M||
> enumeration|CAL_TH||
> enumeration|CAL||
> enumeration|[CAR_M]||
> enumeration|[CAR_AU]||
> enumeration|[CH_BR]||
> enumeration|[CH_US]||
> enumeration|[RCH_US]||
> enumeration|[CICERO]||
> enumeration|CIRC||
> enumeration|[CML_I]||
> enumeration|[CR_I]||
> enumeration|[CRD_US]||
> enumeration|[CFT_I]||
> enumeration|[CIN_I]||
> enumeration|[CYD_I]||
> enumeration|[CUP_US]||
> enumeration|D||
> enumeration|DEG||
> enumeration|CEL||
> enumeration|[DEGF]||
> enumeration|[DIDOT]||
> enumeration|[DIOP]||
> enumeration|[DR_AV]||
> enumeration|[DR_AP]||
> enumeration|[DRP]||
> enumeration|[DPT_US]||
> enumeration|[DQT_US]||
> enumeration|DYN||
> enumeration|[M_E]||
> enumeration|EV||
> enumeration|[E]||
> enumeration|EQ||
> enumeration|ERG||
> enumeration|[FTH_BR]||
> enumeration|[FTH_I]||
> enumeration|[FTH_US]||
> enumeration|[FDR_BR]||
> enumeration|[FDR_US]||
> enumeration|[FOZ_BR]||
> enumeration|[FOZ_US]||
> enumeration|[FT_BR]||
> enumeration|[FT_I]||
> enumeration|[FT_US]||
> enumeration|[RD_BR]||
> enumeration|[FUR_US]||
> enumeration|[GAL_BR]||
> enumeration|[GAL_US]||
> enumeration|[GIL_BR]||
> enumeration|[GIL_US]||
> enumeration|GON||
> enumeration|[GR]||
> enumeration|G%||
> enumeration|GF||
> enumeration|[HD_I]||
> enumeration|[HPF]||
> enumeration|HR||
> enumeration|[IN_BR]||
> enumeration|[IN_I]||
> enumeration|[IN_US]||
> enumeration|[IN_I'HG]||
> enumeration|[IN_I'H2O]||
> enumeration|[IU]||
> enumeration|KAT||
> enumeration|[KN_BR]||
> enumeration|[KN_I]||
> enumeration|[LY]||
> enumeration|[LIGNE]||
> enumeration|[LNE]||
> enumeration|[LK_BR]||
> enumeration|[LK_US]||
> enumeration|[RLK_US]||
> enumeration|L||
> enumeration|[LCWT_AV]||
> enumeration|[LTON_AV]||
> enumeration|[LPF]||
> enumeration|LM||
> enumeration|LX||
> enumeration|[MESH_I]||
> enumeration|[MET]||
> enumeration|M[HG]||
> enumeration|M[H2O]||
> enumeration|[MIL_I]||
> enumeration|[MIL_US]||
> enumeration|[MI_BR]||
> enumeration|[MI_US]||
> enumeration|[MIN_BR]||
> enumeration|[MIN_US]||
> enumeration|'||
> enumeration|MIN||
> enumeration|MOL||
> enumeration|MO||
> enumeration|MO_G||
> enumeration|MO_J||
> enumeration|MO_S||
> enumeration|[NMI_BR]||
> enumeration|[NMI_I]||
> enumeration|NEP||
> enumeration|OSM||
> enumeration|[OZ_AP]||
> enumeration|[OZ_AV]||
> enumeration|[OZ_TR]||
> enumeration|[PH]||
> enumeration|[PC_BR]||
> enumeration|PRS||
> enumeration|[PPB]||
> enumeration|[PPM]||
> enumeration|[PPTH]||
> enumeration|[PPTR]||
> enumeration|[BU_BR]||
> enumeration|[PK_US]||
> enumeration|[PWT_TR]||
> enumeration|%||
> enumeration|[PRU]||
> enumeration|[MU_0]||
> enumeration|[EPS_0]||
> enumeration|PHT||
> enumeration|[PCA]||
> enumeration|[PIED]||
> enumeration|[PT_BR]||
> enumeration|[PT_US]||
> enumeration|[PNT]||
> enumeration|[POUCE]||
> enumeration|[LB_AP]||
> enumeration|[LB_AV]||
> enumeration|[LB_TR]||
> enumeration|[LBF_AV]||
> enumeration|[M_P]||
> enumeration|[PSI]||
> enumeration|[QT_BR]||
> enumeration|[QT_US]||
> enumeration|[RAD]||
> enumeration|[REM]||
> enumeration|[RD_US]||
> enumeration|[SC_AP]||
> enumeration|''||
> enumeration|[SCT]||
> enumeration|[SCWT_AV]||
> enumeration|[STON_AV]||
> enumeration|SPH||
> enumeration|[SFT_I]||
> enumeration|[SIN_I]||
> enumeration|[SMI_US]||
> enumeration|[SRD_US]||
> enumeration|[SYD_I]||
> enumeration|[MI_I]||
> enumeration|STR||
> enumeration|SB||
> enumeration|[STONE_AV]||
> enumeration|SR||
> enumeration|[TBS_US]||
> enumeration|[TSP_US]||
> enumeration|10*||
> enumeration|[PI]||
> enumeration|TNE||
> enumeration|[TWP]||
> enumeration|[TB'U]||
> enumeration|AMU||
> enumeration|[C]||
> enumeration|WK||
> enumeration|[GAL_WI]||
> enumeration|[YD_BR]||
> enumeration|[YD_I]||
> enumeration|[YD_US]||
> enumeration|ANN||
> enumeration|ANN_G||
> enumeration|ANN_J||
> enumeration|ANN_T||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UnitOfMeasurePrefixInsens'></a>
>
> ### UnitOfMeasurePrefixInsens
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|A||
> enumeration|C||
> enumeration|D||
> enumeration|DA||
> enumeration|EX||
> enumeration|F||
> enumeration|GIB||
> enumeration|GA||
> enumeration|H||
> enumeration|KIB||
> enumeration|K||
> enumeration|MIB||
> enumeration|MA||
> enumeration|U||
> enumeration|M||
> enumeration|N||
> enumeration|PT||
> enumeration|P||
> enumeration|TIB||
> enumeration|TR||
> enumeration|YO||
> enumeration|YA||
> enumeration|ZO||
> enumeration|ZA||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UnitsOfMeasureCaseSensitive'></a>
>
> ### UnitsOfMeasureCaseSensitive
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UnitOfMeasureAtomBaseUnitSens'></a>
>
> ### UnitOfMeasureAtomBaseUnitSens
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|C||
> enumeration|K||
> enumeration|cd||
> enumeration|g||
> enumeration|m||
> enumeration|rad||
> enumeration|s||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UnitOfMeasureAtomSens'></a>
>
> ### UnitOfMeasureAtomSens
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|[APL'U]||
> enumeration|A||
> enumeration|Ao||
> enumeration|Bq||
> enumeration|[beth'U]||
> enumeration|Bi||
> enumeration|[bdsk'U]||
> enumeration|[k]||
> enumeration|[Btu_39]||
> enumeration|[Btu_59]||
> enumeration|[Btu_60]||
> enumeration|[Btu_IT]||
> enumeration|[Btu_m]||
> enumeration|[Btu_th]||
> enumeration|[Btu]||
> enumeration|[Cal]||
> enumeration|[Ch]||
> enumeration|Ci||
> enumeration|[dye'U]||
> enumeration|F||
> enumeration|[GPL'U]||
> enumeration|Gal||
> enumeration|G||
> enumeration|Gb||
> enumeration|Gy||
> enumeration|H||
> enumeration|Hz||
> enumeration|[hnsf'U]||
> enumeration|J||
> enumeration|Ky||
> enumeration|[ka'U]||
> enumeration|[knk'U]||
> enumeration|Lmb||
> enumeration|[MPL'U]||
> enumeration|[mclg'U]||
> enumeration|Mx||
> enumeration|N||
> enumeration|[G]||
> enumeration|Oe||
> enumeration|Ohm||
> enumeration|Pa||
> enumeration|[h]||
> enumeration|P||
> enumeration|[pca_pr]||
> enumeration|[pnt_pr]||
> enumeration|R||
> enumeration|S||
> enumeration|Sv||
> enumeration|[smgy'U]||
> enumeration|St||
> enumeration|[S]||
> enumeration|T||
> enumeration|[todd'U]||
> enumeration|U||
> enumeration|[USP'U]||
> enumeration|V||
> enumeration|W||
> enumeration|Wb||
> enumeration|[g]||
> enumeration|[acr_br]||
> enumeration|[acr_us]||
> enumeration|[arb'U]||
> enumeration|ar||
> enumeration|AU||
> enumeration|atm||
> enumeration|att||
> enumeration|bar||
> enumeration|b||
> enumeration|[bbl_us]||
> enumeration|Bd||
> enumeration|B||
> enumeration|B[kW]||
> enumeration|B[uV]||
> enumeration|B[mV]||
> enumeration|B[SPL]||
> enumeration|B[V]||
> enumeration|B[W]||
> enumeration|bit||
> enumeration|bit_s||
> enumeration|[bf_i]||
> enumeration|[bu_us]||
> enumeration|[pk_br]||
> enumeration|By||
> enumeration|cal_[15]||
> enumeration|cal_[20]||
> enumeration|cal_IT||
> enumeration|cal_m||
> enumeration|cal_th||
> enumeration|cal||
> enumeration|[car_m]||
> enumeration|[car_Au]||
> enumeration|[ch_br]||
> enumeration|[ch_us]||
> enumeration|[rch_us]||
> enumeration|[cicero]||
> enumeration|circ||
> enumeration|[cml_i]||
> enumeration|[cr_i]||
> enumeration|[crd_us]||
> enumeration|[cft_i]||
> enumeration|[cin_i]||
> enumeration|[cyd_i]||
> enumeration|[cup_us]||
> enumeration|d||
> enumeration|deg||
> enumeration|Cel||
> enumeration|[degF]||
> enumeration|[didot]||
> enumeration|[diop]||
> enumeration|[dr_av]||
> enumeration|[dr_ap]||
> enumeration|[drp]||
> enumeration|[dpt_us]||
> enumeration|[dqt_us]||
> enumeration|dyn||
> enumeration|[m_e]||
> enumeration|eV||
> enumeration|[e]||
> enumeration|eq||
> enumeration|erg||
> enumeration|[fth_br]||
> enumeration|[fth_i]||
> enumeration|[fth_us]||
> enumeration|[fdr_br]||
> enumeration|[fdr_us]||
> enumeration|[foz_br]||
> enumeration|[foz_us]||
> enumeration|[ft_br]||
> enumeration|[ft_i]||
> enumeration|[ft_us]||
> enumeration|[rd_br]||
> enumeration|[fur_us]||
> enumeration|[gal_br]||
> enumeration|[gal_us]||
> enumeration|[gil_br]||
> enumeration|[gil_us]||
> enumeration|gon||
> enumeration|[gr]||
> enumeration|g%||
> enumeration|gf||
> enumeration|[hd_i]||
> enumeration|[HPF]||
> enumeration|h||
> enumeration|[in_br]||
> enumeration|[in_i]||
> enumeration|[in_us]||
> enumeration|[in_i'Hg]||
> enumeration|[in_i'H2O]||
> enumeration|[iU]||
> enumeration|kat||
> enumeration|[kn_br]||
> enumeration|[kn_i]||
> enumeration|[ly]||
> enumeration|[ligne]||
> enumeration|[lne]||
> enumeration|[lk_br]||
> enumeration|[lk_us]||
> enumeration|[rlk_us]||
> enumeration|l||
> enumeration|[lcwt_av]||
> enumeration|[lton_av]||
> enumeration|[LPF]||
> enumeration|lm||
> enumeration|lx||
> enumeration|[mesh_i]||
> enumeration|[MET]||
> enumeration|m[Hg]||
> enumeration|m[H2O]||
> enumeration|[mil_i]||
> enumeration|[mil_us]||
> enumeration|[mi_br]||
> enumeration|[mi_us]||
> enumeration|[min_br]||
> enumeration|[min_us]||
> enumeration|'||
> enumeration|min||
> enumeration|mol||
> enumeration|mo||
> enumeration|mo_g||
> enumeration|mo_j||
> enumeration|mo_s||
> enumeration|[nmi_br]||
> enumeration|[nmi_i]||
> enumeration|Np||
> enumeration|osm||
> enumeration|[oz_ap]||
> enumeration|[oz_av]||
> enumeration|[oz_tr]||
> enumeration|[pH]||
> enumeration|[pc_br]||
> enumeration|pc||
> enumeration|[ppb]||
> enumeration|[ppm]||
> enumeration|[ppth]||
> enumeration|[pptr]||
> enumeration|[bu_br]||
> enumeration|[pk_us]||
> enumeration|[pwt_tr]||
> enumeration|%||
> enumeration|[PRU]||
> enumeration|[mu_0]||
> enumeration|[eps_0]||
> enumeration|ph||
> enumeration|[pca]||
> enumeration|[pied]||
> enumeration|[pt_br]||
> enumeration|[pt_us]||
> enumeration|[pnt]||
> enumeration|[pouce]||
> enumeration|[lb_ap]||
> enumeration|[lb_av]||
> enumeration|[lb_tr]||
> enumeration|[lbf_av]||
> enumeration|[m_p]||
> enumeration|[psi]||
> enumeration|[qt_br]||
> enumeration|[qt_us]||
> enumeration|RAD||
> enumeration|REM||
> enumeration|[rd_us]||
> enumeration|[sc_ap]||
> enumeration|''||
> enumeration|[sct]||
> enumeration|[scwt_av]||
> enumeration|[ston_av]||
> enumeration|sph||
> enumeration|[sft_i]||
> enumeration|[sin_i]||
> enumeration|[smi_us]||
> enumeration|[srd_us]||
> enumeration|[syd_i]||
> enumeration|[mi_i]||
> enumeration|st||
> enumeration|sb||
> enumeration|[stone_av]||
> enumeration|sr||
> enumeration|[tbs_us]||
> enumeration|[tsp_us]||
> enumeration|10*||
> enumeration|[pi]||
> enumeration|t||
> enumeration|[twp]||
> enumeration|[tb'U]||
> enumeration|u||
> enumeration|[c]||
> enumeration|wk||
> enumeration|[gal_wi]||
> enumeration|[yd_br]||
> enumeration|[yd_i]||
> enumeration|[yd_us]||
> enumeration|a||
> enumeration|a_g||
> enumeration|a_j||
> enumeration|a_t||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='UnitOfMeasurePrefixSens'></a>
>
> ### UnitOfMeasurePrefixSens
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|a||
> enumeration|c||
> enumeration|d||
> enumeration|da||
> enumeration|E||
> enumeration|f||
> enumeration|Gi||
> enumeration|G||
> enumeration|h||
> enumeration|Ki||
> enumeration|k||
> enumeration|Mi||
> enumeration|M||
> enumeration|u||
> enumeration|m||
> enumeration|n||
> enumeration|P||
> enumeration|p||
> enumeration|Ti||
> enumeration|T||
> enumeration|y||
> enumeration|Y||
> enumeration|z||
> enumeration|Z||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='VaccineManufacturer'></a>
>
> ### VaccineManufacturer
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|AB||
> enumeration|AD||
> enumeration|ALP||
> enumeration|AR||
> enumeration|PMC||
> enumeration|AVI||
> enumeration|BA||
> enumeration|BAY||
> enumeration|BPC||
> enumeration|BP||
> enumeration|MIP||
> enumeration|CEN||
> enumeration|CHI||
> enumeration|CON||
> enumeration|EVN||
> enumeration|GRE||
> enumeration|IAG||
> enumeration|IUS||
> enumeration|KGC||
> enumeration|LED||
> enumeration|MA||
> enumeration|MED||
> enumeration|MSD||
> enumeration|IM||
> enumeration|MIL||
> enumeration|NAB||
> enumeration|NYB||
> enumeration|NAV||
> enumeration|NOV||
> enumeration|OTC||
> enumeration|ORT||
> enumeration|PD||
> enumeration|PRX||
> enumeration|SCL||
> enumeration|SKB||
> enumeration|SI||
> enumeration|JPN||
> enumeration|USA||
> enumeration|WAL||
> enumeration|WA||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='VaccineType'></a>
>
> ### VaccineType
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|24||
> enumeration|19||
> enumeration|29||
> enumeration|26||
> enumeration|28||
> enumeration|1||
> enumeration|22||
> enumeration|20||
> enumeration|50||
> enumeration|30||
> enumeration|61||
> enumeration|62||
> enumeration|57||
> enumeration|85||
> enumeration|52||
> enumeration|83||
> enumeration|84||
> enumeration|31||
> enumeration|45||
> enumeration|8||
> enumeration|42||
> enumeration|43||
> enumeration|44||
> enumeration|58||
> enumeration|59||
> enumeration|47||
> enumeration|46||
> enumeration|49||
> enumeration|48||
> enumeration|17||
> enumeration|51||
> enumeration|86||
> enumeration|14||
> enumeration|87||
> enumeration|10||
> enumeration|39||
> enumeration|63||
> enumeration|66||
> enumeration|4||
> enumeration|3||
> enumeration|94||
> enumeration|2||
> enumeration|70||
> enumeration|34||
> enumeration|71||
> enumeration|93||
> enumeration|73||
> enumeration|76||
> enumeration|13||
> enumeration|98||
> enumeration|95||
> enumeration|96||
> enumeration|97||
> enumeration|9||
> enumeration|92||
> enumeration|81||
> enumeration|80||
> enumeration|36||
> enumeration|82||
> enumeration|54||
> enumeration|55||
> enumeration|27||
> enumeration|56||
> enumeration|12||
> enumeration|60||
> enumeration|88||
> enumeration|15||
> enumeration|16||
> enumeration|64||
> enumeration|65||
> enumeration|67||
> enumeration|5||
> enumeration|68||
> enumeration|32||
> enumeration|7||
> enumeration|69||
> enumeration|11||
> enumeration|23||
> enumeration|33||
> enumeration|100||
> enumeration|89||
> enumeration|90||
> enumeration|40||
> enumeration|18||
> enumeration|72||
> enumeration|74||
> enumeration|6||
> enumeration|38||
> enumeration|75||
> enumeration|35||
> enumeration|77||
> enumeration|78||
> enumeration|91||
> enumeration|101||
> enumeration|25||
> enumeration|41||
> enumeration|53||
> enumeration|79||
> enumeration|21||
> enumeration|37||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ValueSetOperator'></a>
>
> ### ValueSetOperator
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|E||
> enumeration|I||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ValueSetPropertyId'></a>
>
> ### ValueSetPropertyId
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|appliesTo||
> enumeration|howApplies||
> enumeration|openIssue||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ValueSetStatus'></a>
>
> ### ValueSetStatus
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|A||
> enumeration|D||
> enumeration|P||
> enumeration|R||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='VocabularyDomainQualifier'></a>
>
> ### VocabularyDomainQualifier
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Extensibility'></a>
>
> ### Extensibility
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|CNE||
> enumeration|CWE||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='RealmOfUse'></a>
>
> ### RealmOfUse
>
> ### Restriction
>
> Base type: [cs](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#cs)
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|Canada||
> enumeration|NorthAmerica||
> enumeration|USA||
> enumeration|UV||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='bl'></a>
>
> ### bl
>
> ### Restriction
>
> Base type: boolean
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> pattern|true|false||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='bn'></a>
>
> ### bn
>
> ### Restriction
>
> Base type: [bl](xref:HV_1ed1cba6-9530-44a3-b7b5-e8219690ebcf#bl)
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='bin'></a>
>
> ### bin
>
> ### Restriction
>
> Base type: base64Binary
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='BinaryDataEncoding'></a>
>
> ### BinaryDataEncoding
>
> ### Restriction
>
> Base type: NMTOKEN
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> enumeration|B64||
> enumeration|TXT||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='st'></a>
>
> ### st
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minLength|1||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='cs'></a>
>
> ### cs
>
> ### Restriction
>
> Base type: token
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> pattern|[^\s]+||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='uid'></a>
>
> ### uid
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='oid'></a>
>
> ### oid
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> pattern|[0-2](\.(0|[1-9][0-9]*))*||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='uuid'></a>
>
> ### uuid
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> pattern|[0-9a-zA-Z]{8}-[0-9a-zA-Z]{4}-[0-9a-zA-Z]{4}-[0-9a-zA-Z]{4}-[0-9a-zA-Z]{12}||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ruid'></a>
>
> ### ruid
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> pattern|[A-Za-z][A-Za-z0-9\-]*||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='url'></a>
>
> ### url
>
> ### Restriction
>
> Base type: anyURI
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ts'></a>
>
> ### ts
>
> ### Restriction
>
> Base type: string
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> pattern|[0-9]{1,8}|([0-9]{9,14}|[0-9]{14,14}\.[0-9]+)([+\-][0-9]{1,4})?||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='int'></a>
>
> ### int
>
> ### Restriction
>
> Base type: integer
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='real'></a>
>
> ### real
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='probability'></a>
>
> ### probability
>
> ### Restriction
>
> Base type: double
>
> #### Restriction facets
>
> Restriction type|Value|Summary|Remarks
> ---|---|---|---
> minInclusive|0.0||
> maxInclusive|1.0||
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='set_TelecommunicationAddressUse'></a>
>
> ### set_TelecommunicationAddressUse
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='set_PostalAddressUse'></a>
>
> ### set_PostalAddressUse
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='set_EntityNamePartQualifier'></a>
>
> ### set_EntityNamePartQualifier
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='set_EntityNameUse'></a>
>
> ### set_EntityNameUse
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='list_int'></a>
>
> ### list_int
>
>

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/cda.xsd)
[!code-xml[XSD schema](../xsd/cda.xsd)]
