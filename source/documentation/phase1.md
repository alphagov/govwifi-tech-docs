# Phase 1: Create a new wifi installation

## Step 1: Apply to create a new GovWifi
### Step 1 - Apply to create a new GovWifi
#### installation
Complete and electronically sign this [application form](https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/675990/GovWifi_-_create_a_new_installation.odt) (ODT, 17.1KB) to request an installation. You must do this so the GovWifi team can approve your application to create a new installation.

Send the completed document to [govwifi-support@digital.cabinet-office.gov.uk](govwifi-support@digital.cabinet-office.gov.uk). In the email body, you must include:

- the email address and mobile phone number of each person you’d like to set up as an administrator
- the name of the organisation or group you represent
- a shared and monitored email address - the GovWifi support team will send service notifications to this address

The GovWifi team will contact you when your application has been approved. Do not proceed to step 2 until you’ve received confirmation.

## Step 2: Establish your public IP addresses

Remote Authentication Dial-In User Service (RADIUS) traffic usually originates from the management interface of your wifi controller. Find out if you have an existing network address translation (NAT) rule, or whether you need a new one. If you have multiple internet connections it may be possible for traffic to originate from a different IP address in the event of a primary link failure. Make sure you add all your IP addresses if you have multiple internet connections.

## Step 3: Register your site to GovWifi

Send an email from the individual email address you registered in step 1 to newsite@wifi.service.gov.uk - this is an automated service. If you have more than one site, register each site in a separate email.

Your email must include:

- the first line of your government building street address - put this in the subject field
- the list of public IP addresses that your RADIUS requests will originate from (one on each line) - put this in the body of the email
- in a separate line, under the IP addresses, write your postcode in the format: Postcode: XXXX XXX

Before you send the email, make sure your email system doesn’t block encrypted attachments.

You’ll receive an encrypted PDF via email that contains configuration details and the RADIUS key to configure your wireless infrastructure. The password to decrypt this file will be sent to your phone in a text message.

You can start using the service the day after you register your site, because the RADIUS servers update overnight.

### Get confirmation of your current settings

If you need confirmation of your current settings, send an email from the individual email address you registered in step 1 to newsite@wifi.service.gov.uk - this is an automated service.

Your email must include:

- exactly the same subject line as your original request
- a blank body field

You’ll receive a new encrypted PDF which contains your settings via email. The password to decrypt this file will be sent to your phone in a text message.

### Add a new IP address to an existing site
You can add multiple IP addresses to a single site. For example, if you change internet service provider and have a new IP to use. To add a new address, send a request from the individual email address you registered in step 1 to newsite@wifi.service.gov.uk - this is an automated service.

Your email must include:

- exactly the same text in the subject field as the email you sent in step 3
- the additional IP address on the first line

By using the same text, the service will use the same secret key as your other IP addresses You’ll receive an email with an encrypted PDF file which contains a list of all IP addresses at that site, including the new IP addresses. The password to decrypt this file will be sent to your phone in a text message.

### Step 4 - Configure your infrastructure

1. Create a firewall rule to allow traffic on UDP ports 1812 and 1813 to reach the RADIUS IP addresses you received in the encrypted PDF.

2. Create a NAT rule if one doesn’t already exist so your wifi controller (or access points for cloud-managed devices) can reach the internet via the IP addresses you specified when you registered your site.

3. Create a service set identifier (SSID) with:
- name: GovWifi
- type: WPA2-Enterprise (AES encryption)
- inner encryption: MsChapV2

4. Configure your Network Access Server (Access Point) to ensure username privacy.
- if permitted by your infrastructure vendor, set the Network Access Identifier (NAI) for your outer tunnel to be anonymous
- see [RFC 7542](https://tools.ietf.org/html/rfc7542) for full details of permitted NAI syntax

5. Configure the RADIUS servers and secret key. Follow the instructions in the encrypted PDF you received when you registered your site.
