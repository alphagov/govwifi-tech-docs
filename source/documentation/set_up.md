# Set up GovWifi

Follow these steps to set up and make GovWifi available in your organisation.

## Create a GovWifi admin account

Before you can begin technical set up, you must [create your GovWifi admin account](https://admin.wifi.service.gov.uk/users/sign_up).

If your organisation is currently not allowed to be registered, [contact us](https://admin.wifi.service.gov.uk/help/new/technical_support).

## Sign the memorandum of understanding

You must [sign the memorandum of understanding](https://admin.wifi.service.gov.uk/mou) (MOU) before your organisation can begin installing GovWifi.

The MOU sets out the agreement between the Government Digital Service and your public sector organisation in relation to the use of GovWifi.

By completing GovWifi setup, your organisation also accepts our [privacy notice](https://www.wifi.service.gov.uk/privacy-notice) and [terms and conditions](https://www.wifi.service.gov.uk/terms-and-conditions).

## Create a new wifi installation

Create a [network address translation (NAT) rule](https://wiki.untangle.com/index.php/NAT_Rules) if one does not already exist.

This will allow your wifi controller or access points to connect to the internet using the IP addresses you'll add to your GovWifi admin account.

### Set up your public IP addresses

Add your IP addresses to your [GovWifi admin account](https://admin.wifi.service.gov.uk/ips).

You can find details of the Remote Authentication Dial-In User Service (RADIUS) servers in your GovWifi admin account. You must connect to at least one RADIUS server. You can configure your authenticators to connect to more than one RADIUS server. These extra servers are known as ‘backups’ or ‘failovers’.

We recommend connecting to all GovWifi RADIUS servers, so you're protected from a single server being unavailable.

### Configure your infrastructure

1. Create a firewall rule to allow traffic on User Datagram Protocol (UDP) ports 1812 and 1813 to reach the RADIUS IP addresses assigned to you.
2. Create a service set identifier (SSID) with:
    - name: GovWifi
    - type: WPA2-Enterprise (AES encryption)

3. Configure your Network Access Server (access point) to make usernames private.
4. If allowed by your infrastructure vendor, set the Network Access Identifier (NAI) for your outer tunnel to be
anonymous. See [RFC 7542](https://tools.ietf.org/html/rfc7542) for full details of permitted NAI syntax.

## Set up managed end user devices

Users must follow the [GovWifi terms and conditions](https://www.gov.uk/government/publications/terms-and-conditions-for-connecting-to-govwifi/terms-and-conditions-for-connecting-to-govwifi) for managed and unmanaged devices.

### Remotely deploy GovWifi profiles to managed devices

You must deploy profiles to your managed devices for automatic certificate checking. You could use mobile device
management solutions or operating system mechanisms for this. For example, you can deploy profiles on:

* [Windows devices using Group Policy](https://en.wikipedia.org/wiki/Group_Policy)
* [Apple devices using Profile Manager](https://support.apple.com/en-gb/profile-manager)

### Get the XML profile for Windows devices

Make the [GovWifi profile configuration XML file](https://docs.wifi.service.gov.uk/assets/govwifi-profile.xml) available
to your users - as an example, you could host this file on an intranet web server. The devices will then be able to
verify their certificate against the XML file to confirm whether those devices are authorised to join the network.

The user will only need to enter their username and password once they have signed up to the service.

### Deploy XML profile to managed devices

Add the following to your users’ login script:

```sh
netsh wlan add profile filename="PATH_TO_PROFILE" user=all
```

Where `PATH_TO_PROFILE` is your file path.

For example:

```sh
netsh wlan add profile filename="govwifi-profile.xml" user=all
```

Read about how to [create certificate profiles in configuration manager](https://docs.microsoft.com/en-us/previous-versions/system-center/system-center-2012-R2/dn270541(v=technet.10)).

### Prioritise the GovWifi profile

GovWifi must be the highest priority service set identifier (SSID) in your organisation, except for SSIDs that provide access to privileged networks using device certificates.

Add the following to your users’ login script:

```sh
netsh wlan set profileorder name="GovWifi" interface="NAME" priority=1
```

Where `NAME` is your environment’s name.

For example:

```sh
netsh wlan set profileorder name="GovWifi" interface="Wi-Fi" priority=1
```

## Advertise GovWifi in your organisation

To make sure your users know they can use GovWifi, you should advertise the service.

You can [use our poster](https://admin.wifi.service.gov.uk/setup_instructions/poster) (you might need to sign in to your admin account). It includes information on how your users can connect to GovWifi.

## Provide GovWifi support

It's your IT support team's responsibility to support your users when they're connecting to GovWifi.

You can point your users to our [support guides](https://www.wifi.service.gov.uk/support) which include instructions for connecting different types of devices.
