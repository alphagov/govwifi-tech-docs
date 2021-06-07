# Certificate rotation

Every year, we rotate the GovWifi server certificate. Some years, we’ll also need to replace the intermediate or root certificates. This is an industry standard procedure that keeps the authentication process secure.

We’ll give you at least a month’s notice about certificate rotations. The next one is scheduled for 5 July 2021.

The GovWifi team handles the certificate rotation on the RADIUS servers, but your organisation may need to do a couple of things to make sure your users can connect to GovWifi after the rotation.

You do not need to do anything to your access points, wifi controllers or any other part of your wifi hardware.

## Update the profile on managed devices

For the 2021 rotation, this section applies to you if your organisation does both of the following:

- uses the GovWifi 802.1x profile
- tells user devices to check the server certificate (currently called 'wifi.service.gov.uk') or intermediate certificate (currently called 'GeoTrust RSA CA 2018')

You need to update the profile with the new certificate details when the rotation happens. On the rotation day, push the updated profile out to your managed devices. How you manage this will depend on how you deploy your GovWifi 802.1x profile to your managed devices.

Download the new certificates here:

- [server certificate](https://docs.wifi.service.gov.uk/assets/wifi.service.gov.uk_2021.crt)
- [intermediate certificate](https://docs.wifi.service.gov.uk/assets/GeoTrustRSACA2021.crt)

The [root certificate](https://docs.wifi.service.gov.uk/assets/DigiCertGlobalRootCA.crt) will not change in this rotation. This means you do not need to update your 802.1x profile if it only checks the root certificate.

## Help users accept the new certificate

We’ve published [guidance for users](https://www.wifi.service.gov.uk/connect-to-govwifi/update-govwifi-server-certificate/) on what to do and we’ll tell them about the update in advance. However, they may still need help from your IT support team.

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

If the user has accepted the certificate but still cannot connect, follow your usual troubleshooting process. You can also advise them to:

- forget the network and try to connect again
- follow our [guidance on common problems](https://www.wifi.service.gov.uk/connect-to-govwifi/get-help-connecting/)

## Get support

If anything goes wrong on the rotation day, we’ll publish a message on the GovWifi status page. [Sign up for incident alerts on status page](https://status.wifi.service.gov.uk/).

Email us at <govwifi-support@digital.cabinet-office.gov.uk> if you have any questions.
