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

HealthVault stores most data in XML-based items called Things. Things are strongly typed according to the [thing type schema](/healthvault/concepts/data/thing-types). 

Data types like [PersonalImage](personal-images.md) aren't well represented in XML, however, so HealthVault uses data blobs to store the actual images.  

## Data types
Learn more about how HealthVault stores data. 

- [Thing types](/healthvault/concepts/data/thing-types)
- [Thing type versioning](/healthvault/concepts/data/thing-type-versioning)
- [Version stamps](/healthvault/concepts/data/version-stamps)
- [Downloading type schemas](/healthvault/concepts/data/downloading-type-schemas)
- [Common data types](/healthvault/concepts/data/common-data-types)
- [Extending data types](/healthvault/concepts/data/extending-data-types)
- [Custom data types](/healthvault/concepts/data/custom-data-types)
- [Active and inactive status](/healthvault/concepts/data/active-and-inactive-status)
- [Vocabularies and codable values](/healthvault/concepts/data/vocabularies-and-codable-values)
- [Weights and measurements](/healthvault/concepts/data/weights-and-measurements)
- [Personal images](/healthvault/concepts/data/personal-images)
- [Read only data](/healthvault/concepts/data/read-only-data)
- [Digital signatures](/healthvault/concepts/data/digital-signatures)

### Continuity of Care Records & Continuity of Care Documents
HealthVault supports both Continuity of Care Records (CCR) & Continuity of Care Documents (CCD) data exchange. Learn more about our support for CCR and CCD here: 
- [CCR data](/healthvault/concepts/data/ccr-data)
- [CCR & CCD storage](/healthvault/concepts/data/ccr-and-ccd-storage)
- [CCR input functions](/healthvault/concepts/data/ccr-input-functions)
- [CCR input mappings](/healthvault/concepts/data/ccr-input-mappings)
- [CCR output mappings](/healthvault/concepts/data/ccr-output-functions)
- [CCR output functions](/healthvault/concepts/data/ccr-output-functions)
- [CCR vocabularies](/healthvault/concepts/data/ccr-vocabularies)

### Medical images
HealthVault supports certain kinds of medical images. Learn more about Medical Imaging on HealthVault:
- [Medical Imaging](/healthvault/concepts/data/medical-imaging)
- [Medical Imaging Sample](/healthvault/concepts/data/medical-imaging-sample-application)

## Troubleshooting
If you have problems getting data in HealthVault, please see the resources below. 

- [Request/response tracing in HealthVault](/healthvault/concepts/data/request-response-tracing)


