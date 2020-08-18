# Set up GovWifi

Follow these steps to set up and make GovWifi available in your organisation.

## Step 1 - Create a GovWifi admin account

Before you can begin technical set up, you must [sign up for a GovWifi admin account](https://admin.wifi.service.gov.uk/users/sign_up).

If your organisation is currently not whitelisted to be registered, please [contact us](https://admin.wifi.service.gov.uk/help/new/technical_support).

## Step 2 - Sign the GovWifi Memorandum of understanding

You must [sign and upload the GovWifi memorandum of understanding](https://admin.wifi.service.gov.uk/mou) (MoU) before your organisation can begin installing GovWifi.

The MoU sets out the agreement between the Government Digital Service and your public sector organisation in relation to the use of GovWifi.

By proceeding to complete GovWifi setup, your organisation also accepts our [privacy notice](https://www.wifi.service.gov.uk/privacy-notice) and [terms and conditions](https://www.wifi.service.gov.uk/terms-and-conditions).

## Step 3 - Create a new wifi installation

Create a [network address translation (NAT) rule](https://wiki.untangle.com/index.php/NAT_Rules) if one does not already exist. This allows your wifi controller or access points to connect to the internet using the IP addresses you set up in the [admin portal](https://admin.wifi.service.gov.uk/ips).

#### Set up your public IP addresses

You should add your IP address or addresses to your admin portal profile.

You can find details of the Remote Authentication Dial-In User Service (RADIUS) servers on the admin platform. You must connect to at least one (RADIUS) server. You can configure your authenticators to connect to more than one (RADIUS) server. These extra servers are known as ‘backups’ or ‘failovers’.

We recommend connecting to all GovWifi RADIUS servers, so you're protected from a single server being unavailable.

#### Configure your infrastructure

1. Create a firewall rule to allow traffic on User Datagram Protocol (UDP) ports 1812 and 1813 to reach the RADIUS IP addresses assigned to you.
2. Create a service set identifier (SSID) with:
    - name: GovWifi
    - type: WPA2-Enterprise (AES encryption)

3. Configure your Network Access Server (access point) to make usernames private.
4. If allowed by your infrastructure vendor, set the Network Access Identifier (NAI) for your outer tunnel to be anonymous. See [RFC 7542](https://tools.ietf.org/html/rfc7542) for full details of permitted NAI syntax.

## Step 4 - Set up managed end user devices

Users must follow the [GovWifi terms and conditions](https://www.gov.uk/government/publications/terms-and-conditions-for-connecting-to-govwifi/terms-and-conditions-for-connecting-to-govwifi) for managed and unmanaged devices.

Before you begin, you should have checked what to do before you offer GovWifi.

#### Remotely deploy GovWifi profiles to managed devices

You must deploy profiles to your managed devices for automatic certificate checking. Use mobile device management solutions or operating system mechanisms, such as [Windows’ Group Policy](https://en.wikipedia.org/wiki/Group_Policy) or [Apple Profile Manager](https://support.apple.com/en-gb/profile-manager).

#### Get the XML profile for Windows devices

Make this [wireless profile configuration XML file](https://docs.wifi.service.gov.uk/assets/govwifi-profile.xml) available to users, for example hosting the XML file on an internal web server. The devices will be able to verify their certificate against the XML file to confirm those devices are authorised to join the network.

The user will only need to enter their username and password once they have signed up to the service.

#### Deploy XML profile to managed devices

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

#### Prioritise the GovWifi profile

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

## Step 5 - Advertise GovWifi in your organisation

You should advertise GovWifi in the locations you’ll roll it out.

[Download a poster](https://admin.wifi.service.gov.uk/setup_instructions/poster) (you might need to sign in) with information on how end users can connect to GovWifi in your organisation.

## Step 6 - Provide GovWifi support

It is your IT support team’s responsibility to support your organisation’s users when those users are connecting to GovWifi.

Please review our [support guides](https://www.wifi.service.gov.uk/support) for device specific instructions for end users.
