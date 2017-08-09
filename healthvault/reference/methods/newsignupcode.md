---
uid: HV_File_newsignupcode
title: NewSignupCode
---

# NewSignupCode

## Response Overview

The unique signup code or failure result.

## Response Details

<a name='info'></a>

### Root element: info

The element of the response that contains the method specific return value(s).

All response schemas contain the info element which contain the return value of the method. If the method does not defined an info element, the method has no return value.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
signup-code|string|1|1|A 20 digit unique code that the application will need to pass to account.healthvault.com in order to allow users to create an account.|

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-newsignupcode.xsd)
[!code-xml[XSD schema](../xsd/response-newsignupcode.xsd)]
