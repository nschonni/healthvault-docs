Digital signatures
==================

Digital signatures provide a way to verify the source of a data item. The HealthRecordItem.TypeSpecificData XML is signed using the authentication features of the System.Security.Cryptography.Xml.SignedXml class.

Signing an item
---------------

The signing functionality uses four members of the HealthRecordItem class:

-   IsSignatureValid()
-   Sign(X509Certificate2);
-   ValidateCertificate();
-   Collection&lt;HealthRecordItemSignature&gt; HealthRecordItemSignatures;

The following code shows how to sign an item:

```cs
HealthRecordInfo record = base.CommonAuthenticatedConnection.GetPersonInfo().GetSelfRecord();
X509Certificate2 cert = new X509Certificate2();
cert.Import(".\\valid_cert.pfx");
dataItem.Sign(cert);
record.NewItem(thingItem);
```

A SignatureFailureException is raised when a signature fails verification at the server. Because the platform verification includes checking against the certificate issuer’s CRL, certificates validate only if they have a CDP (CRL Distribution Point) Extended Property in the Certificate or their CA has the same property.

Handling timeouts with a retry loop
-----------------------------------

There is a bug in the HealthVault certificate verification code for digital signatures that results in occasional failures. The issue is due to a problem caching the certificate revocation list (CRL) for each certificate authority. For each of our servers, the first request for a particular CRL per worker process recycle will result in a timeout. This will happen less often in production than preproduction, but it can happen in both.

If your code uses digital signatures, you need to wrap your call to NewItem() with a loop that will retry the call if it times out. In the worst case, you may need to retry up to 9 times to ensure success. At the current rate that the app pool recycles, you will see around 4 failures per day—so usually your code won’t need to do any retries at all. But to ensure success, you still need to have the retry logic.

The following code demonstrates the necessary retry logic:

```cs
for (int i = 0; i < 9; i++)
{    
    try    
    {        
        record.NewItem(thingItem);
        break;
    }    
    catch
    {    }
} 
```

Seed prefetching
----------------

The HealthVault team has developed an additional process which will reduce the likelihood that you encounter this issue. In order to participate, you need to send us an instance of a signed thing (signed with the same cert you will sign things with in production). You can get the complete XML for the signed thing by enabling request logging, and uploading an instance to the platform. Please send the captured XML to <hvgolive@microsoft.com>, along with an explanation that you are using the digital signatures feature and would like your CRL to be prefetched.

You should still include the retry logic described above, even if you participate in the seed prefetching process. The seed prefetching process does not eliminate the possibility of a timeout, but it should significantly lower the likelihood of running into this issue in production.

Using a signed item
-------------------

When fetching a data item, the signature information is not returned by default. To fetch it, you have to specify the HealthRecordItemSections.Signature section:

-   IsSignatureValid()
-   Sign(X509Certificate2);
-   ValidateCertificate();
-   Collection&lt;HealthRecordItemSignature&gt; HealthRecordItemSignatures;

The following code shows how to sign an item:

```cs
HealthRecordItem signedItem = record.GetItem(itemId, HealthRecordItemSections.Core | HealthRecordItemSections.Xml | HealthRecordItemSections.Signature);
```
Now that you have fetched a signed item, you can call ValidateCertificate() to validate each of the certificates using X509Certificate2.Verify():

```cs
signedItem.ValidateCertificate();
```
This method throws an exception if validation fails. You can also call IsSignatureValid() to check whether the signature on the data item is valid. This is done by calling SignedXml.CheckSignature() for each signature on the data item.

Finally, you can access the signatures directly through the HealthRecordSignatures collection, and extract the certificate:

```cs
foreach (HealthRecordSignatures signature in signedItem.HealthRecordSignatures) 
{    
    X509Certificate2 certificate = signature.GetCertificate<X509Certificate2>(); 
}
```
Recognized certificates
-----------------------

HealthVault currently supports digital certificates whose chain of trust links back to a root certificate from the following certificate authorities:

-   Comodo
-   Entrust
-   Geotrust
-   Verisign
