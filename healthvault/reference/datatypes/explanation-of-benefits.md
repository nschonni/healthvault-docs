---
uid: HV_356fbba9-e0c9-4f4f-b0d9-4594f2490d2f
title: Explanation of benefits (EOB)
---

# Explanation of benefits (EOB)

## Overview

Property|Value
---|---
id|356fbba9-e0c9-4f4f-b0d9-4594f2490d2f
name|Explanation of benefits (EOB)
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.ExplanationOfBenefits](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.explanationofbenefits)
- [Microsoft.HealthVault.ItemTypes.ExplanationOfBenefits](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.explanationofbenefits)

## Related data types

- [Discharge summary](xref:HV_02EF57A2-A620-425A-8E92-A301542CCA54)
- [Insurance plan](xref:HV_9366440c-ec81-4b89-b231-308a4c4d70ed)

## Details
An explanation of benefits received from an insurance plan.

<a name='explanation-of-benefits'></a>

### Root element: explanation-of-benefits

An Explanation of Benefits (EOB) that contains information about an insurance claim.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
date-submitted|[date-time](xref:HV_File_dates#date-time)|1|1|The date when the claim was submitted.||
patient|[person](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#person)|1|1|The name of the patient.||
relationship-to-member|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The relationship of the patient to the primary plan member.||[relationship-types](xref:HV_428b83c7-72e1-4af3-81b6-9b03ac600c7a)
plan|[Organization](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#Organization)|1|1|The plan covering this claim.||
group-id|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|1|The group id for the member's plan.||
member-id|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|The member id of the plan member.||
claim-type|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The type of the claim (medical, dental, etc.)||explanation-of-benefits-claim-type
claim-id|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|1|1|The claim id.||
submitted-by|[Organization](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#Organization)|1|1|The organization that submitted this claim.||
provider|[Organization](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#Organization)|1|1|The provider that performed the services.||
currency|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The currency used.||
claim-totals|[ClaimAmounts](#ClaimAmounts)|1|1|A summary of the financial information about this claim.||
services|[Service](#Service)|1|unbounded|The service included in this claim.||

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='ClaimAmounts'></a>
>
> ### ClaimAmounts
>
> The financial information related to this claim.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> charged-amount|decimal|1|1|The amount charged.|
> negotiated-amount|decimal|1|1|The amount negotiated between the provider and the payer.|
> copay|decimal|1|1|The copayment amount.|
> deductible|decimal|1|1|The deductible amount.|
> amount-not-covered|decimal|1|1|Amount for services not covered by the plan.|
> eligible-for-benefits|decimal|1|1|The amount that is eligible for benefits.|
> percentage-covered|[percentage](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#percentage)|0|1|The percentage of the eligable amount that is covered by the payer.|This should be set for services, but not for totals.
> coinsurance|decimal|1|1|The amount paid by the person.|
> miscellaneous-adjustments|decimal|1|1|Adjustments that may affect the amount paid on the claim.|
> benefits-paid|decimal|1|1|The amount paid by the payer.|
> patient-responsibility|decimal|1|1|The total amount paid by the patient.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='Service'></a>
>
> ### Service
>
> Information about a specific service..
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> service-type|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The type of the service.||
> diagnosis|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The diagnosis.||idc9cm
> billing-code|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|The billing code.||idc9cm
> service-dates|[duration-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#duration-value)|1|1|The dates for this service.||
> claim-amounts|[ClaimAmounts](#ClaimAmounts)|1|1|The financial information for this service.||
> notes|[stringnznw](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#stringnznw)|0|unbounded|Additional information about this service.||
>
>

## Example
[!code-xml[Example](../sample-xml/356fbba9-e0c9-4f4f-b0d9-4594f2490d2f.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/explanation-of-benefits.xsd)
[!code-xml[XSD schema](../xsd/explanation-of-benefits.xsd)]
