---
title: Data
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn about HealthVault's data storage architecture and key concepts
---

# HealthVault data storage architecture

HealthVault stores most data in XML-based items called Things. Things are strongly typed according to the [thing type schema](/healthvault/concepts/data/thing-types.md). 

Data types like [PersonalImage](personal-images.md) aren't well represented in XML, however, so HealthVault uses data blobs to store the actual images.  

## Data types
Learn more about how HealthVault stores data. 

- [Thing types](/healthvault/concepts/data/thing-types.md)
- [Thing type versioning](/healthvault/concepts/data/thing-type-versioning.md)
- [Version stamps](/healthvault/concepts/data/version-stamps.md)
- [Downloading type schemas](/healthvault/concepts/data/downloading-type-schemas.md)
- [Common data types](/healthvault/concepts/data/common-data-types.md)
- [Extending data types](/healthvault/concepts/data/extending-data-types.md)
- [Custom data types](/healthvault/concepts/data/custom-data-types.md)
- [Active and inactive status](/healthvault/concepts/data/active-and-inactive-status.md)
- [Vocabularies and codable values](/healthvault/concepts/data/vocabularies-and-codable-values.md)
- [Weights and measurements](/healthvault/concepts/data/weights-and-measurements.md)
- [Personal images](/healthvault/concepts/data/personal-images.md)
- [Read only data](/healthvault/concepts/data/read-only-data.md)
- [Digital signatures](/healthvault/concepts/data/digital-signatures.md)

### Continuity of Care Records & Continuity of Care Documents
HealthVault supports both Continuity of Care Records (CCR) & Continuity of Care Documents (CCD) data exchange. Learn more about our support for CCR and CCD here: 
- [CCR data](/healthvault/concepts/data/ccr-data.md)
- [CCR & CCD storage](/healthvault/concepts/data/ccr-and-ccd-storage.md)
- [CCR input functions](/healthvault/concepts/data/ccr-input-functions.md)
- [CCR input mappings](/healthvault/concepts/data/ccr-input-mappings.md)
- [CCR output mappings](/healthvault/concepts/data/ccr-output-functions.md)
- [CCR output functions](/healthvault/concepts/data/ccr-output-functions.md)
- [CCR vocabularies](/healthvault/concepts/data/ccr-vocabularies.md)

### Medical images
HealthVault supports certain kinds of medical images. Learn more about Medical Imaging on HealthVault:
- [Medical Imaging](/healthvault/concepts/data/medical-imaging.md)
- [Medical Imaging Sample](/healthvault/concepts/data/medical-imaging-sample-application.md)

## Troubleshooting
If you have problems getting data in HealthVault, please see the resources below. 

- [Request/response tracing in HealthVault](/healthvault/concepts/data/request-response-tracing.md)


