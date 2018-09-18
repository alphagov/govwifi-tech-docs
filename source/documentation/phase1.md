# Phase 1: Create a new wifi installation

## Get an account

Your department, agency or team must have a GovWifi account. Sign up for an account at the [GovWifi admin platform](https://admin-platform.wifi.service.gov.uk/users/sign_up).

To provide you with an account, we need to store some personal data about you. Please see our privacy notice for details.

Once you have an account, you can access the GovWifi admin platform. This tool allows you to manage your GovWifi configuration.

If you are having trouble signing up for an account, contact us at [govwifi-support@digital.cabinet-office.gov.uk](govwifi-support@digital.cabinet-office.gov.uk).

## Establish your public IP addresses

Remote Authentication Dial-In User Service (RADIUS) traffic usually originates from the management interface of your wifi controller. Find out if you have an existing network address translation (NAT) rule, or whether you need a new one.

If you have multiple internet connections it may be possible for traffic to originate from a different IP address in the event of a primary link failure. Make sure you add all your IP addresses if you have multiple internet connections.

You can manage your IP addresses in the [GovWifi admin platform](https://admin-platform.wifi.service.gov.uk/).

## Configure your infrastructure

Your secret key, established IP addresses and more can be managed in the [GovWifi admin platform](https://admin-platform.wifi.service.gov.uk/).

1. Create a firewall rule to allow traffic on UDP ports 1812 and 1813 to reach the RADIUS IP addresses assigned to you.

2. Create a NAT rule if one doesn’t already exist so your wifi controller (or access points for cloud-managed devices) can reach the internet via the IP addresses you specified when you registered your site.

3. Create a service set identifier (SSID) with:
- name: GovWifi
- type: WPA2-Enterprise (AES encryption)
- inner encryption: MsChapV2

4. Configure your Network Access Server (Access Point) to ensure username privacy.
- if permitted by your infrastructure vendor, set the Network Access Identifier (NAI) for your outer tunnel to be anonymous
- see [RFC 7542](https://tools.ietf.org/html/rfc7542) for full details of permitted NAI syntax

5. Configure the RADIUS servers and secret key. Follow the instructions in the encrypted PDF you received when you registered your site.
