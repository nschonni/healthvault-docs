---
uid: HV_File_createconnectpackage
title: CreateConnectPackage
---

# CreateConnectPackage

## Request Overview

Creates a package containing a data that the user can claim using the identity code returned by this method

## Request Details

<a name='info'></a>

### Root element: info

The element of the request that contains the method specific parameters.

All requests contain the info element to pass parameters that are specific to each method. If the method does not define an info element, the method does not take any parameters.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
identity-code|string|0|1||
friendly-name|[stringnz](xref:HV_File_types#stringnz)|1|1|A friendly name that will be presented to the user after the user successfully answers the challenge question.|The friendly name should be something that is recognizable and distinguishes one package from another so that the user may choose the expected record during validation. For example, a mother of 2 children may want her packages named after each child so she can distinguish one child's package from the others.
question|[stringnz](xref:HV_File_types#stringnz)|1|1|A challenge question posed to the user once the identity code has been successfully entered.|The challenge question should be personal and easy to answer for the user. An empty question will result in an InvalidVerificationQuestion error.
external-id|[stringnz](xref:HV_File_types#stringnz)|1|1|An identifier supplied by the external application for the connect package.|This value will tie the external application to the HealthVault record being shared. For instance, this could be the patient identifier used to store information in the calling application's database.
package|[thing](xref:HV_File_thing)|1|1|The package to create.|This package must be a Password Protected Package Thing. It's data-other must be Base64 encoded, and must contain the encrypted data which the user will be able to decrypt by answering the verification question. The decoded and decrypted data must be a sequence of thing elements as defined by the following schema: <sequence><element name="thing" type="wc-thing:Thing" minOccurs="1" maxOccurs="unbounded" /></sequence> For example: <thing><type-id>3d34d87e-7fc1-4153-800f-f56592cb0d17</type-id><data-xml> ... </data-xml></thing><thing><type-id>40750a6a-89b2-455c-bd8d-b420a4cb500b</type-id><data-xml> ... </data-xml></thing>

## Response Overview

The unique identity code (to access the package) or failure result.

## Response Details

<a name='info'></a>

### Root element: info

The element of the response that contains the method specific return value(s).

All response schemas contain the info element which contain the return value of the method. If the method does not define an info element, the method has no return value.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks
---|---|---|---|---|---
identity-code|string|1|1|A 20 digit unique code that the user will need to enter into account.healthvault.com in order to face the challenge question and access the PPP.|This code is to be kept secret. If the code is lost, the application should call DeleteConnectPackage in order to delete it, then call CreateConnectPackage again in order to obtain a new identity code.

## Request XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/method-createconnectpackage.xsd)
[!code-xml[XSD schema](../xsd/method-createconnectpackage.xsd)]

## Response XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/response-createconnectpackage.xsd)
[!code-xml[XSD schema](../xsd/response-createconnectpackage.xsd)]
