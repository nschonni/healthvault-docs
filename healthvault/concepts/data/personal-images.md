---
title: Personal images
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Learn how to get the user's profile image from their HealthVault record
---

Get the user's personal image
===============

The PersonalImage type encapsulates the picture that represents the person of a health record. PersonalImage is a singleton type, which means that there can be only one of them. But there might be none of them, so code needs to handle this case as well:

```cs
using (Stream imageStream = System.IO.File.OpenRead(imageFileName))
{
    HealthRecordItemCollection collection = PersonInfo.SelectedRecord.GetItemsByType(
            PersonalImage.TypeId,
            HealthRecordItemSections.All);
    
    PersonalImage image = null;
    if (collection.Count != 0)
    {
        image = collection[0] as PersonalImage;
        using (Stream currentImageStream = image.ReadImage())
        {
            byte[] imageBytes = new byte[currentImageStream.Length];
            currentImageStream.Read( imageBytes, 0, (int)currentImageStream.Length);
            using (FileStream outputImage = System.IO.File.OpenWrite(outputFileName))
            {
                    outputImage.Write(imageBytes, 0, imageBytes.Length);
            }        
        }   
    }    
    if (image == null)
    {        
        image = new PersonalImage();
        image.WriteImage(imageStream, "image/jpg");
        PersonInfo.SelectedRecord.NewItem(image);
    }
    else
    {
        image.WriteImage(imageStream, "image/jpg");
        PersonInfo.SelectedRecord.UpdateItem(image);
    }
}
```

