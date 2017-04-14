---
title: Action URL redirection
author: jhutchings1
ms.author: justhu
ms.date: 04/12/2017
ms.topic: article
ms.prod: healthvault
description: Web apps often need custom redirection behaviors after authentication. This page provides an overview of how implement these behaviors using HealthVault. 
---

Customizing HealthServiceActionPage redirection
===============================================

The HealthServiceActionPage gives you a mechanism (see [Action URL](/healthvault/concepts/connectivity/action-url.md)) by which you can declaratively define pages handling various HealthVault shell targets. However, developers frequently run into situation where they need a more dynamic way of redirecting and handling shell targets. A simple scenario is if you want users to come back to the URL they clicked after being authorized by HealthVault shell: For example, the user clicks and returns to **https://www.healthapp.com/username/stats** instead of going to the default home **https://www.healthapp.com/username/**.

Here is a code snippet that illustrates how to extend the HealthServiceActionPage:

```c#
using System;
public partial class Redirect : Microsoft.Health.Web.HealthServiceActionPage {
     // We don't want this page to require log on because when we sign out,    
     // we still want this page to read the WCPage_ActionSignOut key in the     
     protected override bool LogOnRequired     
     {
         get { return false; }    
     }
     public const String ActionQueryStringValue = "actionqs";
     public const String DefaultURL = "http://www.healthapp.com/username";    

     protected override void OnActionApplicationAuthorizationSuccessful(string action, string actionQueryString) 
     {        
         string targetLocation;        
         string fullTargetLocation;        
         string url = Request.QueryString[ActionQueryStringValue];        
         // TODO: Validate that the URL is from home domain         
         if (url != null)        
         {            
             targetLocation = url;        
         } 
         else        
         {            
             targetLocation = DefaultURL;         
         }        
         // we assume that the query string startswith ‘?’        
         fullTargetLocation = targetLocation + actionQueryString;        
         Response.Redirect(fullTargetLocation);    
     }
}
```

The magic is in the OnActionApplicationAuthorizationSuccessful method, which allows us to override the authorization successful target. The HealthVault SDK HealthServiceActionPage now provides us several OnAction methods that could be used to override the particular APPAUTH targets.
