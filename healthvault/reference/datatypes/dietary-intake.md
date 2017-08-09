---
uid: HV_089646a6-7e25-4495-ad15-3e28d4c1a71d
title: Food & drink
---

# Food & drink

## Overview

Property|Value
---|---
id|089646a6-7e25-4495-ad15-3e28d4c1a71d
name|Food & drink
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## Related data types

- [Daily dietary intake](xref:HV_9c29c6b9-f40e-44ff-b24e-fba6f3074638)
- [Meal definition](xref:HV_074e122a-335a-4a47-a63d-00a8f3e79e60)

## Details
The amount of dietary nutrients and minerals consumed.

<a name='dietary-intake'></a>

### Root element: dietary-intake

The amount of dietary nutrients and minerals consumed.
 Type: this:DietaryIntake

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='food-energy-value'></a>
>
> ### food-energy-value
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> calories|[nonNegativeDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeDouble)|1|1|The amount of calories consumed.|Calories are measured in kilocalories (kCal).
> display|[display-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#display-value)|0|1|A numeric value used for display purposes and tagged with arbitrary units.|The display value should be set whenever data is taken directly from the user through UI and it should be used to show data to the user when available.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='nutrition-fact'></a>
>
> ### nutrition-fact
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> name|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The name of the nutrient consumed.|Example: calcium.
> fact|[general-measurement](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#general-measurement)|0|1|The amount of nutrient consumed.|Examples include 30 cc, 500 mg, 15 liters, 30 inches, etc.
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='additional-nutrition-facts'></a>
>
> ### additional-nutrition-facts
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks
> ---|---|---|---|---|---
> nutrition-fact|[nutrition-fact](#nutrition-fact)|1|unbounded|The set of nutrient consumed.|
>
>

>[!div style="margin-left: 4px; border-left: 1px solid; padding-left: 5px;"]
>
> <a name='DietaryIntake'></a>
>
> ### DietaryIntake
>
> The amount of dietary nutrients and minerals consumed.
>
> ### Element sequence
>
> Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
> ---|---|---|---|---|---|---
> food-item|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|Represents the food item that was eaten.||usda.food-description.24
> serving-size|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|Represents a serving size.|In the USDA food vocab a serving size is defined within the context of a particular food and represents how a food is commonly consumed. For example: cups of strawberries, number of dates, number of table spoons or sticks of butter.|
> servings-consumed|[nonNegativeDouble](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#nonNegativeDouble)|0|1|A number representing the number of servings consumed.||
> meal|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|1|A textual description of a meal.||[dietary-intake-meals](xref:HV_c5f5988f-8e58-462f-8d41-2c721e9d138e)
> when|[date-time](xref:HV_File_dates#date-time)|0|1|The date time of consumption.||
> energy|[food-energy-value](#food-energy-value)|0|1|The amount of food energy consumed.||
> energy-from-fat|[food-energy-value](#food-energy-value)|0|1|The amount of food energy consumed that came from fat.||
> total-fat|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The total amount of fat consumed.|Fat is commonly displayed in grams (g) in UI.|
> saturated-fat|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of saturated fat consumed.|Fat is commonly displayed in grams (g) in UI.|
> trans-fat|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of trans fat consumed.|Fat is commonly displayed in grams (g) in UI.|
> monounsaturated-fat|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of mono unsaturated fat consumed.|Fat is commonly displayed in grams (g) in UI.|
> polyunsaturated-fat|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of poly unsaturated fat consumed.|Fat is commonly displayed in grams (g) in UI.|
> protein|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of protein consumed.|Protein is commonly displayed in grams (g) in UI.|
> carbohydrates|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of carbohydrates consumed.|Carbohydrates are commonly displayed in grams (g) in UI.|
> dietary-fiber|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of dietary fiber consumed.|Dietary fiber is commonly displayed in grams (g) in UI.|
> sugars|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The total amount of sugars consumed.|Suger is commonly displayed in grams (g) in UI.|
> sodium|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of sodium consumed.|Sodium is commonly displayed in milligrams (mg) in UI.|
> cholesterol|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of cholesterol consumed.|Cholesterol is commonly displayed in milligrams (mg) in UI.|
> calcium|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of calcium consumed.|Calcium is commonly displayed in milligrams (mg) in UI.|
> iron|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of iron consumed.|Iron is commonly displayed in milligrams (mg) in UI.|
> magnesium|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of magnesium consumed.|Magnesium is commonly displayed in milligrams (mg) in UI.|
> phosphorus|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of phosphorus consumed.|Phosphorus is commonly displayed in milligrams (mg) in UI.|
> potassium|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of potassium consumed.|Potassium is commonly displayed in milligrams (mg) in UI.|
> zinc|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of zinc consumed.|Zinc is commonly displayed in milligrams (mg) in UI.|
> vitamin-A-RAE|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|This value is the retinol activity equivalent (RAE) weight of vitamin A consumed.|Vitamin A-RAE is commonly displayed in micrograms RAE in UI.|
> vitamin-E|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of vitamin E consumed.|Vitamin E is commonly displayed in milligrams (mg) in UI.|
> vitamin-D|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of vitamin D consumed.|Vitamin D is commonly displayed in milligrams (mg) in UI.|
> vitamin-C|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of vitamin C consumed.|Vitamin C is commonly displayed in milligrams (mg) in UI.|
> thiamin|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of thiamin consumed.|Thiamin is commonly displayed in milligrams (mg) in UI.|
> riboflavin|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of riboflavin consumed.|Riboflavin is commonly displayed in milligrams (mg) in UI.|
> niacin|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of niacin consumed.|Niacin is commonly displayed in milligrams (mg) in UI.|
> vitamin-B-6|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of vitamin B-6 consumed.|Vitamin B-6 is commonly displayed in milligrams (mg) in UI.|
> folate-DFE|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|This value is the dietary folate equivalent (DFE) of Folate consumed.|Folate is commonly displayed in micrograms DFE in UI.|
> vitamin-B-12|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of vitamin B-12 consumed.|Vitamin B-12 is commonly displayed in milligrams (mg) in UI.|
> vitamin-K|[weight-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#weight-value)|0|1|The amount of vitamin K consumed.|Vitamin K is commonly displayed in milligrams (mg) in UI.|
> additional-nutrition-facts|[additional-nutrition-facts](#additional-nutrition-facts)|0|1|Allows specifying additional nutritional fact data.|For instance, this could contain the amount of caffeine, or the amount of Omega-3 fatty acids consumed.|
>
>

## Example
[!code-xml[Example](../sample-xml/089646a6-7e25-4495-ad15-3e28d4c1a71d.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/dietary-intake.xsd)
[!code-xml[XSD schema](../xsd/dietary-intake.xsd)]
