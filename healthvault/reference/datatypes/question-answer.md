---
uid: HV_55d33791-58de-4cae-8c78-819e12ba5059
title: Question & answer
---

# Question & answer

## Overview

Property|Value
---|---
id|55d33791-58de-4cae-8c78-819e12ba5059
name|Question & answer
immutable|False
singleton|False
allow-readonly|False
effective date XPath|No effective date XPath

## .NET reference
- [Microsoft.Health.ItemTypes.QuestionAnswer](https://docs.microsoft.com/dotnet/api/microsoft.health.itemtypes.questionanswer)
- [Microsoft.HealthVault.ItemTypes.QuestionAnswer](https://docs.microsoft.com/dotnet/api/microsoft.healthvault.itemtypes.questionanswer)

## Details
A question that was asked and the answers given.

<a name='question-answer'></a>

### Root element: question-answer

A question that was asked and the answers given.

### Element sequence

Name|Type|Min occurs|Max occurs|Summary|Remarks|Preferred Vocabulary
---|---|---|---|---|---|---
when|[date-time](xref:HV_File_dates#date-time)|1|1|Date and time the question was asked.||
question|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|1|1|The question that was asked.|A list of vocabularies may be found in the preferred vocabulary. Contact the HealthVault team to help define the preferred vocabulary.|[question-sets](xref:HV_27af7c65-b1b6-4cb9-a901-b8a370e2bb09)
answer-choice|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|unbounded|The list of possible answers to this question.|Questions that are answered using free-form text will not specify answer choices. <br /> The answer vocabulary used is typically one related to the vocabulary used for the question. <br /> For example, the choice for "High blood pressure" would code for that condition. <br /> Standard answers (such as yes/no) can be coded using the preferred vocabulary.|answer-choice-sets
answer|[codable-value](xref:HV_3e730686-781f-4616-aa0d-817bba8eb141#codable-value)|0|unbounded|The recorded answers.|In many cases, the coding of the answer is identical to the coding of the selected answer-choices.|

## Example
[!code-xml[Example](../sample-xml/55d33791-58de-4cae-8c78-819e12ba5059.xml)]

## XSD schema
[![Download](/healthvault/images/download.png)Download](../xsd/question-answer.xsd)
[!code-xml[XSD schema](../xsd/question-answer.xsd)]
