Status and error codes
======================

The following status and error codes may be returned by the HealthVault platform service.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th><p>Status</p></th>
<th><p>Code</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>OK</p></td>
<td><p>0</p></td>
<td><p>The request was successful.</p></td>
</tr>
<tr class="even">
<td><p>FAILED</p></td>
<td><p>1</p></td>
<td><p>Generic failure due to unknown causes or internal error.</p></td>
</tr>
<tr class="odd">
<td><p>BAD_HTTP</p></td>
<td><p>2</p></td>
<td><p>HTTP protocol problem.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_XML</p></td>
<td><p>3</p></td>
<td><p>Request XML cannot be parsed or is non-conformant.</p></td>
</tr>
<tr class="odd">
<td><p>BAD_SIG</p></td>
<td><p>4</p></td>
<td><p>Signature validation failed.</p></td>
</tr>
<tr class="even">
<td><p>BAD_METHOD</p></td>
<td><p>5</p></td>
<td><p>No such method.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_APP</p></td>
<td><p>6</p></td>
<td><p>App does not exist app is invalid app is not active or calling IP is invalid.</p></td>
</tr>
<tr class="even">
<td><p>CREDENTIAL_TOKEN_EXPIRED</p></td>
<td><p>7</p></td>
<td><p>Credential token has expired need a new one.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_TOKEN</p></td>
<td><p>8</p></td>
<td><p>Auth token malformed or otherwise busted.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_PERSON</p></td>
<td><p>9</p></td>
<td><p>Person does not exist or is not active.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_RECORD</p></td>
<td><p>10</p></td>
<td><p>Given record id does not exist.</p></td>
</tr>
<tr class="even">
<td><p>ACCESS_DENIED</p></td>
<td><p>11</p></td>
<td><p>Person or app does not have sufficient rights.</p></td>
</tr>
<tr class="odd">
<td><p>NYI</p></td>
<td><p>12</p></td>
<td><p>The functionality being accessed is not yet implemented.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_THING</p></td>
<td><p>13</p></td>
<td><p>Invalid thing identifier.</p></td>
</tr>
<tr class="odd">
<td><p>CANT_CONVERT_UNITS</p></td>
<td><p>14</p></td>
<td><p>Data table already exists with incompatible units.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_FILTER</p></td>
<td><p>15</p></td>
<td><p>Missing or invalid GetThingsFilter.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_FORMAT</p></td>
<td><p>16</p></td>
<td><p>Missing or invalid GetThings format specifier.</p></td>
</tr>
<tr class="even">
<td><p>MISSING_SHARED_SECRET</p></td>
<td><p>17</p></td>
<td><p>A credential was supplied without a shared secret.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_APPAUTH</p></td>
<td><p>18</p></td>
<td><p>Authorized_applications entry missing.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_THING_TYPE</p></td>
<td><p>19</p></td>
<td><p>Thing type doesn't exist.</p></td>
</tr>
<tr class="odd">
<td><p>THING_TYPE_IMMUTABLE</p></td>
<td><p>20</p></td>
<td><p>Can't update things of this type.</p></td>
</tr>
<tr class="even">
<td><p>THING_TYPE_UNCREATABLE</p></td>
<td><p>21</p></td>
<td><p>Can't create things of this type.</p></td>
</tr>
<tr class="odd">
<td><p>DUPLICATE_CREDENTIAL_FOUND</p></td>
<td><p>22</p></td>
<td><p>Duplicate Credential found.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_RECORD_NAME</p></td>
<td><p>23</p></td>
<td><p>Invalid Record name.</p></td>
</tr>
<tr class="odd">
<td><p>DRUG_NOT_FOUND</p></td>
<td><p>24</p></td>
<td><p>Cannot find the drug specified.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_PERSON_STATE</p></td>
<td><p>25</p></td>
<td><p>Invalid person state.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_CODESET</p></td>
<td><p>26</p></td>
<td><p>Requested code set was not found.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_VALIDATION_TOKEN</p></td>
<td><p>28</p></td>
<td><p>Invalid validation token for contact email validation.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_CONTACT_EMAIL</p></td>
<td><p>30</p></td>
<td><p>Invalid contact email.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_LOGIN_NAME</p></td>
<td><p>31</p></td>
<td><p>Invalid login name.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_PASSWORD</p></td>
<td><p>32</p></td>
<td><p>Invalid password.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_OPENQUERY</p></td>
<td><p>33</p></td>
<td><p>Open query id not found.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_TRANSFORM</p></td>
<td><p>34</p></td>
<td><p>Transform cannot be loaded.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_RELATIONSHIP_TYPE</p></td>
<td><p>35</p></td>
<td><p>Invalid relationship type.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_CREDENTIAL_TYPE</p></td>
<td><p>36</p></td>
<td><p>Invalid credential type.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_RECORD_STATE</p></td>
<td><p>37</p></td>
<td><p>Invalid record state.</p></td>
</tr>
<tr class="odd">
<td><p>APP_AUTH_NOT_REQUIRED</p></td>
<td><p>38</p></td>
<td><p>Application authorization is not required for this app.</p></td>
</tr>
<tr class="even">
<td><p>REQUEST_TOO_LONG</p></td>
<td><p>39</p></td>
<td><p>The request provided has exceeded maximum allowed request length.</p></td>
</tr>
<tr class="odd">
<td><p>DUPLICATE_AUTHORIZED_RECORD_FOUND</p></td>
<td><p>40</p></td>
<td><p>Duplicate authorized record found.</p></td>
</tr>
<tr class="even">
<td><p>EMAIL_NOT_VALIDATED</p></td>
<td><p>41</p></td>
<td><p>Person email must be validated but it's not.</p></td>
</tr>
<tr class="odd">
<td><p>MAIL_ADDRESS_MALFORMED</p></td>
<td><p>45</p></td>
<td><p>The email address specified to SendInsecureMessage is malformed.</p></td>
</tr>
<tr class="even">
<td><p>PASSWORD_NOT_STRONG</p></td>
<td><p>46</p></td>
<td><p>The password does not meet the complexity requirements.</p></td>
</tr>
<tr class="odd">
<td><p>CANNOT_REMOVE_LAST_CUSTODIAN</p></td>
<td><p>47</p></td>
<td><p>The last custodian for a record cannot be removed.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_EMAIL_ADDRESS</p></td>
<td><p>48</p></td>
<td><p>The email address is invalid.</p></td>
</tr>
<tr class="odd">
<td><p>REQUEST_TIMED_OUT</p></td>
<td><p>49</p></td>
<td><p>The request sent to HealthVault reached its time to live and is now too old to be processed.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_SPONSOR_EMAIL</p></td>
<td><p>50</p></td>
<td><p>The sponsor email address is invalid.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_PROMOTION_TOKEN</p></td>
<td><p>51</p></td>
<td><p>Promotion token is invalid.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_RECORD_AUTHORIZATION_TOKEN</p></td>
<td><p>52</p></td>
<td><p>Record authorization token is invalid.</p></td>
</tr>
<tr class="odd">
<td><p>TOO_MANY_GROUPS_IN_QUERY</p></td>
<td><p>53</p></td>
<td><p>GetThings Query has too many request groups.</p></td>
</tr>
<tr class="even">
<td><p>GRANT_AUTHZ_EXCEEDS_DEFAULT</p></td>
<td><p>54</p></td>
<td><p>The permissions to be granted exceed the default permissions available to be granted. e.g.attempt to grant all access when only read access is available.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_VOCABULARY</p></td>
<td><p>55</p></td>
<td><p>Requested vocabulary was not found.</p></td>
</tr>
<tr class="even">
<td><p>DUPLICATE_APPLICATION_FOUND</p></td>
<td><p>56</p></td>
<td><p>An application with the same ID already exists.</p></td>
</tr>
<tr class="odd">
<td><p>RECORD_AUTHORIZATION_TOKEN_EXPIRED</p></td>
<td><p>57</p></td>
<td><p>Record authorization token has expired.</p></td>
</tr>
<tr class="even">
<td><p>RECORD_AUTHORIZATION_DOES_NOT_EXIST</p></td>
<td><p>58</p></td>
<td><p>Record authorization does not exist.</p></td>
</tr>
<tr class="odd">
<td><p>THING_TYPE_UNDELETABLE</p></td>
<td><p>59</p></td>
<td><p>Can't delete things of this type.</p></td>
</tr>
<tr class="even">
<td><p>VERSION_STAMP_MISSING</p></td>
<td><p>60</p></td>
<td><p>Version stamp is missing.</p></td>
</tr>
<tr class="odd">
<td><p>VERSION_STAMP_MISMATCH</p></td>
<td><p>61</p></td>
<td><p>Version stamp mismatch.</p></td>
</tr>
<tr class="even">
<td><p>EXPIRED_OPENQUERY</p></td>
<td><p>62</p></td>
<td><p>Requested open query has expired.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_PUBLIC_KEY</p></td>
<td><p>63</p></td>
<td><p>Public key is invalid.</p></td>
</tr>
<tr class="even">
<td><p>DOMAIN_NAME_NOT_SET</p></td>
<td><p>64</p></td>
<td><p>The application's domain name hasn't been set.</p></td>
</tr>
<tr class="odd">
<td><p>AUTHENTICATED_SESSION_TOKEN_EXPIRED</p></td>
<td><p>65</p></td>
<td><p>Authenticated session token has expired need a new one.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_CREDENTIAL_KEY</p></td>
<td><p>66</p></td>
<td><p>The credential key was not found.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_PERSON_ID</p></td>
<td><p>67</p></td>
<td><p>Pseudo id for person not valid.</p></td>
</tr>
<tr class="even">
<td><p>RECORD_QUOTA_EXCEEDED</p></td>
<td><p>68</p></td>
<td><p>The size occupied by the things in the put things request will cause the record to exceed the size quota alloted to it.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_DATETIME</p></td>
<td><p>69</p></td>
<td><p>The DateTime supplied is invalid (exceeds the bounds for the DateTime).</p></td>
</tr>
<tr class="even">
<td><p>BAD_CERT</p></td>
<td><p>70</p></td>
<td><p>Certificate validation failed.</p></td>
</tr>
<tr class="odd">
<td><p>RESPONSE_TOO_LONG</p></td>
<td><p>71</p></td>
<td><p>The response has exceeded maximum allowed size.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_VERIFICATION_QUESTION</p></td>
<td><p>72</p></td>
<td><p>Verification question for connect request invalid.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_VERIFICATION_ANSWER</p></td>
<td><p>73</p></td>
<td><p>The verification answer for the connect request is invalid.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_IDENTITY_CODE</p></td>
<td><p>74</p></td>
<td><p>There is no connect request corresponding to the given code.</p></td>
</tr>
<tr class="odd">
<td><p>RETRY_LIMIT_EXCEEDED</p></td>
<td><p>75</p></td>
<td><p>Maximum number of retries has been exceeded.</p></td>
</tr>
<tr class="even">
<td><p>CULTURE_NOT_SUPPORTED</p></td>
<td><p>76</p></td>
<td><p>Request header culture not supported.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_FILE_EXTENSION</p></td>
<td><p>77</p></td>
<td><p>The file extension is not supported.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_VOCABULARY_ITEM</p></td>
<td><p>78</p></td>
<td><p>The vocabulary item does not exist.</p></td>
</tr>
<tr class="odd">
<td><p>DUPLICATE_CONNECT_REQUEST_FOUND</p></td>
<td><p>79</p></td>
<td><p>Duplicate connect request found.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_SPECIAL_ACCOUNT_TYPE</p></td>
<td><p>80</p></td>
<td><p>The account type specified is invalid.</p></td>
</tr>
<tr class="odd">
<td><p>DUPLICATE_TYPE_FOUND</p></td>
<td><p>81</p></td>
<td><p>A type with the specified identifier already exists.</p></td>
</tr>
<tr class="even">
<td><p>CREDENTIAL_NOT_FOUND</p></td>
<td><p>82</p></td>
<td><p>Credential not found.</p></td>
</tr>
<tr class="odd">
<td><p>CANNOT_REMOVE_LAST_CREDENTIAL</p></td>
<td><p>83</p></td>
<td><p>Attempt to delete last credential associated with an account.</p></td>
</tr>
<tr class="even">
<td><p>CONNECT_REQUEST_ALREADY_AUTHORIZED</p></td>
<td><p>84</p></td>
<td><p>The connect request has been previously authorized.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_THING_TYPE_VERSION</p></td>
<td><p>85</p></td>
<td><p>The type specified to update an instance of a thing is an older version of the type than the existing instance.</p></td>
</tr>
<tr class="even">
<td><p>CREDENTIALS_LIMIT_EXCEEDED</p></td>
<td><p>86</p></td>
<td><p>The maximum number of allowed credentials has been exceeded.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_METHOD</p></td>
<td><p>87</p></td>
<td><p>One or more invalid methods were specified in the method mask.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_BLOB_REF_URL</p></td>
<td><p>88</p></td>
<td><p>The blob reference URL supplied for the blob streaming API is invalid.</p></td>
</tr>
<tr class="odd">
<td><p>CANNOT_GET_STREAMED_OTHER_DATA</p></td>
<td><p>89</p></td>
<td><p>Other data put in to HealthVault via the streaming API cannot be requested as an other data string.</p></td>
</tr>
<tr class="even">
<td><p>UPDATE_THING_TYPE_VERSION_NO_DATA_XML</p></td>
<td><p>90</p></td>
<td><p>The type version of the thing cannot be changed without a data XML supplied for validation.</p></td>
</tr>
<tr class="odd">
<td><p>UNSUPPORTED_CONTENT_ENCODING</p></td>
<td><p>91</p></td>
<td><p>The content encoding specified for the blob is not supported.</p></td>
</tr>
<tr class="even">
<td><p>CONTENT_ENCODING_DATA_MISMATCH</p></td>
<td><p>92</p></td>
<td><p>The content encoding specified for the blob does not match the blob data.</p></td>
</tr>
<tr class="odd">
<td><p>APPLICATION_LIMIT_EXCEEDED</p></td>
<td><p>93</p></td>
<td><p>The user exceeded the maximum number of applications allowed.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_BINARY_CONTENT_ID</p></td>
<td><p>94</p></td>
<td><p>The specified binary content identifier was not found.</p></td>
</tr>
<tr class="odd">
<td><p>CONNECT_REQUEST_INCOMPLETE</p></td>
<td><p>95</p></td>
<td><p>The connect request was found but does not yet have any contents.</p></td>
</tr>
<tr class="even">
<td><p>CONNECT_PACKAGE_EXISTS</p></td>
<td><p>96</p></td>
<td><p>The connect package has already been fully created and populated.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_FILE_NAME</p></td>
<td><p>97</p></td>
<td><p>The file name is not supported.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_SIGNUP_CODE</p></td>
<td><p>98</p></td>
<td><p>The signup code is invalid.</p></td>
</tr>
<tr class="odd">
<td><p>BLOB_SIZE_TOO_LARGE_FOR_INLINE</p></td>
<td><p>99</p></td>
<td><p>The blob is too large and cannot be returned inline.</p></td>
</tr>
<tr class="even">
<td><p>DUPLICATE_BLOB</p></td>
<td><p>100</p></td>
<td><p>A blob of this name is already present in the request.</p></td>
</tr>
<tr class="odd">
<td><p>BLOB_TOKEN_COMMITTED</p></td>
<td><p>101</p></td>
<td><p>The blob token corresponds to a blob that is already committed.</p></td>
</tr>
<tr class="even">
<td><p>BLOB_TOKEN_NOT_COMPLETED</p></td>
<td><p>102</p></td>
<td><p>The blob token corresponds to a blob that was not marked completed through the streaming interface.</p></td>
</tr>
<tr class="odd">
<td><p>THING_POTENTIALLY_INCOMPLETE</p></td>
<td><p>104</p></td>
<td><p>The thing being updated has data items that cannot be seen in this version, e.g. signatures with new signature methods or multiple blobs.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_SIGNATURE_ALGORITHM</p></td>
<td><p>105</p></td>
<td><p>The signature algorithm is not valid.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_BLOB_HASH_ALGORITHM</p></td>
<td><p>106</p></td>
<td><p>The blob hash algorithm is invalid or not supported.</p></td>
</tr>
<tr class="even">
<td><p>UNSUPPORTED_BLOB_HASH_BLOCK_SIZE</p></td>
<td><p>107</p></td>
<td><p>The blob hash block size is unsupported.</p></td>
</tr>
<tr class="odd">
<td><p>BLOB_HASH_ALGORITHM_MISMATCH</p></td>
<td><p>108</p></td>
<td><p>The specified blob hash algorithm does not match the blob's hash algorithm.</p></td>
</tr>
<tr class="even">
<td><p>BLOB_HASH_BLOCK_SIZE_MISMATCH</p></td>
<td><p>109</p></td>
<td><p>The specified blob hash block size does not match the blob's hash block size.</p></td>
</tr>
<tr class="odd">
<td><p>UNSUPPORTED_SIGNATURE_METHOD</p></td>
<td><p>110</p></td>
<td><p>The signature method is not supported in the context it is being used.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_BLOB_HASH</p></td>
<td><p>111</p></td>
<td><p>The specified blob hash is invalid.</p></td>
</tr>
<tr class="odd">
<td><p>PACKAGE_BLOB_NOT_COMMITTED</p></td>
<td><p>112</p></td>
<td><p>The blob is associated with a connect package that is not yet created.</p></td>
</tr>
<tr class="even">
<td><p>APPLICATION_STATE_TRANSITION_NOT_SUPPORTED</p></td>
<td><p>113</p></td>
<td><p>Changing the application state from deleted is not supported.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_PACKAGE_CONTENTS</p></td>
<td><p>120</p></td>
<td><p>The contents of the connect package are not valid XML.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_CONTENT_TYPE</p></td>
<td><p>121</p></td>
<td><p>The content type is not supported.</p></td>
</tr>
<tr class="odd">
<td><p>CONNECT_PACKAGE_VALIDATION_REQUIRED</p></td>
<td><p>122</p></td>
<td><p>The contents of the connect package must be validated before they are put into a health record.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_THING_STATE</p></td>
<td><p>123</p></td>
<td><p>Invalid thing state.</p></td>
</tr>
<tr class="odd">
<td><p>TOO_MANY_THINGS_SPECIFIED</p></td>
<td><p>124</p></td>
<td><p>The maximum number of things specified has been exceeded.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_DIRECTORY_ITEM</p></td>
<td><p>126</p></td>
<td><p>The directory item passed in is invalid.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_VOCABULARY_AUTHORIZATION</p></td>
<td><p>129</p></td>
<td><p>The vocabulary authorization is invalid.</p></td>
</tr>
<tr class="even">
<td><p>VOCABULARY_ACCESS_DENIED</p></td>
<td><p>130</p></td>
<td><p>Access to the requested vocabulary is denied.</p></td>
</tr>
<tr class="odd">
<td><p>UNSUPPORTED_PERSONAL_FLAG</p></td>
<td><p>131</p></td>
<td><p>The personal flag is not supported with this type.</p></td>
</tr>
<tr class="even">
<td><p>SUBSCRIPTION_NOT_FOUND</p></td>
<td><p>132</p></td>
<td><p>The requested subscription was not found.</p></td>
</tr>
<tr class="odd">
<td><p>SUBSCRIPTION_LIMIT_EXCEEDED</p></td>
<td><p>133</p></td>
<td><p>The number of subscriptions for the application was exceeded.</p></td>
</tr>
<tr class="even">
<td><p>SUBSCRIPTION_INVALID</p></td>
<td><p>134</p></td>
<td><p>The subscription contains invalid data.</p></td>
</tr>
<tr class="odd">
<td><p>APPLICATION_CREATION_TOKEN_INVALID</p></td>
<td><p>135</p></td>
<td><p>Invalid App Creation Token.</p></td>
</tr>
<tr class="even">
<td><p>DUPLICATE_APPLICATION_FOUND</p></td>
<td><p>136</p></td>
<td><p>An application with the same ID already exists.</p></td>
</tr>
<tr class="odd">
<td><p>SHARING_REQUESTING_APPLICATION_NOT_FOUND</p></td>
<td><p>137</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>ENCRYPTED_CREDENTIAL_EXPIRED</p></td>
<td><p>138</p></td>
<td><p>An encrypted credential was expired.</p></td>
</tr>
<tr class="odd">
<td><p>DUPLICATE_ALTERNATE_ID</p></td>
<td><p>139</p></td>
<td><p>The alternate id already exists.</p></td>
</tr>
<tr class="even">
<td><p>ALTERNATE_ID_NOT_FOUND</p></td>
<td><p>140</p></td>
<td><p>The alternate id was not found.</p></td>
</tr>
<tr class="odd">
<td><p>ALTERNATE_IDS_LIMIT_EXCEEDED</p></td>
<td><p>141</p></td>
<td><p>The maximum number of alternate ids has been exceeded.</p></td>
</tr>
<tr class="even">
<td><p>ALTERNATE_ID_MISSING</p></td>
<td><p>142</p></td>
<td><p>The alternate id was not specified.</p></td>
</tr>
<tr class="odd">
<td><p>RECORD_AUDIT_NOT_FOUND</p></td>
<td><p>143</p></td>
<td><p>The requested record Audit was not found.</p></td>
</tr>
<tr class="even">
<td><p>RECORD_SHARING_INVITATION_PIN_MISMATCH</p></td>
<td><p>144</p></td>
<td><p>The pin for the record sharing invitation was incorrect.</p></td>
</tr>
<tr class="odd">
<td><p>RECORD_SHARING_MAXIMUM_NUMBER_OF_ATTEMPTS_EXCEEDED</p></td>
<td><p>145</p></td>
<td><p>The maximum number of attempts for accepted/rejected the sharing invitation has been exceeded.</p></td>
</tr>
<tr class="even">
<td><p>CONCURRENCY_VIOLATION</p></td>
<td><p>146</p></td>
<td><p>Optimistic concurrency violation detected.</p></td>
</tr>
<tr class="odd">
<td><p>RECORD_LOCATION_NOT_SUPPORTED</p></td>
<td><p>147</p></td>
<td><p>The record location is not supported by the application.</p></td>
</tr>
<tr class="even">
<td><p>TOO_MANY_MESSAGES</p></td>
<td><p>148</p></td>
<td><p>The number of messages to be enqueued exceeds the config-defined limit.</p></td>
</tr>
<tr class="odd">
<td><p>COULD_NOT_ENQUEUE</p></td>
<td><p>149</p></td>
<td><p>There was an error when trying to add the messages to the queue.</p></td>
</tr>
<tr class="even">
<td><p>DUPLICATE_APP_LOCATION_INFO</p></td>
<td><p>150</p></td>
<td><p>The specified location already exists for this application, or a warning message in the specified language already exists for this location.</p></td>
</tr>
<tr class="odd">
<td><p>REMOVELOCATIONS_INVALID_WARNINGMESSAGES</p></td>
<td><p>151</p></td>
<td><p>The auth allowed warning messages are not required in the input for the remove app locations method.</p></td>
</tr>
<tr class="even">
<td><p>MAINTENANCE_MODE_ACCESS_DENIED</p></td>
<td><p>152</p></td>
<td><p>Platform is currently in read-only mode due to maintenance.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_INSTANCE_ID</p></td>
<td><p>153</p></td>
<td><p>The specified instance ID is not valid.</p></td>
</tr>
<tr class="even">
<td><p>CANNOT_UPDATE_IMMUTABLE_THING</p></td>
<td><p>154</p></td>
<td><p>Cannot update immutable thing instance.</p></td>
</tr>
<tr class="odd">
<td><p>CANNOT_CREATE_IMMUTABLE_THING</p></td>
<td><p>155</p></td>
<td><p>Cannot create immutable thing instance.</p></td>
</tr>
<tr class="even">
<td><p>CANNOT_CHANGE_IMMUTABLE_FLAG</p></td>
<td><p>156</p></td>
<td><p>Cannot change immutable flag to false if it is true.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_AGE</p></td>
<td><p>157</p></td>
<td><p>Age not supported for new accounts.</p></td>
</tr>
<tr class="even">
<td><p>INVALID_IP_ADDRESS</p></td>
<td><p>158</p></td>
<td><p>IP Address not supported.</p></td>
</tr>
<tr class="odd">
<td><p>INVALID_MSA_TICKET</p></td>
<td><p>159</p></td>
<td><p>MSA Ticket invalid.</p></td>
</tr>
<tr class="even">
<td><p>MAX_RECORDS_EXCEEDED</p></td>
<td><p>160</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>CANNOT_SET_IMMUTABLE_FLAG</p></td>
<td><p>161</p></td>
<td><p>Cannot set immutable flag when updating thing.</p></td>
</tr>
</tbody>
</table>

### Integrating with HealthVault

See also

-   <a href="request-response-tracing.md" id="RightRailLinkListSection_14075_7">Request/response tracing</a>
-   <a href="connection-troubleshooting.md" id="RightRailLinkListSection_14075_8">Troubleshooting connection problems</a>

