---
uid: HV_File_selectinstance
title: SelectInstance
---

# SelectInstance

## Request Overview

Gets the HealthVault instance that supports a specified geographic location.

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
preferred-location|[location](xref:HV_File_location)|1|1|The user's preferred geographical location.|This parameter determines what instance should be used to store a new HealthVault account. If there is a location associated with the credential that will be used for the new HealthVault account, that location should be used.

## Response Overview

Schema for the SelectInstance method request.

## Response Details

<a name='info'></a>

### Root element: info

The element of the response that contains the method specific return value(s).

All response schemas contain the info element which contain the return value of the method. If the method does not define an info element, the method has no return value.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
selected-instance|[Instance](xref:HV_File_types#Instance)|0|1|The unique identifier for the instance that handles the specified location that was passed in.|There are a set of countries that HealthVault does not support. If one of those countries are passed in, the result will not contain a selected-instance-id element.

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-selectinstance.xsd)
[!code-xml[XSD schema](../xsd/method-selectinstance.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-selectinstance.xsd)
[!code-xml[XSD schema](../xsd/response-selectinstance.xsd)]
