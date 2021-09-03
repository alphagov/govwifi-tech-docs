# Certificate rotation

Every year, we rotate the GovWifi server certificate. Some years, we’ll also need to replace the intermediate or root certificates. This is an industry standard procedure that keeps the authentication process secure.

We’ll give you at least a month’s notice about certificate rotations. The next one is scheduled for July 2022.

The GovWifi team handles the certificate rotation on the RADIUS servers, but your organisation may need to do a couple of things to make sure your users can connect to GovWifi after the rotation.

You do not need to do anything to your access points, wifi controllers or any other part of your wifi hardware.

## Update the profile on managed devices

This section applies to you if your organisation uses the GovWifi 802.1x profile. 

If we're rotating the certificates that your profile tells users' devices to check, you'll need to update the profile with the new certificate details. 

On the rotation day, push the updated profile out to your managed devices. How you manage this will depend on how you deploy your GovWifi 802.1x profile to your managed devices.

We'll add the new certificates to this guidance before the next rotation. 

You can download the current certificates here:

- [server certificate](https://docs.wifi.service.gov.uk/assets/wifi.service.gov.uk_2021.crt)
- [intermediate certificate](https://docs.wifi.service.gov.uk/assets/GeoTrustRSACA2021.crt)
- [root certificate](https://docs.wifi.service.gov.uk/assets/DigiCertGlobalRootCA.crt)

## Help users accept the new certificate

Even though the rotation happens annually, some users will not use GovWifi until months after the rotation date. This means they may not need to accept the new certificate until much later. 

We’ve got [guidance for users](https://www.wifi.service.gov.uk/connect-to-govwifi/update-govwifi-server-certificate/) on what to do. However, they may still need help from your IT support team so make it clear to your users where they can get help.

### What they need to do may vary

Users' devices might automatically check the new certificate and accept it. In this case, they will not need to do anything.

Or, they may be asked to accept the new certificate.

### If they're asked to accept the new certificate

They should:  

1. View the certificate.
1. Check that the domain is **wifi.service.gov.uk**
1. Check the issuer is **GeoTrust TLS DV RSA Mixed SHA256 2020 CA-1**
1. Check that the fingerprint or thumbprint is **AC 70 5D 2B 63 36 4B 3C A4 1D 13 8E 9B F7 11 E7 21 E9 E6 2A**
1. Accept or trust the new certificate.

Depending on their device, they may not be able to see all the information referred to here.

### Possible problems

Users on managed devices may not have permission to accept the new certificate. The organisation that gave them the device needs to accept it for them.

Depending how their organisation deploys the profile, a user may need to connect to the internet a different way to pick up the updated profile.

You can also advise them to:

- forget the network and try to connect again
- follow our [guidance on common problems](https://www.wifi.service.gov.uk/connect-to-govwifi/get-help-connecting/)

## Get support

If anything goes wrong with the rotation, we’ll publish a message on the GovWifi status page. [Sign up for incident alerts on status page](https://status.wifi.service.gov.uk/).

For support, contact us via our [support form](https://admin.wifi.service.gov.uk/help).
