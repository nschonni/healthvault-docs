---
uid: HV_cdfc0a9b-6d3b-4d16-afa8-02b86d621a8d
title: Medical image study
---

# Medical image study

## Overview

Property|Value
---|---
id|cdfc0a9b-6d3b-4d16-afa8-02b86d621a8d
name|Medical image study
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.MedicalImageStudyV2](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.medicalimagestudyv2)
- [Microsoft.HealthVault.ItemTypes.MedicalImageStudyV2](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.medicalimagestudyv2)

## Related articles

- [HealthVault medical imaging](http://go.microsoft.com/fwlink/?LinkId=513251)
- [Working with Blobs and Streamed Data](http://go.microsoft.com/fwlink/?LinkId=513264)

## Details
DICOM data is stored in the named blob portion of the data type, and it is recommended that normal DICOM conventions are used for naming. An application may store XDS-i manifest information in XML format in the xds-i element.

<a name='medical-image-study'></a>

### Root element: medical-image-study

A collection of medical images.

DICOM data is stored in the named blob portion of the data type, and it is recommended that normal DICOM conventions are used for naming. An application may store XDS-i manifest information in XML format in the xds-i element.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|The date and time the study was created.|DICOM tags (0008,0020) and (0008,0030).
patient-name|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|The name of the patient as contained in the medical image.|DICOM tag (0010,0010).
description|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|A description of the study.|DICOM tag (0008,1030).
series|[medical-image-study-series](#medical-image-study-series)|1|unbounded|A collection of series.|
reason|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The reason for the study.|DICOM tag (0032,1030).
preview-blob-name|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|The name of the blob holding a smaller version of the image suitable for web viewing or email.|Previews should be stored using the jpeg or png format. It is recommended that the shorter dimension of the image be no less than 500 pixels in size.
key-images|[medical-image-study-series-image](#medical-image-study-series-image)|0|unbounded|The important images in the study.|
study-instance-uid|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|The study instance UID.|DICOM tag (0020,000D).
referring-physician|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|0|1|The physician who ordered the study.|DICOM tag (0008,0090)
accession-number|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|The radiology information service generated number that identifies the order for the study.|DICOM tag (0008,0050).

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='medical-image-study-series-image'></a>
>
> ### medical-image-study-series-image
>
> Information about a single image in a series.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> image-blob-name|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|The name of the blob holding the original data for this image.|DICOM tag (0008,0018).
> image-preview-blob-name|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|The name of the blob holding a smaller version of the image suitable for web viewing or email.|Previews should be stored using the jpeg or png format. It is recommended that the shorter dimension of the image be no less than 500 pixels in size.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='medical-image-study-series'></a>
>
> ### medical-image-study-series
>
> A specific series of images.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> acquisition-datetime|[date-time](xref:HV_File_dates#date-time)|0|1|The date and time that the image was acquired.|DICOM tags (0008,0022), (0008,0032).|
> description|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|A description of the series.|DICOM tag (0008,103E).|
> images|[medical-image-study-series-image](#medical-image-study-series-image)|1|unbounded|The collection of images.||
> institution-name|[Organization](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#Organization)|0|1|The name of the institution where the images were acquired.|DICOM tag (0008,0080).|
> modality|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The method (or modality) in which the images were acquired.|DICOM tag (0008,0060).|dicom.modality
> body-part|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The body part that was imaged.|DICOM tag (0018,0015).|
> preview-blob-name|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|The name of the blob holding a smaller version of the image suitable for web viewing or email.|Previews should be stored using the jpeg or png format. It is recommended that the shorter dimension of the image be no less than 500 pixels in size.|
> series-instance-uid|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|The series instance UID.|DICOM tag (0020,000E).|
>
>

## Example
[!code-xml[Example](../sample-xml/cdfc0a9b-6d3b-4d16-afa8-02b86d621a8d.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/medical-image-study.2.xsd)
[!code-xml[XSD schema](../xsd/medical-image-study.2.xsd)]
